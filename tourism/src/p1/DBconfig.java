package p1;
import java.sql.*;

public class DBconfig {
static final String JOBC_DRIVER="com.mysql.jdbc.Driver";
static final String DB_URL="jdbc:mysql://localhost/tourism"; 
static final String username="root";
static final String password="";
static Connection conn;
public static Connection getConnection()
{
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(DB_URL,username,password);
	return conn;
}catch (ClassNotFoundException e)
{
	e.printStackTrace();
}
catch (SQLException e)
{e.printStackTrace();
}
return null;
}
void closeConnection()
{
	try{
		conn.close();
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
}
}
