package ModelDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import User.AnneeScolaire;
import User.Classe;
import config.FactoryDao;

public class AnneeScolaireDaoImpl implements AnneeScolaireDao{
	
	private FactoryDao factoryDao;
	
	
	public AnneeScolaireDaoImpl(FactoryDao factoryDao) {
		this.factoryDao = factoryDao;
	}
	
	@Override
	public List<Classe> getListAnneeScolaire() throws Exception {
	
		List<Classe> anneescolaires = new ArrayList<Classe>();
		
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;
		
		try {
			connexion = factoryDao.getConnection();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM anneescolaire ORDER BY nom ASC;");
			
			while(resultat.next()) {
				Classe anneescolaire = new Classe();
				anneescolaire.setId_annee_scolaire(resultat.getInt("id_annee_scolaire"));
				anneescolaire.setNom_as(resultat.getString("nom"));
				anneescolaire.setDebut(resultat.getString("debut"));
				anneescolaire.setFin(resultat.getString("fin"));
				anneescolaire.setDescription_as(resultat.getString("description"));
				
				anneescolaires.add(anneescolaire);
				
			}
			
			connexion.close();
			statement.close();
			resultat.close();
		}
		catch(SQLException e) {
			throw new Exception("Erreur SQl : "+e.getMessage() );
		}
		
		return anneescolaires;

		
	}

	@Override
	public List<AnneeScolaire> getAnneeScolaire() throws Exception {
		List<AnneeScolaire> anneescolaires = new ArrayList<AnneeScolaire>();
		
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;
		
		try {
			connexion = factoryDao.getConnection();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT id_annnee_scolaire,nom FROM anneescolaire;");
			
			while(resultat.next()) {
				AnneeScolaire anneescolaire = new AnneeScolaire();
				anneescolaire.setId_annee_scolaire(resultat.getInt("id_annee_scolaire"));
				anneescolaire.setNom_as(resultat.getString("nom"));
				
				anneescolaires.add(anneescolaire);
				
			}
			
			connexion.close();
			statement.close();
			resultat.close();
		}
		catch(SQLException e) {
			throw new Exception("Erreur SQl : "+e.getMessage() );
		}
		
		return anneescolaires;
	

	}

	@Override
	public int ajoutAnneeScolaire(AnneeScolaire anneeScolaire) throws Exception {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
//		String query = "";
		int retour =-1;
		try {
			connexion = factoryDao.getConnection();
			
			//id_ec,,?
			
			preparedStatement = connexion.prepareStatement("INSERT INTO anneescolaire (nom,debut,fin,description) VALUES(?,?,?,?);");
			//preparedStatement.setInt(1,ecue.getId_ec());anneeScolaire.getDebut()
			preparedStatement.setString(1,anneeScolaire.getNom_as());
			preparedStatement.setString(2,anneeScolaire.getDebut());
			preparedStatement.setString(3,anneeScolaire.getFin());
			preparedStatement.setString(4,anneeScolaire.getDescription_as());
				
			retour = preparedStatement.executeUpdate();
			
			preparedStatement.close();
			connexion.close();
		}
		catch(SQLException e) {
			throw new Exception(e.getMessage());
		}
		
		return retour;
		
	}

	@Override
	public int ajoutClasse(Classe classe) throws Exception{
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
//		String query = "";
		int retour = -1;
		
		try {
			connexion = factoryDao.getConnection();
			
			//id_ec,,?
			
			preparedStatement = connexion.prepareStatement("INSERT INTO classe (nom_classe,niveau,id_annee_scolaire,description) VALUES(?,?,?,?);");
			//preparedStatement.setInt(1,ecue.getId_ec());
			preparedStatement.setString(1,classe.getNom_classe());
			preparedStatement.setInt(2,classe.getNiveau());
			preparedStatement.setInt(3,classe.getId_annee_scolaire());
			preparedStatement.setString(4,classe.getDescription_classe());
				
			retour = preparedStatement.executeUpdate();
			preparedStatement.close();
			connexion.close();
		}
		catch(SQLException e) {
			throw new Exception(e.getMessage());
		}
		
		return  retour;
		
	}

	@Override
	public void deleteAnneeScolaire(int id_annee_scolaire) throws Exception {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			connexion = factoryDao.getConnection();
			preparedStatement = connexion.prepareStatement("DELETE from anneescolaire where id_annee_scolaire=?;");
			preparedStatement.setInt(1,id_annee_scolaire);
			preparedStatement.executeUpdate();
			
			
			preparedStatement.close();
			connexion.close();
			
		}catch(SQLException e) {
			throw new Exception("sql delete :"+e.getMessage());
		}
		
	}

}
