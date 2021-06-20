<%@ page import="java.util.ArrayList" %>
<%@ page import="controlleur.Candidat" %>
<%@ page import="modele.ModeleCandidat" %>

<h3>liste des candidats</h3>
<br />

<table border="1">
	<tr>
		<td>ID candidat</td>
		<td>Nom Candidat</td>
		<td>Prenom Candidat</td>
		<td>Date de naissance</td>
		<td>Mail</td>
		<td>Telephone</td>
		<td colspan="2" align="center">actions</td>
		


	</tr>
	
<%
	{
		String chaine = ""; 
		ArrayList<Candidat> allCandidat = ModeleCandidat.selectAllCandidat();
		for (int i = 0; i < allCandidat.size(); ++i)
		{
			chaine += "<tr>";
			
			chaine += "<td>" +  allCandidat.get(i).getIdcandidat() 	+"</td>";
			chaine += "<td>" + allCandidat.get(i).getNom() 	+"</td>";
			chaine += "<td>" + allCandidat.get(i).getPrenom() 	+"</td>";
			chaine += "<td>" + allCandidat.get(i).getDatenaissance() 	+"</td>";
			chaine += "<td>" + allCandidat.get(i).getMail() 	+"</td>";
			chaine += "<td>" + allCandidat.get(i).getTelephone() + "</td>";
			
			String paramSuppr =  "action=suppr&idemp="+ allCandidat.get(i).getIdcandidat() ;
			String paramModif =  "action=modif&idemp="+ allCandidat.get(i).getIdcandidat() + "&nom=" + allCandidat.get(i).getNom() + "&prenom=" + allCandidat.get(i).getPrenom() + "&datenaissance=" + allCandidat.get(i).getDatenaissance() +"&mail=" + allCandidat.get(i).getMail() +"&telephone=" + allCandidat.get(i).getTelephone()+"";
			
			//System.out.println(paramModif);
			String buttonStringSupprimer = 
					"<td> <a href='Candidat.jsp?"+paramSuppr+"'> Supprimer </a></td>";
			chaine += buttonStringSupprimer;
			
			String buttonStringModifier = 
					"<td> <a href='modif_candidat.jsp?"+paramModif+"'> Modifier </a></td>";
			chaine += buttonStringModifier;

			chaine +=  "</tr>";
		}
		out.print(chaine);
	}
	
	%>





</table>