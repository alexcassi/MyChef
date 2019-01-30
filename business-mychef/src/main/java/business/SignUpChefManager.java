package business;

import javax.persistence.EntityManager;

import modello.Chef;
import modello.Ricetta;
import modello.Utente;
import utility.JPAUtility;

public class SignUpChefManager {
	public static boolean checkUsernameExists(String email) {
		return JPAUtility.getEntityManager().find(Utente.class, email) != null;
	}

	public static Chef signUp(String nome, String cognome, String email, String password, Ricetta r) {
		EntityManager em = JPAUtility.getEntityManager();
		Chef u = new Chef();
		u.setEmail(email);
		u.setPassword(password);
		u.setNome(nome);
		u.setCognome(cognome);
		u.aggiungiRicetta(r);

		em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();
		return u;
	}
}
