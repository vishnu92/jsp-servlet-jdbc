package com.bellinfo.advance.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.bellinfo.advance.modal.LoginDetails;
import com.bellinfo.advance.modal.RegistrationDetails;

public class RepositoryDAO {

	Connection con = null;
	public static final String CREATE_TABLE = "CREATE TABLE register ( fullname character varying(40) NOT NULL, email character varying(40) NOT NULL, username character varying(40) NOT NULL, password character varying(40) NOT NULL )";
	public static final String INSERT_REGISTER = "INSERT INTO register (fullname, email, username, password) VALUES (?,?,?,?)";
    public static final String SELECT_USER_INFO = "select username, password from register where username=?";
	public boolean createRegistration() {

		boolean result = false;
		Statement stmt = null;
		try {
			getDBConnection();
			stmt = con.createStatement();

			result = stmt.execute(CREATE_TABLE);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int saveRegistrationDetails(RegistrationDetails regDetails) {
		int result = 0;
		PreparedStatement ps = null;
		try {
			getDBConnection();
			ps = con.prepareStatement(INSERT_REGISTER);
			
			ps.setString(1, regDetails.getFullname());
			ps.setString(2, regDetails.getEmail());
			ps.setString(3, regDetails.getUsername());
			ps.setString(4, regDetails.getPassword());
			result = ps.executeUpdate();
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public boolean extractUserDetails(LoginDetails details) {
		 
		boolean result = false;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String pass = null;
		String user = null;
		try {
			getDBConnection();
			ps = con.prepareStatement(SELECT_USER_INFO);
			ps.setString(1, details.getUsername());
			rs = ps.executeQuery();
			while(rs.next()){
				user = rs.getString("username");
				pass = rs.getString("password");
			}
			if(details.getUsername().equals(user) && details.getPassword().equals(pass)){
				result = true;	
			}
			else{
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	private void getDBConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			System.out.println("PostgreSQL JDBC Driver Registered!");
			// Connection connection = null;
			con = DriverManager.getConnection(
					"jdbc:postgresql://127.0.0.1:5432/postgres", "postgres",
					"abcd12345");
		} catch (SQLException e) {
			System.out.println("Connection Failed");
			e.printStackTrace();
			return;
		} catch (ClassNotFoundException e) {
			System.out.println("Where is your PostgreSQL JDBC Driver? "
					+ "Include in your library path!");
			e.printStackTrace();
			return;
		}
	}

	public static void main(String[] argv) {
		RepositoryDAO rd = new RepositoryDAO();
		rd.getDBConnection();
		boolean r = rd.createRegistration();
		/*RegistrationDetails regd = new RegistrationDetails();
		regd.setFullname("abcd");
		regd.setEmail("abcd@gmail.com");
		regd.setUsername("abcd");
		regd.setPassword("abcd");
		int r = rd.saveRegistrationDetails(regd);
		
		LoginDetails ld = new LoginDetails();
		ld.setUsername("ssss");
		ld.setPassword("ssss");
		boolean re = rd.extractUserDetails(ld);
		
		System.out.println(re);*/
	}
}
