package ModelDao;

import User.UserModel;

import config.FactoryDao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class UserDaoImpl implements UserDao{
	
	private FactoryDao factoryDao;
	
	public UserDaoImpl(FactoryDao factoryDao) {
		this.factoryDao = factoryDao;
	}

	@Override
	public void ajoutUser(UserModel user) throws Exception {
		// TODO Auto-generated method stub
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connexion = factoryDao.getConnection();
			
//			preparedStatement = connexion.prepareStatement("INSERT INTO classe (nom,niveau,id_annee_scolaire,description) VALUES(?,?,?,?) ;");
//			preparedStatement.setString(1, user.getNom());
//			preparedStatement.setInt(2, user.getNiveau());
//			preparedStatement.setInt(3, user.getId_annee_scolaire());
//			preparedStatement.setString(4, user.getDescription());
			
			
			preparedStatement = connexion.prepareStatement("INSERT INTO public.\"user\" (nom,prenom,password,code,role) VALUES(?,?,?,?,?) ;");
			preparedStatement.setString(1, user.getNom());
			preparedStatement.setString(2, user.getPrenom());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getCode());
			preparedStatement.setString(5, user.getRole());
			
			preparedStatement.executeUpdate();
			
			
			
			preparedStatement.close();
			
			connexion.close();
			
		}catch(SQLException e) {
			throw new Exception("SQL :"+e.getMessage());
		}
		
	}

	@Override
	public List<UserModel> voirUser() throws Exception {
		// TODO Auto-generated method stub
		List<UserModel> users = new ArrayList<UserModel>();
		
		Connection connexion = null;
		Statement statement = null;
//		PreparedStatement preparedStatement = null;
		ResultSet resultat = null;
		
		try {
			connexion = factoryDao.getConnection();
			statement =connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM public.\"user\";");
//			preparedStatement = connexion.prepareStatement("SELECT * FROM user WHERE id_ec=?;");
//			preparedStatement.setInt(1, id_ec);
//			resultat = preparedStatement.executeQuery();
			
			while(resultat.next()) {
				int id_user = resultat.getInt("id_user");
//				int id_ue = resultat.getInt("id_ue");
//				int idens = resultat.getInt("idens");
				String nom = resultat.getString("nom");
				String prenom = resultat.getString("prenom");
				String password = resultat.getString("password");
				String role = resultat.getString("role");
				
				UserModel user = new UserModel();
				user.setId_user(id_user);
				user.setNom(nom);
				user.setPrenom(prenom);
				user.setPassword(password);
				user.setRole(role);
				users.add(user);
				
			}
			
			connexion.close();
			statement.close();
			resultat.close();
		}
		catch(SQLException e) {
			throw new Exception("Erreur SQl : "+e.getMessage() );
		}
		
		return users;

		
		
	}

	@Override
	public void updateUser(int user_id, UserModel user) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletetUser(int user_id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<UserModel> voirUser(int user_id) throws Exception {
		// TODO Auto-generated method stub
		List<UserModel> users = new ArrayList<UserModel>();
		return users;
	}

}
