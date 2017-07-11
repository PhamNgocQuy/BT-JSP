package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBconnection {
	
	public static Connection connection;
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
		if(connection==null)
		{
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbaccount", "root","");
		}
		return connection;
	}
}
