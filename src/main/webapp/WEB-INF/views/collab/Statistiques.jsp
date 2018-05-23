<%@page import="dev.sgp.entite.VisiteWeb"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - App</title>
<link rel="stylesheet"
	href="<c:url value='/bootstrap-3.3.7-dist/css/bootstrap.css'> </c:url>">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">LOG</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="#">Collaborateurs</a> <a
					class="nav-item nav-link" href="#">Statistiques</a> <a
					class="nav-item nav-link" href="#">Activites</a>
			</div>
		</div>
	</nav>

	<h1>Statistiques</h1>

	<section>
		<table ALIGN="CENTER" BORDER="2">
			<thead>
				<tr>
					<th ALIGN="CENTER">Chemin</th>
					<th ALIGN="CENTER">Nombre de Visites</th>
					<th ALIGN="CENTER">Min (ms)</th>
					<th ALIGN="CENTER">Max (ms)</th>
					<th ALIGN="CENTER">Moyenne (ms)</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach var="vis" items="${listeVisites}">
					<tr>
						<td>${st.chemin}</td>
						<td>${st.nbVisites}</td>
						<td>${st.min}</td>
						<td>${st.max}</td>
						<td>${st.moyenne}</td>
					</tr>


				</c:forEach>
			</tbody>
		</table>
	</section>
</body>
</html>


