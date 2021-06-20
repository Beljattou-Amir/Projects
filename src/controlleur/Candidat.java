package controlleur;

public class Candidat {
	private int idcandidat ;
	private String nom, prenom, mail, telephone, datenaissance, mdp;

	public Candidat(int idcandidat, String nom, String prenom, String date, String mail, String telephone, String mdp) {
		
		this.idcandidat = idcandidat;
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.telephone = telephone;
		this.datenaissance = date;
		this.mdp = mdp;
	}
	public Candidat(int idcandidat, String nom, String prenom, String date, String mail, String telephone) {
		
		this.idcandidat = idcandidat;
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.telephone = telephone;
		this.datenaissance = date;
		
	}
	
	public Candidat( String nom, String prenom, String date, String mail, String telephone, String mdp) {
		
		this.idcandidat = 0;
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.telephone = telephone;
		this.datenaissance = date;
		this.mdp = mdp;
	}
	
	public Candidat() {
		this.idcandidat = 0;
		this.nom = "";
		this.prenom = "";
		this.mail = "";
		this.telephone = "";
		this.datenaissance = "";
		this.mdp = "";
	}

	public int getIdcandidat() {
		return idcandidat;
	}

	public void setIdcandidat(int idcandidat) {
		this.idcandidat = idcandidat;
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
