package business;

import javax.persistence.EntityManager;

import modello.Utente;
import utility.JPAUtility;

public class SignUpManager {
	public static boolean checkUsernameExists(String email) {
		return JPAUtility.getEntityManager().find(Utente.class, email) != null;
	}

	public static void signUp(String nome, String cognome, String citta, String provincia, String indirizzo,
			String email, String password) {
		EntityManager em = JPAUtility.getEntityManager();
		Utente u = new Utente();
		u.setEmail(email);
		u.setPassword(password);
		u.setNome(nome);
		u.setCognome(cognome);
		
		em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();
	}
}
