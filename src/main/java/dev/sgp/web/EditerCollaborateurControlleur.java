package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurControlleur extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		
		resp.getWriter().write("Un matricule est attendu");
		
		String matriculeParam = req.getParameter("matricule");
		resp.setContentType("text/html");
		
		resp.getWriter().write("<h1>Edition de collaborateur</h1>"
				+ "<p>Matricule : M01</p>");
			}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		
		resp.getWriter().write("Les paramètres suivants sont incorrects :");

		
		resp.setContentType("text/html");
		
		resp.getWriter().write("<h1>Creation d'un collaboraetur avec les informations suivantes :</h1>"
				+ "<ul>"
				+ "<li>matricule="+ matriculeParam +",titre="+titreParam+",nom="+nomParam+",prenom="+prenomParam+"</li>"
				+ "</ul>");
			}
}
