package modello;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Entity implementation class for Entity: Chef
 *
 */
@Entity
public class Chef extends Utente {

	// Private int prezzo; // in centesimi

	@JsonIgnore
	@ManyToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinTable(name = "chefs_ricette", joinColumns = @JoinColumn(name = "email"), inverseJoinColumns = @JoinColumn(name = "id"))
	private List<Ricetta> ricette = new ArrayList<Ricetta>();

	public void aggiungiRicetta(Ricetta r) {
		this.ricette.add(r);
	}

	public List<Ricetta> getRicette() {
		return ricette;
	}

	public void setRicette(List<Ricetta> ricette) {
		this.ricette = ricette;
	}

}
