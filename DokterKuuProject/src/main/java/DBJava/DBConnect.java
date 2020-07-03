package DBJava;
import java.sql.*;

public class DBConnect {

	private Connection connection = null;
	
	public Connection setConnection() {
		try {
			String url = "jdbc:mysql://localhost3306/dokterkuu";
			String user = "root";
			String pass = "";
			String db = "dokterkuu";
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, user, pass);
					
		}catch(ClassNotFoundException | SQLException e) {
			
		}return connection;
	}
	
	
}
