package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurControlleur extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matriculeParam = req.getParameter("matricule");

		if (matriculeParam == null) {
			resp.setStatus(400);
		}
		resp.setContentType("text/html");

		resp.getWriter().write("<h1>Edition de collaborateur</h1>" + "<p>Matricule :</p> " + matriculeParam);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matriculeParam = req.getParameter("matricule");
		if (matriculeParam == null) {
			resp.setStatus(400);
			resp.getWriter().write("Un matricule était attendu");

		}
		String titreParam = req.getParameter("titre");
		if (titreParam == null) {
			resp.setStatus(400);
			resp.getWriter().write("Un titre était attendu");
		}
		String nomParam = req.getParameter("nom");
		if (nomParam == null) {
			resp.setStatus(400);
			resp.getWriter().write("Un nom était attendu");

		}
		String prenomParam = req.getParameter("prenom");
		if (prenomParam == null) {
			resp.setStatus(400);
			resp.getWriter().write("Un prénom était attendu");
		}

		resp.setContentType("text/html");

		resp.getWriter()
				.write("<h1>Creation d'un collaborateur avec les informations suivantes :</h1>" + "<ul>"
						+ "<li>matricule=" + matriculeParam + ",titre=" + titreParam + ",nom=" + nomParam + ",prenom="
						+ prenomParam + "</li>" + "</ul>");
	}
}
