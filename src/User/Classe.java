package User;

public class Classe extends AnneeScolaire{
	private int id_classe;
	private String nom_classe;
	private int id_annee_scolaire;
	private int niveau;
	private String description_classe;
	
	public Classe() {
		super();
	}

	public int getId_classe() {
		return id_classe;
	}

	public void setId_classe(int id_classe) {
		this.id_classe = id_classe;
	}

	public String getNom_classe() {
		return nom_classe;
	}

	public void setNom_classe(String nom_classe) {
		this.nom_classe = nom_classe;
	}

	public int getId_annee_scolaire() {
		return id_annee_scolaire;
	}

	public void setId_annee_scolaire(int id_annee_scolaire) {
		this.id_annee_scolaire = id_annee_scolaire;
	}

	public int getNiveau() {
		return niveau;
	}

	public void setNiveau(int niveau) {
		this.niveau = niveau;
	}

	public String getDescription_classe() {
		return description_classe;
	}

	public void setDescription_classe(String description_classe) {
		this.description_classe = description_classe;
	}
	
	
}
