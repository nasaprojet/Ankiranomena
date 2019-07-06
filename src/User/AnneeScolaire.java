package User;

public class AnneeScolaire {
	private int id_annee_scolaire;
	private String nom_as;
	private String debut;
	private String fin;
	private String description_as;
	
	public AnneeScolaire() {
		
	}

	public int getId_annee_scolaire() {
		return id_annee_scolaire;
	}

	public void setId_annee_scolaire(int id_annee_scolaire) {
		this.id_annee_scolaire = id_annee_scolaire;
	}

	public String getNom_as() {
		return nom_as;
	}

	public void setNom_as(String nom_as) {
		this.nom_as = nom_as;
	}

	public String getDebut() {
		return debut;
	}

	public void setDebut(String debut) {
		this.debut = debut;
	}

	public String getFin() {
		return fin;
	}

	public void setFin(String fin) {
		this.fin = fin;
	}

	public String getDescription_as() {
		return description_as;
	}

	public void setDescription_as(String description_as) {
		this.description_as = description_as;
	}
	
	
}
