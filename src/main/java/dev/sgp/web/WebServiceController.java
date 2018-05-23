package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.LongSummaryStatistics;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Statistique;
import dev.sgp.entite.VisiteWeb;
import dev.sgp.service.VisiteWebService;
import dev.sgp.util.Constantes;

public class WebServiceController extends HttpServlet  {

	private VisiteWebService wb = Constantes.WEB_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<VisiteWeb> visites = wb.listerVisites();
		
		ArrayList<Statistique> stats = new ArrayList<>();
		
		ArrayList<String> paths =new ArrayList<>();
		
		
		for (VisiteWeb vi : visites) {   
			if (!paths.contains(vi.getChemin())){
			paths.add(vi.getChemin());
			}
	        }
		
		
		for (String p : paths) {   
			
			LongSummaryStatistics st = visites.stream().filter( visite -> visite.getChemin().equals(p)).collect(Collectors.summarizingLong(VisiteWeb::getTempsExecution));
			Statistique es = new Statistique();
			es.setChemin(p);
			es.setMax(st.getMax());
			es.setMin(st.getMin());
			es.setMoyenne(st.getAverage());
			es.setNbVisites((int)st.getCount());
			
			stats.add(es);
			
	        }
		
		
		req.setAttribute("statis", stats);
		req.setAttribute("listeVisits", visites);
		
		
		
		req.getRequestDispatcher("/WEB-INF/views/collab/Statistiques.jsp").forward(req, resp);
		
			}
	}

