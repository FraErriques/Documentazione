use sqlx::{Connection, PgConnection};
use chrono::Local;
use std::collections::HashMap;
use std::fs::File;
use std::io::{self, BufRead, BufReader};
use std::path::Path;
use std::error::Error;

// ==========================================
// 1. Connection Provider Class
// ==========================================
pub struct ConnectionProviderPostgreSqlITFORS1011 {
    connection: Option<PgConnection>,
}

impl ConnectionProviderPostgreSqlITFORS1011 {
    pub async fn new<P: AsRef<Path>>(properties_path: P) -> Result<Self, Box<dyn Error>> {
        let mut props = HashMap::new();
        let file = File::open(properties_path)?;
        let reader = BufReader::new(file);

        for line in reader.lines() {
            let line = line?;
            let line = line.trim();
            if line.is_empty() || line.starts_with('#') || line.starts_with('!') {
                continue;
            }
            if let Some((key, value)) = line.split_once('=') {
                props.insert(key.trim().to_string(), value.trim().to_string());
            }
        }

        let target_host = "ITFORS1011";
        let url_key = format!("db.{}.url", target_host);
        let url = props.get(&url_key).ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotFound, format!("Property {} not found", url_key))
        })?;

        match PgConnection::connect(url).await {
            Ok(conn) => {
                println!("Connection to database ITFORS1011::logging opened successfully");
                Ok(Self { connection: Some(conn) })
            }
            Err(e) => {
                println!("Failed to connect: {}", e);
                Err(Box::new(e))
            }
        }
    }

    pub fn get_connection(&mut self) -> Option<&mut PgConnection> {
        self.connection.as_mut()
    }

    pub async fn close_connection(&mut self) {
        if let Some(conn) = self.connection.take() {
            match conn.close().await {
                Ok(_) => {
                    println!("Connection to database ITFORS1011::logging closed successfully");
                }
                Err(e) => {
                    println!("\n Error closing connection: {}", e);
                }
            }
        }
    }
}

// ==========================================
// 2. LogSinkDb Class
// ==========================================
pub struct LogSinkDb {
    provider: ConnectionProviderPostgreSqlITFORS1011,
    log_table_name: String,
}

impl LogSinkDb {
    // Constructor equivalent
    pub async fn new<P: AsRef<Path>>(table_name: &str, properties_path: P) -> Result<Self, Box<dyn Error>> {
        let mut provider = ConnectionProviderPostgreSqlITFORS1011::new(properties_path).await?;
        let log_table_name = table_name.to_string();

        // Call create_log_table(?) once upon initialization
        let create_table_sql = "SELECT create_log_table($1)";
        if let Some(conn) = provider.get_connection() {
            sqlx::query(create_table_sql)
                .bind(&log_table_name)
                .execute(conn)
                .await?;
            println!("-> Checked/Created log table: {}", log_table_name);
        } else {
            return Err("Failed to obtain active connection for table creation.".into());
        }

        Ok(Self {
            provider,
            log_table_name,
        })
    }

    // Trace method optimized for numerical analysis loops
    pub async fn trace(
        &mut self,
        row_nature: &str,     // 3 chars {o,t,c} or {INF,DBG,..}
        stack_depth: &str,    // call stack depth
        function_name: &str,  // calling method name
        log_content: &str,    // message content
    ) -> Result<(), Box<dyn Error>> {
        let trace_sql = "SELECT trace($1, $2, $3, $4, $5, $6)";
        let current_formatted_date = Local::now().format("%Y-%m-%d %H:%M:%S").to_string();

        if let Some(conn) = self.provider.get_connection() {
            sqlx::query(trace_sql)
                .bind(&self.log_table_name)
                .bind(&current_formatted_date)
                .bind(row_nature)
                .bind(stack_depth)
                .bind(function_name)
                .bind(log_content)
                .execute(conn)
                .await?;
        } else {
            println!("Failed to write trace log: Connection is closed or unavailable.");
        }

        Ok(())
    }

    // Explicit dispose method
    pub async fn dispose(&mut self) {
        self.provider.close_connection().await;
    }
}

// ==========================================
// 3. Test Main Entry Point
// ==========================================
#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    // Initialize our LogSinkDb with a target table name and properties file
    let mut logger = LogSinkDb::new("numerical_run_01", "database.properties").await?;

    // Simulate a fast numerical loop calling trace repeatedly using the same sticky connection
    for i in 1..=3 {
        let message = format!("Iteration step value: {}", i * 100);
        logger.trace("INF", "1", "main_loop", &message).await?;
        println!("Logged iteration {}", i);
    }

    // Clean up and close connection
    logger.dispose().await;

    Ok(())
}