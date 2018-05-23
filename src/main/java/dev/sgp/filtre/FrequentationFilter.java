package dev.sgp.filtre;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dev.sgp.entite.VisiteWeb;
import dev.sgp.util.Constantes;

public class FrequentationFilter implements Filter {

	private FilterConfig config;

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config=config;
		config.getServletContext().log("Initialisation FrequentationFilter");
	}
	

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
			
		VisiteWeb vis = new VisiteWeb();
		vis.setId(1);
		vis.setChemin((HttpServletRequest)req).getRequestURI();
		long before = System.currentTimeMillis();
		chain.doFilter(req, resp);
		long after = System.currentTimeMillis();
		vis.setTempsExecution(after-before);
		
		Constantes.WEB_SERVICE.sauvegarderVisite(vis);
	}

	@Override
	public void destroy() {
		
	}

}
