<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="controlleur.*"%>
<%@ page import="controlleur.ControlleurCandidat"%>

<% 
			Candidat candidat = null;
			if (request.getParameter("insertCandidat")!=null){
				candidat = new Candidat (
						request.getParameter("nom"), 
						request.getParameter("prenom"), 
						request.getParameter("datenaissance"), 
						request.getParameter("mail"), 
						request.getParameter("telephone"),
						request.getParameter("mot_de_passe")
						);
				//insertion dans la base de données : table Candidat
				ControlleurCandidat.insertCandidat(candidat);
			}
			
			
		%>
<%@ include file="vue_insert_candidat.jsp"%>
<br />