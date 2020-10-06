package interViewProject;

import java.sql.*;

public class DaoClass {
	
	
	public static Connection getConection()
	{
		Connection con=null;
		try {
		String url="jdbc:mysql://localhost:3306/immcossi";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, "root", "root");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
	
	
	public int saveUser(User u)
	{
		PreparedStatement p1;
		int i=0;
		String name=u.getName();
		int age=u.getAge();
		String email=u.getEmail();
		try {
		String q1="insert into user (name,email,age)values(?,?,?)";
		
			p1=getConection().prepareStatement(q1);
			p1.setString(1, name);
			p1.setString(2, email);
			p1.setInt(3, age);
			i=p1.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i;
	}
	
	public ResultSet getAllUsers()
	{
		PreparedStatement p2;
		ResultSet rs=null;
		try {
			String q2="select * from user";
			p2=getConection().prepareStatement(q2);
			rs=p2.executeQuery();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public ResultSet getUsersById(int uid)
	{
		PreparedStatement p3;
		ResultSet rss=null;
		try {
			String q3="select * from user where userid=?";
			
			p3=getConection().prepareStatement(q3);
			p3.setInt(1,uid);
			rss=p3.executeQuery();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rss;
	}
	
	
	
	public int updateUser(User u)
	{
		PreparedStatement p4;
		int ii=0;
		String ename=u.getName();
		int eage=u.getAge();
		int uid=u.getUserid();
		String eemail=u.getEmail();
		try {
		String q4="update  user set name=?,email=?,age=? where userid=?";
		
			p4=getConection().prepareStatement(q4);
			p4.setString(1, ename);
			p4.setString(2,eemail);
			p4.setInt(3, eage);
			p4.setInt(4, uid);
			ii=p4.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ii;
	}
	
	
	public int deleteUser(int uid)
	{
		PreparedStatement p5;
		int i5=0;
		
		try {
		String q5="delete from user where userid=?";
		
			p5=getConection().prepareStatement(q5);
			
			p5.setInt(1, uid);
			i5=p5.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i5;
	}
}
