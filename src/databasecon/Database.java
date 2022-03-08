package databasecon;
import java.sql.*;

public class Database
{
	static Connection con;
	public static Connection getConnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aa","root","root");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}
