package dev.sgp.entite;

import javax.servlet.http.HttpServletRequest;

public class VisiteWeb {

	private Integer id;
	private String chemin;
	private Long tempsExecution;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getChemin() {
		return chemin;
	}
	public void setChemin(String chemin) {
		this.chemin = chemin;
	}
	public Long getTempsExecution() {
		return tempsExecution;
	}
	public void setTempsExecution(Long tempsExecution) {
		this.tempsExecution = tempsExecution;
	}
	public HttpServletRequest setChemin(HttpServletRequest req) {
		return null;
	}
	
	
}
