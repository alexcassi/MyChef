package modello;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;

/**
 * Entity implementation class for Entity: Chef
 *
 */
@Entity
public class Chef extends Utente {

	// private int prezzo; // in centesimi

	@ManyToMany(mappedBy = "chef")
	private List<Ricetta> ricette;

}
