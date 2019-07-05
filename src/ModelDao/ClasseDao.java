package ModelDao;

import java.util.List;

import User.Classe;

public interface ClasseDao {
	List<Classe> getClasse() throws Exception;
	List<Classe> getClasseById(int id_annee_scolaire) throws Exception;
	void insertClasseAjoutee(Classe classe, int id_annee_scolaire) throws Exception;
	List<Classe> listClasseAnneeScolaireVues() throws Exception;
	void ajoutAnneeScolaire(Classe classe) throws Exception;
	int ajoutClasseById(Classe classe) throws Exception;
}
