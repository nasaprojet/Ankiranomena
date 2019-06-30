package ModelDao;

import java.util.List;

import User.AnneeScolaire;
import User.Classe;

public interface AnneeScolaireDao {
	void ajoutAnneeScolaire(AnneeScolaire anneeScolaire) throws Exception;
	List<AnneeScolaire> getAnneeScolaire() throws Exception;
	List<AnneeScolaire> getListAnneeScolaire() throws Exception;
	void ajoutClasse(Classe classe) throws Exception;
}
