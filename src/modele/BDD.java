package modele;
import java.sql.*;
import java.sql.DriverManager;

public class BDD 
{
// cette classe permet la connexion a la base de données via le pilote JDBC
	//JDBC : java data base connector
	private String serveur, bdd, user, mdp ;
	private Connection maConnexion;
	
	public BDD(String serveur, String bdd, String user, String mdp) {
		this.serveur = serveur;
		this.bdd = bdd;
		this.user = user;
		this.mdp = mdp;
	}
	public void chargerPilote ( ) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch (ClassNotFoundException exp) {
			System.out.println("Absence du pilote jdbc");
		}
		
	}
	public void seConnecter ( ) {
		this.chargerPilote();
		String url ="jdbc:mysql://"+this.serveur+"/"+this.bdd;
		try {
			this.maConnexion = DriverManager.getConnection(url, this.user, this.mdp);
		}
		catch(SQLException exp) {
			System.out.print("Erreur de connexion :" +url);
		}
	}
	public void seDeConnecter ( ) {
		try {
			if (this.maConnexion != null) {
				this.maConnexion.close();
			}
		}
		catch(SQLException exp) {
			System.out.println("Erreur de déconnexion ");
			exp.printStackTrace();
		}
	
	}
	public Connection getMaConnexion ( ) {
		return this.maConnexion;
		
	}
}


	
