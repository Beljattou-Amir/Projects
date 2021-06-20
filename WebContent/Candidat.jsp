<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="controlleur.Candidat" %>
<%@ page import="modele.ModeleCandidat" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des Candidats</title>
</head>
<body>
<%
	{	
		if (request.getParameter("action")!=null)
		{		
			String action = request.getParameter("action");
			if(action.equals("suppr"))
			{
				int idemp = Integer.parseInt(request.getParameter("idemp"));
				ModeleCandidat.deleteCandidatById(idemp); 
				response.sendRedirect("vue_candidat.jsp");
			}
			
			if(action.equals("modif"))
			{
				int idemp = Integer.parseInt(request.getParameter("idemp"));
				System.out.println(idemp);
				Candidat candidat = new Candidat(idemp,request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("datenaissance"), request.getParameter("mail"), request.getParameter("telephone"));
				ModeleCandidat.updateCandidat(candidat);
				response.sendRedirect("vue_candidat.jsp");
			}
			
		}
	}


	%>
</body>
</html>