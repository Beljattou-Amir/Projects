<%@ page import="controlleur.Candidat" %>
<%@ page import="modele.ModeleCandidat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	{	
		Candidat candidat = new Candidat (
				request.getParameter("nom"),request.getParameter("prenom"),request.getParameter("datenaissance"),
				request.getParameter("mail"),request.getParameter("telephone"),request.getParameter("mot_de_passe")
		);
		
		ModeleCandidat.insertCandidat(candidat);
		response.sendRedirect("vue_insert_candidat.jsp");
		
	}


	%>
</body>
</html>