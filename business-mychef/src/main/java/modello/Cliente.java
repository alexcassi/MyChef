package modello;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Entity implementation class for Entity: Cliente
 *
 */
@Entity
public class Cliente extends Utente {

	@Column(nullable = false)
	private String provincia;
	@Column(nullable = false)
	private String comune;
	// private String frazione;
	@Column(nullable = false)
	private String indirizzo;
	@JsonIgnore
	@OneToMany(mappedBy = "cliente")
	private List<Ordine> ordini;

	// private Double latitudine;
	// private Double longitudine;

	public String getProvincia() {
		return provincia;
	}

	public String getComune() {
		return comune;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public void setComune(String comune) {
		this.comune = comune;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

}
