package business;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import modello.Chef;
import modello.Cliente;
import utility.JPAUtility;

public class UtenteManager {

	public static Chef findChef(String email) {
		EntityManager em = JPAUtility.getEntityManager();
		Chef result = em.find(Chef.class, email);
		return result;
	}

	public static Cliente findCliente(String email) {
		EntityManager em = JPAUtility.getEntityManager();
		Cliente result = em.find(Cliente.class, email);
		return result;
	}

	public static List<Chef> findChefList() {
		EntityManager em = JPAUtility.getEntityManager();
		return (ArrayList<Chef>) (em.createQuery("SELECT c FROM Chef c").getResultList());
	}
}
