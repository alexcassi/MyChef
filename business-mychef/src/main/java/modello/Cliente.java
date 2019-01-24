package modello;

import javax.persistence.Column;
import javax.persistence.Entity;

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

	private Double latitudine;
	private Double longitudine;

	public String getProvincia() {
		return provincia;
	}

	public String getComune() {
		return comune;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public Double getLatitudine() {
		return latitudine;
	}

	public Double getLongitudine() {
		return longitudine;
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

	public void setLatitudine(Double latitudine) {
		this.latitudine = latitudine;
	}

	public void setLongitudine(Double longitudine) {
		this.longitudine = longitudine;
	}

}
