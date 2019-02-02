package modello;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Entity implementation class for Entity: Chef
 *
 */
@Entity
public class Chef extends Utente {

	private String luogo_lavoro;
	@JsonIgnore
	@OneToMany(mappedBy = "chef")
	private List<Ricetta> ricette;

	public void aggiungiRicetta(Ricetta r) {
		if (ricette == null) {
			ricette = new ArrayList<Ricetta>();
		}
		this.ricette.add(r);
		r.setChef(this);
	}

	public List<Ricetta> getRicette() {
		return ricette;
	}

	public void setRicette(List<Ricetta> ricette) {
		this.ricette = ricette;
	}

	public String getLuogo_lavoro() {
		return luogo_lavoro;
	}

	public void setLuogo_lavoro(String luogo_lavoro) {
		this.luogo_lavoro = luogo_lavoro;
	}

}
