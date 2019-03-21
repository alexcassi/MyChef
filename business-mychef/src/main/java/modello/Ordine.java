package modello;

import java.util.Date;

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
public class Ordine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(nullable = false)
	private Date data;
	@Column(nullable = false)
	private Date ora;
	@Column(nullable = false)
	private String comune;
	@Column(nullable = false)
	private String provincia;
	@Column(nullable = false)
	private String indirizzo;
	@Column(nullable = false)
	private String contenuto_ordine;
	@Column(nullable = false)
	private Double totale;
	@Column(nullable = false)
	private Boolean lettoChef;
	@Column(nullable = false)
	private Boolean lettoCliente;
	@Column(nullable = false)
	private Integer accettato;
	@Column(nullable = false)
	private String note_cliente;
	@Column(nullable = false)
	private String note_chef;
	@ManyToOne
	private Chef chef;
	@ManyToOne 
	private Cliente cliente;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public Date getOra() {
		return ora;
	}
	public void setOra(Date ora) {
		this.ora = ora;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public String getContenuto_ordine() {
		return contenuto_ordine;
	}
	public void setContenuto_ordine(String contenuto_ordine) {
		this.contenuto_ordine = contenuto_ordine;
	}
	public Double getTotale() {
		return totale;
	}
	public void setTotale(Double totale) {
		this.totale = totale;
	}
	public Boolean getLettoChef() {
		return lettoChef;
	}
	public void setLettoChef(Boolean letto) {
		this.lettoChef = letto;
	}
	public Boolean getLettoCliente() {
		return lettoCliente;
	}
	public void setLettoCliente(Boolean letto) {
		this.lettoCliente = letto;
	}
	public Integer getAccettato() {
		return accettato;
	}
	public void setAccettato(Integer accettato) {
		this.accettato = accettato;
	}
	public String getNote_cliente() {
		return note_cliente;
	}
	public void setNote_cliente(String note_cliente) {
		this.note_cliente = note_cliente;
	}
	public String getNote_chef() {
		return note_chef;
	}
	public void setNote_chef(String note_chef) {
		this.note_chef = note_chef;
	}
	public Chef getChef() {
		return chef;
	}
	public void setChef(Chef chef) {
		this.chef = chef;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public String getComune() {
		return comune;
	}
	public void setComune(String comune) {
		this.comune = comune;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

}
