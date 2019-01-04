
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SignUpManager {
	public static boolean checkUsernameExists(String email){
	    boolean usernameExists = false;
	    try {
	    	Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/mychefdatabase", "root", "");
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM utente ORDER BY email");
	        ResultSet r1=ps.executeQuery();
	        String usernameCounter;
		        if(r1.next()){
		           usernameCounter =  r1.getString("email");
			           if(usernameCounter.equals(email)){
			              usernameExists = true;
			           }
		        }
	    }catch (ClassNotFoundException e) {
				System.out.println("Driver non trovato");
		}catch (SQLException e) {
				System.out.println("Conn fallita");
		}
	    return usernameExists;
	 }
	
	public static void signUp(String nome,String cognome,String citta,String provincia,String indirizzo,String email,String password) {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/mychefdatabase", "root", "");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(" INSERT INTO utente (nome, cognome, citta, provincia, indirizzo, email, password ) " + " VALUES ( '" + nome + "','" + cognome
							+ "','" + citta + "','" + provincia + "','" + indirizzo +  "','" + email + "','" + password +" ' ) ");
			stmt.close();
			conn.close();
		}catch (ClassNotFoundException e) {
			System.out.println("Driver non trovato");
		}
		catch (SQLException e) {
			System.out.println("Conn fallita");
		}
	}
}
