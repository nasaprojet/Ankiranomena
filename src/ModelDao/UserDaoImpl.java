package ModelDao;

import User.UserModel;

import config.FactoryDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao{
	
	FactoryDao factoryDao;
	
	public UserDaoImpl(FactoryDao factoryDao) {
		this.factoryDao = factoryDao;
	}

	@Override
	public void ajoutUser(UserModel user) {
		// TODO Auto-generated method stub
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connexion = factoryDao.getConnection();
			preparedStatement = connexion.prepareStatement("INSERT INTO public.user (nom,prenom,password,code,role) VALUES(?,?,?,?,?) ;");
			preparedStatement.setString(1, user.getNom());
			preparedStatement.setString(2, user.getPrenom());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getCode());
			preparedStatement.setString(5, user.getRole());
			
			preparedStatement.executeUpdate();
			
			preparedStatement.close();
			connexion.close();
			
		}catch(SQLException e) {
			
		}
		
	}

}
