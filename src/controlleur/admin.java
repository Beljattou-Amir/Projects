package controlleur;

public class admin {
	private int idadmin;
	private String nom, prenom, datenaissance, mail, telephone, adresse;
	public admin(int idadmin, String nom, String prenom, String datenaissance, String mail, String telephone,
			String adresse) {
		
		this.idadmin = idadmin;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.mail = mail;
		this.telephone = telephone;
		this.adresse = adresse;
	}
	
	public admin(String nom, String prenom, String datenaissance, String mail, String telephone,
			String adresse) {
		
		this.idadmin = 0;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.mail = mail;
		this.telephone = telephone;
		this.adresse = adresse;
	}

	public admin() {
		
		this.idadmin = 0;
		this.nom = "";
		this.prenom = "";
		this.datenaissance = "";
		this.mail = "";
		this.telephone = "";
		this.adresse ="";
	}

	public int getIdadmin() {
		return idadmin;
	}

	public void setIdadmin(int idadmin) {
		this.idadmin = idadmin;
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

	public String getDatenaissance() {
		return datenaissance;
	}

	public void setDatenaissance(String datenaissance) {
		this.datenaissance = datenaissance;
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

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	
}
