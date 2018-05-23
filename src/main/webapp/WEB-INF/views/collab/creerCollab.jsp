<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-
dist/css/bootstrap.css">
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
	<div class="container">
		<div class="row align-items-start">
			<div class="col-12">
				<h1>Nouveau collaborateur</h1>
			</div>
		</div>
		<form method="POST" name="nvcollab" id="nvcollab" action="<%=request.getContextPath()%>/collaborateurs/creer">
			<div class="form-group">
				<div class="row">
					<div class="col-3">
						<label for="nom">Nom</label>
					</div>
					<div class="col-4 offset-5">
						<input type="text" class="form-control" id="nomInput" placeholder="Nom"
							required="">
								
					</div>
					<div class="invalid-tooltip">Veuillez rentrer un nom</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="prenom">Prenom</label>
					</div>
					<div class="col-4 offset-5">
						<input type="text" class="form-control" id="prenomInput"
							placeholder="Prenom" required="">
					</div>
					<div class="invalid-tooltip">Veuillez rentrer un prenom</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="date">Date de naissance</label>
					</div>
					<div class="col-4 offset-5">
						<input type="date" class="form-control" id="dateInput" required="">
					</div>
					<div class="invalid-tooltip">Veuillez rentrer une date</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="adresse">Adresse</label>
					</div>
					<div class="col-4 offset-5">
						<textarea class="form-control" id="adresseInput" rows="2"
							placeholder="Adresse" required=""></textarea>
					</div>
					<div class="invalid-tooltip">Veuillez rentrer une adresse</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="numSecu">Numero de securite sociale</label>
					</div>
					<div class="col-4 offset-5">
						<input type="text" class="form-control" id="numSecuInput"
							placeholder="Numero de sécurité sociale" required="">
					</div>
					<div class="invalid-tooltip">Veuillez rentrer un numéro complet</div>
				</div>

				<div class="row justify-content-end">
					<div class="col-7 offset-5">
						<button type="submit" class="btn btn-primary" id="creer">Créer</button>
					</div>
				</div>
			</div>
		</form>
	</div>



</body>
</html>