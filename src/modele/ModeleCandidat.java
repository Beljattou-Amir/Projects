package modele;
import controlleur.*;
import controlleur.Utilisateur;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;





public class ModeleCandidat {
	private static Connection maConnexion;
	private static BDD uneBDD = new BDD("localhost:3306", "mlr2", "root", "");
	
	
	public static void insertCandidat(Candidat candidat) {
		String requete ="insert into candidat (Nom, Prenom, Datenaissance, Mail, Telephone, MOT_DE_PASSE)  values ('" + candidat.getNom()
		+"','" + candidat.getPrenom() + "','"+candidat.getDatenaissance()
		+"','" + candidat.getMail() + "','" + candidat.getTelephone()+ "','" + candidat.getMdp() + "'); ";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			System.out.println(requete);
			unStat.execute(requete); 
			unStat.close();
			uneBDD.seDeConnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}
	
	public static void insertUtilisateur(Utilisateur utilisateur) {
		String requete ="insert into utilisateur  values ('" + utilisateur.getIdutilisateur()+"','" + utilisateur.getNom()
		+"','" + utilisateur.getPrenom() + "','"+utilisateur.getDatenaissance()
		+"','" + utilisateur.getMail() + "','" + utilisateur.getTelephone()+ "','" + utilisateur.getMdp() + "'); ";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete); 
			unStat.close();
			uneBDD.seDeConnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	
}
	public static ArrayList<Candidat> selectAllCandidat() {
		
		ArrayList<Candidat> allCandidat = new ArrayList<Candidat>();
		String requete ="select * from candidat;"; 
		
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete); 
			
			for (;unResultat.next();) 
			{
				Candidat candidat = new Candidat (
						unResultat.getInt("ID"),
						unResultat.getString("NOM"),
						unResultat.getString("PRENOM"),
						unResultat.getString("DATENAISSANCE"),
						unResultat.getString("MAIL"),
						unResultat.getString("TELEPHONE"),
						unResultat.getString("MOT_DE_PASSE")
						);
				allCandidat.add(candidat);
			}
			unStat.close();
			uneBDD.seDeConnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
		return allCandidat;
	}
	
	public static void deleteCandidatById(int id ) {
		
		
		String requete ="delete from candidat where ID=" + id + ";";
		
		System.out.println(requete);
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			 
			unStat.execute(requete);
			
			unStat.close();
			uneBDD.seDeConnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}
	
	public static void updateCandidat (Candidat candidat)
	{
		String requete ="update candidat set nom='" + candidat.getNom() + "', prenom='"+candidat.getPrenom()+"', datenaissance= '"+candidat.getDatenaissance()+"', mail='"+candidat.getMail()+"', telephone='"+candidat.getTelephone()+"'"
				+ "WHERE ID="+candidat.getIdcandidat() ;

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete); 
			unStat.close();
			uneBDD.seDeConnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}
	
	
	

	 
	    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	        String nom = request.getParameter("nom");
	        String prenom = request.getParameter("prenom");

	        HttpSession session = request.getSession();

	        session.setAttribute("nom", nom);
	        session.setAttribute("prenom", prenom);

	        this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
	    }
}
