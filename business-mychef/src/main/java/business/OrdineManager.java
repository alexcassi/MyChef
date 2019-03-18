package business;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.EntityManager;

import modello.Chef;
import modello.Cliente;
import modello.Ordine;
import modello.Ricetta;
import utility.JPAUtility;

public class OrdineManager {

	public static Ordine newOrdine(Date data, Time ora, String indirizzo, Double totale, String note_cliente, Cliente cliente, Chef chef ) {
		Ordine o = new Ordine();
		o.setData(data);
		o.setOra(ora);
		o.setIndirizzo(indirizzo);
		o.setTotale(totale);
		o.setNote_cliente(note_cliente);
		o.setLetto(false);
		o.setAccettato(null);
		o.setCliente(cliente);
		o.setChef(chef);
		
		return o;		
	}

	public static void leggiOrdine(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setId(id);
		o.setLetto(true);
		em.getTransaction().commit();
	}
	
	public static void accettaOrdine(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setId(id);
		o.setAccettato(true);
		em.getTransaction().commit();
	}
	
	public static void rifiutaOrdine(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setId(id);
		o.setAccettato(false);
		em.getTransaction().commit();
	}
	
	public static void rispostaOrdine(Integer id, String note_chef) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setId(id);
		o.setNote_chef(note_chef);
		em.getTransaction().commit();
	}
	
	public static void updateOrdine(Integer id, Date data, Time ora, String indirizzo, Double totale, String note_cliente) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setData(data);
		o.setOra(ora);
		o.setTotale(totale);
		o.setIndirizzo(indirizzo);
		o.setNote_cliente(note_cliente);
		em.getTransaction().commit();
	}

}
