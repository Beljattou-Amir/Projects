<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String params = "action=modif&idemp="+request.getParameter("idemp");
String chaine ="<form method='post' action='Candidat.jsp?"+params+"'>";
System.out.println(chaine);
chaine += "<h1>Modifier un candidat</h1>";
chaine += "<label for='nom'>nom:</label><br>";
chaine += "<input type='text' id='nom' name='nom' value="+request.getParameter("nom")+"><br>";
chaine += "<label for='prenom'>Prénom:</label><br>";
chaine += "<input type='text' id='prenom' name='prenom'value="+request.getParameter("prenom")+"><br>";
chaine += "<label for='datenaissance'>Date de naissance:</label><br>";
chaine += "<input type='date' id='datenaissance' name='datenaissance' value="+request.getParameter("datenaissance")+"/><br>";
chaine += "<label for='mail'>Adresse Mail:</label><br>";
chaine += "<input type='text' id='mail' name='mail' value="+request.getParameter("mail")+"><br>"; 
chaine += "<label for='phone'>Téléphone:</label><br>";
chaine += "<input type='text' id='phone' name='telephone' value="+request.getParameter("telephone")+"><br>";
 
chaine += "<input type='submit'id='valider' value='valider'>";
chaine += "<input type='reset' id='annuler' value='annuler'>";
chaine += "</form>";


out.print(chaine);



%>

</body>
</html>