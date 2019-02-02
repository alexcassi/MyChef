package modello;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * Entity implementation class for Entity: Ricetta
 *
 */
@Entity
public class Ricetta {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(nullable = false)
	private String nome_ricetta;
	@Column(nullable = false)
	private String ingredienti;
	@Column(nullable = false)
	private String tempo_preparazione;
	@Column(nullable = false)
	private Double prezzo;
	@ManyToOne
	private Chef chef;

	public String getNome_ricetta() {
		return nome_ricetta;
	}

	public void setNome_ricetta(String nome_ricetta) {
		this.nome_ricetta = nome_ricetta;
	}

	public String getIngredienti() {
		return ingredienti;
	}

	public void setIngredienti(String ingredienti) {
		this.ingredienti = ingredienti;
	}

	public String getTempo_preparazione() {
		return tempo_preparazione;
	}

	public void setTempo_preparazione(String tempo_preparazione) {
		this.tempo_preparazione = tempo_preparazione;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Double prezzo) {
		this.prezzo = prezzo;
	}

	public Integer getId() {
		return id;
	}

	public Chef getChef() {
		return chef;
	}

	public void setChef(Chef chef) {
		this.chef = chef;
	}
}
