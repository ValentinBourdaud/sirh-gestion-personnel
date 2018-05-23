<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
      crossorigin="anonymous">

<title>SGP - App</title>

</head>
<body>
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">LOG</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-item nav-link" href="#">Collaborateurs</a>
        <a class="nav-item nav-link" href="#">Statistiques</a>
        <a class="nav-item nav-link" href="#">Activites</a>
      </div>
    </div>
  </nav>
    <a href="./creer-collab.html" target="_blank">
    <button type="button" class="btn btn-secondary btn-lg col-2 offset-10">Ajouter un nouveau collaborateur</button>
  </a>

    <div class="container">
      <div class="row">
        <div class="col-12">
          <h1>Les collaborateurs</h1>
        </div>
      </div>
      <form>
     
        <div class="form-group">
          <div class="row">
            <div class="col-4">
     <label for="exampleFormControlInput1">Rechercher un nom ou un prénom qui commence par :</label>
            </div>
            <div class="col-3">
              <input type="text">
            </div>
            <div class="col-1">
              <button type="button" class="btn btn-secondary btn-lg">Rechercher</button>
            </div>
            <div class="col-3 offset-1">
     <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" >
     <label class="form-check-label" for="defaultCheck1">Voir les collaborateurs désactivés</label>
            </div>
          </div>
          <div class="form-group">
        
          <div class="row">
            <div class="col-4">
              <label for="exampleFormControlSelect1">Filtrer par département :</label>
   </div>
   <div class="col-3">
     <select class="form-control" id="exampleFormControlSelect1" placeholder="Tous">
       <option>Tous</option>
       <option>Comptabilite</option>
       <option>Ressources Humaines</option>
       <option>Informatique</option>
     </select>
   </div>
   </div>
  </div>
  </form>
     <%
			List<String> listeNoms =(List<String>) request.getAttribute("listeNoms");
			for (String nom : listeNoms) {
		%>
    <div class="row justify-content-center">
      <div class="col-3 offset-1">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">NOM Prenom</h5>
      <p class="card-text">
      
        
      </p>
      <div class="row justify-content-end">
      <button type="button" class="btn btn-secondary btn-sm">Editer</button>
    </div>
    </div>
  </div>
  </div>
  <div class="col-3 offset-1">
    <div class="card" style="width: 18rem;">
      <div class="card-body">
        <h5 class="card-title">NOM Prenom</h5>
  <p class="card-text">
    <ul class="list-unstyled">
      <li>Fonction</li>
      <li>Departement</li>
      <li>Email</li>
      <li>Telephone</li>
    </ul>
  </p>
  <div class="row justify-content-end">
  <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  <div class="col-3 offset-1">
    <div class="card" style="width: 18rem;">
      <div class="card-body">
        <h5 class="card-title">NOM Prenom</h5>
  <p class="card-text">
    <ul class="list-unstyled">
      <li>Fonction</li>
      <li>Departement</li>
      <li>Email</li>
      <li>Telephone</li>
    </ul>
  </p>
  <div class="row justify-content-end">
  <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-3 offset-1">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">NOM Prenom</h5>
    <p class="card-text">
      <ul class="list-unstyled">
        <li>Fonction</li>
        <li>Departement</li>
        <li>Email</li>
        <li>Telephone</li>
      </ul>
    </p>
    <div class="row justify-content-end">
    <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  <div class="col-3 offset-1">
  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title">NOM Prenom</h5>
  <p class="card-text">
  <ul class="list-unstyled">
    <li>Fonction</li>
    <li>Departement</li>
    <li>Email</li>
    <li>Telephone</li>
  </ul>
  </p>
  <div class="row justify-content-end">
  <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  <div class="col-3 offset-1">
  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title">NOM Prenom</h5>
  <p class="card-text">
  <ul class="list-unstyled">
    <li>Fonction</li>
    <li>Departement</li>
    <li>Email</li>
    <li>Telephone</li>
  </ul>
  </p>
  <div class="row justify-content-end">
  <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-3 offset-1">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">NOM Prenom</h5>
    <p class="card-text">
      <ul class="list-unstyled">
        <li>Fonction</li>
        <li>Departement</li>
        <li>Email</li>
        <li>Telephone</li>
      </ul>
    </p>
    <div class="row justify-content-end">
    <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  <div class="col-3 offset-1">
  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title">NOM Prenom</h5>
  <p class="card-text">
  <ul class="list-unstyled">
    <li>Fonction</li>
    <li>Departement</li>
    <li>Email</li>
    <li>Telephone</li>
  </ul>
  </p>
  <div class="row justify-content-end">
  <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  <div class="col-3 offset-1">
  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title">NOM Prenom</h5>
  <p class="card-text">
  <ul class="list-unstyled">
    <li>Fonction</li>
    <li>Departement</li>
    <li>Email</li>
    <li>Telephone</li>
  </ul>
  </p>
  <div class="row justify-content-end">
  <button type="button" class="btn btn-secondary btn-sm">Editer</button>
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>


      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
      integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"></script>
    </body>

	<ul>
		
		<li><%=nom%></li>
		<%
			}
		%>
	</ul>
</body>
</html>