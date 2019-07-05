package ModelDao;

import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import User.Classe;
import config.FactoryDao;

public class ClasseDaoImpl implements ClasseDao{
	
	private FactoryDao factoryDao;

	public ClasseDaoImpl(FactoryDao factoryDao) {
		this.factoryDao = factoryDao;
	}

	
	@Override
	public List<Classe> getClasse() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Classe> getClasseById(int id_annee_scolaire) throws Exception {
		List<Classe> classes = new ArrayList<Classe>();
		
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultat = null;
		
		try {
			
			connexion = factoryDao.getConnection();
			preparedStatement = connexion.prepareStatement("SELECT * FROM \"Vue_Classe_AnneeScolaire\" WHERE id_annee_scolaire=? ;");
			preparedStatement.setInt(1, id_annee_scolaire);
			resultat = preparedStatement.executeQuery();
			
			while(resultat.next()) {
				int idanneescolaire = resultat.getInt("id_annee_scolaire");
				String nom = resultat.getString("nom");
				String debut = resultat.getString("debut");
				String fin = resultat.getString("fin");
				String description = resultat.getString("description");
				
				Classe classe = new Classe();
				classe.setId_annee_scolaire(idanneescolaire);
				classe.setNom_as(nom);
				classe.setDebut(debut);
				classe.setFin(fin);
				classe.setDescription_as(description);
				
				classes.add(classe);
			}
			
		}catch(SQLException e) {
			throw new Exception("Erreur listById :"+e.getMessage());
		}
		
		return classes;
	}


	@Override
	public void insertClasseAjoutee(Classe classe, int id_annee_scolaire) throws Exception {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;

		
		try {
			connexion = factoryDao.getConnection();
			
			//id_ec,,?
			
			preparedStatement = connexion.prepareStatement("INSERT INTO classe (nom_classe,niveau,id_annee_scolaire,description) VALUES(?,?,?,?);");
			
			preparedStatement.setString(1,classe.getNom_classe());
//			preparedStatement.setInt(2,ens.getIdens());
			preparedStatement.setInt(2,classe.getNiveau());
			preparedStatement.setInt(3,id_annee_scolaire);
			preparedStatement.setString(4,classe.getDescription_classe());
				
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connexion.close();
		}
		catch(SQLException e) {
			throw new Exception(e.getMessage());
		}
			
	}


	@Override
	public List<Classe> listClasseAnneeScolaireVues() throws Exception {
		List<Classe> classes = new ArrayList<Classe>();
		
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;
		
		try {
			connexion = factoryDao.getConnection();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM \"Vue_Classe_AnneeScolaire\";");
			
			while(resultat.next()) {
				int id_annee_scolaire = resultat.getInt("id_annee_scolaire");
//				int id_classe = resultat.getInt("id_classe");
				String nom_as = resultat.getString("nom");
				String debut = resultat.getString("debut");
				String fin = resultat.getString("fin");
//				String nom_classe = resultat.getString("nom_classe");
//				String niveau = resultat.getString("niveau");
				String description_classe = resultat.getString("description");
				
				
				Classe classe = new Classe();
				classe.setId_annee_scolaire(id_annee_scolaire);
//				classe.setId_classe(id_classe);
				classe.setNom_as(nom_as);
				classe.setDebut(debut);
				classe.setFin(fin);
				classe.setDescription_classe(description_classe);
				

				classes.add(classe);
				
			}
			
			connexion.close();
			statement.close();
			resultat.close();
		}
		catch(SQLException e) {
			throw new Exception("Erreur SQl : "+e.getMessage() );
		}
		
		return classes;

	}


	@Override
	public void ajoutAnneeScolaire(Classe classe) throws Exception {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
//		String query = "";
		
		try {
			connexion = factoryDao.getConnection();
			
			//id_ec,,?
			
			preparedStatement = connexion.prepareStatement("INSERT INTO anneescolaire (nom,debut,fin,description) VALUES(?,?,?,?);");
			//preparedStatement.setInt(1,ecue.getId_ec());anneeScolaire.getDebut()
			preparedStatement.setString(1,classe.getNom_as());
			preparedStatement.setString(2,classe.getDebut());
			preparedStatement.setString(3,classe.getFin());
			preparedStatement.setString(4,classe.getDescription_as());
				
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connexion.close();
		}
		catch(SQLException e) {
			throw new Exception("joutAS: "+e.getMessage());
		}
		
	}


	@Override
	public int ajoutClasseById(Classe classe) throws Exception {
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;
		
		int idanneescolaire = -1;
		
		try {
			
			connexion = factoryDao.getConnection();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM anneescolaire;");

			
			while(resultat.next()) {
				idanneescolaire = resultat.getInt("id_annee_scolaire");
				
			}
			
		}catch(SQLException e) {
			throw new Exception("Erreur listById :"+e.getMessage());
		}
		
		return idanneescolaire;

	}

}
