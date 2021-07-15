package syzcogen.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnectionUtil {

	private static Logger databaseLog = Logger.getLogger("databaseLog.txt");
	
	private static Connection conn;
	private static String url = "jdbc:mysql://localhost:3306/projectallocation";
	private static String username = "root";
	private static String password = "Dilshani*1997";
	
	public DBConnectionUtil() {		
	}
	
	public static Connection getDBConnection() {
		try {

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(url, username, password);

		} catch (Exception e) {

			databaseLog.log(Level.SEVERE, e.getMessage());
			System.out.println("Database connection is not success!!!");
		}
		
		return conn;
	}
}
