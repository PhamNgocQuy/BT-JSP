package model;

import java.sql.*;

public class AccountService {

	
	public static boolean checkAccount(String username, String password)
	{
		try {
			Statement statement = DBconnection.getConnection().createStatement();
			String query = "SELECT * FROM account";
			ResultSet resultSet = statement.executeQuery(query);
			System.out.println("in name: "+username);
			System.out.println("int pass:" + password);
			while(resultSet.next())
			{	
				String user = resultSet.getString(1);
				String pass = resultSet.getString(2);
				if(user.equals(username) && pass.equals(password))
				{
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Check Account: Error");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static boolean registerAccount(String username,String password)
	{
		Statement statement;
		try {
			statement = DBconnection.getConnection().createStatement();
			String query = "SELECT * FROM account";
			ResultSet resultSet = statement.executeQuery(query);
			while(resultSet.next())
			{
				if(resultSet.getString(1).equals(username))
				{
					return false;
				}
			}
			String query_ = "INSERT INTO account (username,password)" + "value(?,?)";
			PreparedStatement preparedStatement = DBconnection.getConnection().prepareStatement(query_);
			preparedStatement.setString(1,username);
			preparedStatement.setString(2,password);
			preparedStatement.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Insert Account: Error");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
}
