package modello;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

/**
 * Entity implementation class for Entity: Utente
 *
 */
@Entity
@Inheritance(strategy=InheritanceType.JOINED)

public class Utente {

	@Id
	@Column(nullable=false)
	private String email;
	@Column(nullable=false)
	private String password;
	
	private String nome;
	private String cognome;
	
	private Double latitudine;
	private Double longitudine;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public Double getLatitudine() {
		return latitudine;
	}
	public void setLatitudine(Double latitudine) {
		this.latitudine = latitudine;
	}
	public Double getLongitudine() {
		return longitudine;
	}
	public void setLongitudine(Double longitudine) {
		this.longitudine = longitudine;
	}
	
}
