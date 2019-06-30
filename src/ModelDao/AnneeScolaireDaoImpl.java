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
	public List<AnneeScolaire> getListAnneeScolaire() throws Exception {
	
List<AnneeScolaire> anneescolaires = new ArrayList<AnneeScolaire>();
		
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;
		
		try {
			connexion = factoryDao.getConnection();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM anneescolaire;");
			
			while(resultat.next()) {
				AnneeScolaire anneescolaire = new AnneeScolaire();
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
	public void ajoutAnneeScolaire(AnneeScolaire anneeScolaire) throws Exception {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
//		String query = "";
		
		try {
			connexion = factoryDao.getConnection();
			
			//id_ec,,?
			
			preparedStatement = connexion.prepareStatement("INSERT INTO anneescolaire (nom,debut,fin,description) VALUES(?,?,?,?);");
			//preparedStatement.setInt(1,ecue.getId_ec());anneeScolaire.getDebut()
			preparedStatement.setString(1,anneeScolaire.getNom_as());
			preparedStatement.setString(2,anneeScolaire.getDebut());
			preparedStatement.setString(3,anneeScolaire.getFin());
			preparedStatement.setString(4,anneeScolaire.getDescription_as());
				
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connexion.close();
		}
		catch(SQLException e) {
			throw new Exception(e.getMessage());
		}
		
		
	}

	@Override
	public void ajoutClasse(Classe classe) throws Exception{
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
//		String query = "";
		
		try {
			connexion = factoryDao.getConnection();
			
			//id_ec,,?
			
			preparedStatement = connexion.prepareStatement("INSERT INTO classe (nom,niveau,id_annee_scolaire,description) VALUES(?,?,?,?);");
			//preparedStatement.setInt(1,ecue.getId_ec());
			preparedStatement.setString(1,classe.getNom_classe());
			preparedStatement.setInt(2,classe.getNiveau());
			preparedStatement.setInt(3,classe.getId_annee_scolaire());
			preparedStatement.setString(4,classe.getDescription_classe());
				
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connexion.close();
		}
		catch(SQLException e) {
			throw new Exception(e.getMessage());
		}
		

		
	}

}
