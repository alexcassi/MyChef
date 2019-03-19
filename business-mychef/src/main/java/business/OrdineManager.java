package business;

import java.util.Date;

import javax.persistence.EntityManager;

import modello.Chef;
import modello.Cliente;
import modello.Ordine;
import utility.JPAUtility;

public class OrdineManager {

	public static Ordine newOrdine(Date data, Date ora, String comune, String provincia, String indirizzo, Double totale, String note_cliente, String cliente_mail, String chef_mail, String contenuto_ordine ) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = new Ordine();
		o.setContenuto_ordine(contenuto_ordine);
		o.setData(data);
		o.setOra(ora);
		o.setComune(comune);
		o.setProvincia(provincia);
		o.setIndirizzo(indirizzo);
		o.setTotale(totale);
		o.setNote_cliente(note_cliente);
		o.setLettoChef(false);
		o.setLettoCliente(false);
		o.setAccettato(null);
		Chef c = em.find(Chef.class, chef_mail);
		em.getTransaction().begin();
		c.aggiungiOrdine(o);
		em.persist(o);
		em.getTransaction().commit();
		Cliente u = em.find(Cliente.class, cliente_mail);
		em.getTransaction().begin();
		u.aggiungiOrdine(o);
		em.persist(o);
		em.getTransaction().commit();
		
		return o;		
	}

	public static void leggiOrdineChef(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setLettoChef(true);
		em.getTransaction().commit();
	}
	
	public static void leggiOrdineCliente(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setLettoCliente(true);
		em.getTransaction().commit();
	}
	
	public static void accettaOrdine(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setAccettato(true);
		em.getTransaction().commit();
	}
	
	public static void rifiutaOrdine(Integer id) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setAccettato(false);
		em.getTransaction().commit();
	}
	
	public static void rispostaOrdine(Integer id, String note_chef) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		em.getTransaction().begin();
		o.setNote_chef(note_chef);
		em.getTransaction().commit();
	}
	
	public static void updateOrdine(Integer id, Date data, Date ora, String comune, String provincia, String indirizzo, Double totale, String note_cliente) {
		EntityManager em = JPAUtility.getEntityManager();
		Ordine o = em.find(Ordine.class, id);
		if(o.getAccettato()==null) {
			em.getTransaction().begin();
			o.setData(data);
			o.setOra(ora);
			o.setTotale(totale);
			o.setComune(comune);
			o.setProvincia(provincia);
			o.setIndirizzo(indirizzo);
			o.setNote_cliente(note_cliente);
			em.getTransaction().commit();
		}	
	}

}
