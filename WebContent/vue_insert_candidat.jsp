<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="vue_candidat.jsp">liste candidats</a>
	<form method="post" action="ajout_candidat.jsp">
		<h1>Candidat? Créer votre compte</h1>
		 <label for="nom">nom:</label><br> 
		 <input type="text" id="nom" name="nom"><br> 
		 <label for="prenom">Prénom:</label><br>
		<input type="text" id="prenom" name="prenom"><br> 
		<label for="datenaissance">Date de naissance:</label><br>
		<input type="date" id="datenaissance" name="datenaissance" /><br> 
		<label for="mail">Adresse Mail:</label><br> 
		<input type="text" id="mail" name="mail"><br> 
		<label for="phone">Téléphone:</label><br>
		<input type="text" id="phone" name="telephone"><br> 
		<label for="mdp">Mot de passe:</label><br> 
		<input type="password" id="mdp"name="mot_de_passe"><br> 
		<input type="submit"id="valider" name="insertCandidat" value="valider"> 
		<input type="reset" id="annuler" value="annuler">

	</form>
</body>
</html>