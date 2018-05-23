package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurControlleur extends HttpServlet {

	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollab.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateDeNaissance = req.getParameter("dateDeNaissance");
		String adresse = req.getParameter("adresse");
		String num_secu = req.getParameter("num_secu");
		
		String email = nom + "." + prenom + "@societe.com";
		String photo = "photo.png";
		String matricule = "M" + Math.floor(Math.random()*101);
		
		ZonedDateTime dateHeureCreation = ZonedDateTime.now(ZoneId.of("Europe/Paris"));
		
	
		if(nom.isEmpty() || prenom.isEmpty() || dateDeNaissance ==null || adresse.isEmpty() || num_secu.isEmpty()){
			resp.sendError(400);
		}
		else if(num_secu.length() != 15){
			resp.setStatus(400);
			resp.getWriter().write("<p>Le numéro de sécurité sociale n'est pas valide</p>");	
		}
		else{
			resp.setStatus(200);
			Collaborateur collab = new Collaborateur(matricule, nom, prenom, LocalDate.parse(dateDeNaissance), adresse, num_secu, email, photo, dateHeureCreation, true);
			Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(collab);
			resp.sendRedirect(req.getContextPath() + "/collaborateurs/lister");
		}
	}
}
