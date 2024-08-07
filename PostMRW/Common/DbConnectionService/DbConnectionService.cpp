//
//#include <iostream>
//#include <iterator>
//#include <algorithm>
//#include <exception>
//#include <stdlib.h>
////-----------------------------------------#include <boost/lambda/lambda.hpp>
//#include "mysql_connection.h"
////#include <cppconn/driver.h>
////#include <cppconn/exception.h>
////#include <cppconn/resultset.h>
////#include <cppconn/statement.h>
////#include <cppconn/prepared_statement.h>
//#include "../../Common/StringBuilder/StringBuilder.h"
//#include "DbConnectionService.h"
//
//
//namespace Common
//{
//
//namespace DbConnectionService
//{
//
//using namespace std;
//
//
//int dbName_tableName_paramsList_INSERT_SINGLE( const std::string &dbName, const std::string &insertSingleProcName, const std::string &paramsList )
//{
//    cout << endl;
//    cout << " dbName_tableName_paramsList_INSERT_SINGLE : " << endl;
//    bool insertionHasError = true;// init insertion result
//
//    try
//    {
//        sql::Driver *driver;
//        sql::Connection *con;
//        sql::Statement *stmt;
//
//        // Create a connection : steps follow:
//        driver = get_driver_instance();// get the driver
//        con = driver->connect( "tcp://127.0.0.1:3306", "root", "Riemann0");// get the connection to the specified instance.
//        //
//        // execute something, with the current connection:
//        stmt = con->createStatement();// prepare a statement
//        //
//        Common::StringBuilder sb(500);
//        sb.append( "call ");
//        sb.append( " ");
//        sb.append( dbName);
//        sb.append( ".");
//        sb.append( insertSingleProcName);
//        sb.append( " ( ");
//        sb.append( paramsList);
//        sb.append( " ) ");
//        //
//        const std::string theStatement = sb.str();
//        insertionHasError = stmt->execute( theStatement);// execute the statement
//        //
//        //--- cleanup------
//        delete stmt;
//        if( ! con->isClosed() )
//        {
//            con->close();
//        }// else already closed.
//        delete con;
//    }// END try
//    catch( sql::SQLException &e)
//    {
//        cout << "# ERR: SQLException in " << __FILE__;
//        cout << "(" << __FUNCTION__ << ") on line " << __LINE__ << endl;
//        cout << "# ERR: " << e.what();
//        cout << " (MySQL error code: " << e.getErrorCode();
//        cout << ", SQLState: " << e.getSQLState() << " )" << endl;
//    }// END catch( sql::SQLException &e)
//    catch( const std::exception& ex)
//    {
//        std::string HappenedException = ex.what();
//    }
//    catch (const std::string& ex)
//    {
//        std::string HappenedException = ex.c_str();
//    }
//    catch(...)
//    {
//        std::string HappenedException = "this was (sadly) an unnamed exception, which -therefore- has no content.";
//    }// END catch(...)
//
//    // ready.
//    cout << endl;
//    return insertionHasError;// false on insertionSuccess( 1 row i.e. INSERT_SINGLE), ture on error.
//}// end cantiere_sede_INSERT_SINGLE
//
//
//void do_usp_LOAD()
//{
//    sql::Driver *driver;
//    sql::Connection *con;
//    sql::Statement *stmt;
//
//    // Create a connection : steps follow:
//    driver = get_driver_instance();// get the driver
//    con = driver->connect( "tcp://127.0.0.1:3306", "root", "Riemann0");// get the connection to the specified instance.
//
//    sql::ResultSet  *res;
//    stmt = con->createStatement();
//    res = stmt->executeQuery("SELECT Ordinal, Prime FROM Primes ORDER BY Ordinal ASC");
//    /*
//    while (res->next()) {
//      // You can use either numeric offsets...
//      cout << "Ordinal = " << res->getInt(1); // getInt(1) returns the first column
//      // ... or column names for accessing results.
//      // The latter is recommended.
//      cout << ", label = '" << res->getString("Prime") << "'" << endl;
//    }
//    delete res;
//    delete stmt;
//    */
//    delete con;
//}//do_usp_LOAD(
//
//
//}// nmsp  DbConnectionService
//}// nmsp Common
//
//
//
//
//
////
////    int command_PREPARE(void)
////    {
////        cout << endl;
////        cout << "Let's have MySQL use the PREPARE command : " << endl;
////        //
////        try
////        {
////            sql::Driver *driver;
////            sql::Connection *con;
////            sql::PreparedStatement *pstmt;
////            //
////            /* Create a connection */
////            driver = get_driver_instance();
////            con = driver->connect("tcp://127.0.0.1:3306", "root", "Riemann0");
////            /* Connect to the MySQL test database */
////            con->setAutoCommit( false);// TODO test
////            con->setSchema("cantiere");
////            //
////            //-----PREPARE example------------------
////            //  /* '?' is the supported placeholder syntax */
////            //  SET @s = 'SELECT SQRT(POW(?,2) + POW(?,2)) AS hypotenuse';
////            //  PREPARE stmt2 FROM @s;
////            //  SET @a = 6;
////            //  SET @b = 8;
////            //  EXECUTE stmt2 USING @a, @b;
////            //-- +------------+
////            //--  hypotenuse == 10
////            //-- +------------+
////            //  DEALLOCATE PREPARE stmt2;
////            //--end---PREPARE example------------------
////            //
////            pstmt = con->prepareStatement("SELECT SQRT(POW(?,2) + POW(?,2)) AS hypotenuse");
////            pstmt->setInt( 1, 6);// first  '?' gets value==+6 //  SET @a = 6;
////            pstmt->setInt( 2, 6);// second '?' gets value==+8 //  SET @b = 8;
////            pstmt->executeUpdate();           //  EXECUTE stmt2 USING @a, @b;
////            delete pstmt;// delete each PREPARE
////            //
////            if( ! con->isClosed() )
////            {
////                con->close();
////            }// else already closed.
////            delete con;// delete the whole connection.
////        }
////        catch (sql::SQLException &e)
////        {
////            cout << "# ERR: SQLException in " << __FILE__;
////            cout << "(" << __FUNCTION__ << ") on line " << __LINE__ << endl;
////            cout << "# ERR: " << e.what();
////            cout << " (MySQL error code: " << e.getErrorCode();
////            cout << ", SQLState: " << e.getSQLState() << " )" << endl;
////        }
////        cout << endl;
////        return EXIT_SUCCESS;
////    }
