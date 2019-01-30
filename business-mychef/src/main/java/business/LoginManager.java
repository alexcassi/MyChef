package business;

import javax.persistence.EntityManager;

import modello.Chef;
import modello.Cliente;
import utility.JPAUtility;

public class LoginManager {

	public static Chef loginChef(String email, String password) {
		EntityManager em = JPAUtility.getEntityManager();
		Chef result = em.find(Chef.class, email);
		if (result != null && result.getPassword().equals(password)) {
			return result;	
		} else {
			return null;
		}
	}
	public static Cliente loginCliente(String email, String password) {
		EntityManager em = JPAUtility.getEntityManager();
		Cliente result = em.find(Cliente.class, email);
		if (result != null && result.getPassword().equals(password)) {
			return result;	
		} else {
			return null;
		}
	}
}
