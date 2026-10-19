// Java

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PostgresLogDemo {
    public static void main(String[] args) {
        // Update connection string, user, and password to match your PostgreSQL instance
        String url = "jdbc:postgresql://localhost:5432/logging";
        String user = "postgres";
        String password = "your_password";

        String logTableName = "app_activity_log";

        // SQL statements calling the PostgreSQL functions we ported
        String createTableSql = "SELECT create_log_table(?)";
        String traceSql = "SELECT trace(?, ?, ?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("Connected to PostgreSQL database successfully.");

            // 1. Call create_log_table() once
            try (PreparedStatement pstmt = conn.prepareStatement(createTableSql)) {
                pstmt.setString(1, logTableName);
                pstmt.execute();
                System.out.println("-> Checked/Created log table: " + logTableName);
            }

            // 2. First call to trace()
            try (PreparedStatement pstmt = conn.prepareStatement(traceSql)) {
                pstmt.setString(1, logTableName);
                pstmt.setString(2, "2026-10-18 20:30:00");
                pstmt.setString(3, "INF");
                pstmt.setString(4, "1");
                pstmt.setString(5, "Main");
                pstmt.setString(6, "Application initialized successfully.");
                pstmt.execute();
                System.out.println("-> Inserted first trace log.");
            }

            // 3. Second call to trace()
            try (PreparedStatement pstmt = conn.prepareStatement(traceSql)) {
                pstmt.setString(1, logTableName);
                pstmt.setString(2, "2026-10-18 20:30:02");
                pstmt.setString(3, "DBG");
                pstmt.setString(4, "2");
                pstmt.setString(5, "ConnectModule");
                pstmt.setString(6, "Sub-system modules loaded and verified.");
                pstmt.execute();
                System.out.println("-> Inserted second trace log.");
            }

        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
