package ModelDao;

import java.util.List;

import User.AnneeScolaire;
import User.Classe;

public interface AnneeScolaireDao {
	int ajoutAnneeScolaire(AnneeScolaire anneeScolaire) throws Exception;
	List<AnneeScolaire> getAnneeScolaire() throws Exception;
	List<Classe> getListAnneeScolaire() throws Exception;
	int ajoutClasse(Classe classe) throws Exception;
	void deleteAnneeScolaire(int id_annee_scolaire) throws Exception;
}
