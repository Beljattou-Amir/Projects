
package controlleur;

public class Utilisateur {
	private int idutilisateur ;
	private String nom, prenom, mail, telephone, datenaissance, mdp;

	public Utilisateur(int idutilisateur, String nom, String prenom, String mail, String telephone, String date, String mdp) {
		
		this.idutilisateur = idutilisateur;
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.telephone = telephone;
		this.datenaissance = date;
		this.mdp = mdp;
	}
	
	public Utilisateur( String nom, String prenom, String mail, String telephone, String date, String mdp) {
		
		this.idutilisateur = 0;
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.telephone = telephone;
		this.datenaissance = date;
		this.mdp = mdp;
	}
	
	public Utilisateur() {
		this.idutilisateur = 0;
		this.nom = "";
		this.prenom = "";
		this.mail = "";
		this.telephone = "";
		this.datenaissance = "";
		this.mdp = "";
	}

	public int getIdutilisateur() {
		return idutilisateur;
	}

	public void setIdutilisateur(int idutilisateur) {
		this.idutilisateur = idutilisateur;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getDatenaissance() {
		return datenaissance;
	}

	public void setDatenaissance(String datenaissance) {
		this.datenaissance = datenaissance;
	}
	
	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

}
