package dev.sgp.entite;

public class Statistique {

	private String chemin;
	private Integer nbVisites;
	private Long min;
	private Long max;
	private Double moyenne;
	

	public String getChemin() {
		return chemin;
	}


	public void setChemin(String chemin) {
		this.chemin = chemin;
	}


	public Integer getNbVisites() {
		return nbVisites;
	}


	public void setNbVisites(Integer nbVisites) {
		this.nbVisites = nbVisites;
	}


	public Long getMin() {
		return min;
	}


	public void setMin(Long min) {
		this.min = min;
	}


	public Long getMax() {
		return max;
	}


	public void setMax(Long max) {
		this.max = max;
	}


	public Double getMoyenne() {
		return moyenne;
	}


	public void setMoyenne(Double moyenne) {
		this.moyenne = moyenne;
	}
	
	
	
	
}
