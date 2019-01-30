package business;

import javax.persistence.EntityManager;

import modello.Chef;
import utility.JPAUtility;

public class LoginManager {

	public static Chef login(String email, String password) {
		EntityManager em = JPAUtility.getEntityManager();
		Chef result = em.find(Chef.class, email);
		if (result != null && result.getPassword().equals(password)) {
			return result;	
		} else {
			return null;
		}
	}
}
