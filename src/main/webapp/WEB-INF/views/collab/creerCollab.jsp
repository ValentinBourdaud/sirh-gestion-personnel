<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-
dist/css/bootstrap.css">
</head>

<body onload = "error()">
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
				</div>

				<div class="row">
					<div class="col-3">
						<label for="prenom">Prenom</label>
					</div>
					<div class="col-4 offset-5">
						<input type="text" class="form-control" id="prenomInput"
							placeholder="Prenom" required="">
					</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="date">Date de naissance</label>
					</div>
					<div class="col-4 offset-5">
						<input type="date" class="form-control" id="dateInput" required="">
					</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="adresse">Adresse</label>
					</div>
					<div class="col-4 offset-5">
						<textarea class="form-control" id="adresseInput" rows="2"
							placeholder="Adresse" required=""></textarea>
					</div>
				</div>

				<div class="row">
					<div class="col-3">
						<label for="numSecu">Numero de securite sociale</label>
					</div>
					<div class="col-4 offset-5">
						<input type="text" class="form-control" id="numSecuInput"
							placeholder="Numero de sécurité sociale" required="">
					</div>
				</div>

				<div class="row justify-content-end">
					<div class="col-7 offset-5">
						<button type="submit" class="btn btn-primary" id="creer"
							data-toggle="modal" data-target="#modal">Créer</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	<script>
		
	function error(){
		
			var url = document.location.href;
			var nom = document.getElementById('nomInput');
			var prenom = document.getElementById('prenomInput');
			var datenaissance = document.getElementById('dateInput');
			var adresse = document.getElementById('adresseInput');
			var numsecu = document.getElementById('numSecuInput');
			
			if (url === "http://localhost:8080/sgp/collaborateurs/creer?errors"){
			nom.setAttribute("class", "is-invalid form-control");
			prenom.setAttribute("class", "is-invalid form-control");
			datenaissance.setAttribute("class", "is-invalid form-control");
			adresse.setAttribute("class", "is-invalid form-control");
			numsecu.setAttribute("class", "is-invalid form-control");
		}
	}

		
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>

</body>
</html>