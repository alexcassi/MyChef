package business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginManager {

	public static Boolean login(String email, String password) {
		Boolean result = false;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/mychefdatabase", "root", "");
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM utente WHERE email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			result = rs.next();

		} catch (ClassNotFoundException e) {
			System.out.println("Driver non trovato");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Conn fallita");
		}
		return result;

	}
}
