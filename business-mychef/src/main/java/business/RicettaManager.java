package business;

import javax.persistence.EntityManager;

import modello.Chef;
import modello.Ricetta;
import utility.JPAUtility;

public class RicettaManager {

	public static Ricetta addRicetta(String nome_ricetta, String ingredienti, String tempo_preparazione, Double prezzo,
			String id_chef) {
		EntityManager em = JPAUtility.getEntityManager();
		Ricetta r = new Ricetta();
		r.setNome_ricetta(nome_ricetta);
		r.setIngredienti(ingredienti);
		r.setTempo_preparazione(tempo_preparazione);
		r.setPrezzo(prezzo);

		Chef c = em.find(Chef.class, id_chef);
		em.getTransaction().begin();
		c.aggiungiRicetta(r);
		em.persist(r);
		em.getTransaction().commit();
		return r;
	}

	public static void removeRicetta(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ricetta r = em.find(Ricetta.class, id);
		em.getTransaction().begin();
		em.remove(r);
		em.getTransaction().commit();

	}

	public static void updateRicetta(Integer id, String nome_ricetta, String ingredienti, String tempo_preparazione,
			Double prezzo) {
		EntityManager em = JPAUtility.getEntityManager();
		Ricetta r = em.find(Ricetta.class, id);
		em.getTransaction().begin();
		r.setId(id);
		r.setNome_ricetta(nome_ricetta);
		r.setIngredienti(ingredienti);
		r.setTempo_preparazione(tempo_preparazione);
		r.setPrezzo(prezzo);
		em.getTransaction().commit();
	}

}
