package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import ModelDao.AnneeScolaireDao;
import ModelDao.AnneeScolaireDaoImpl;
import ModelDao.UserDao;
import ModelDao.UserDaoImpl;


public class FactoryDao {
	private String url;
	private String username;
	private String password;

	FactoryDao(String url, String username, String password) {
		this.url = url;
		this.username = username;
		this.password = password;
	}
	public String getAnneeU()
	{
		return ConfigBDD.getString("DaoFactory.4");
	}
	public int getIdAnneeU()
	{
		return Integer.parseInt(ConfigBDD.getString("DaoFactory.5"));
	}
	public static FactoryDao getInstance() {
		try {
			Class.forName(ConfigBDD.getString("DaoFactory.0"));
		} catch (ClassNotFoundException e) {
		}
		FactoryDao instance = new FactoryDao(ConfigBDD.getString("DaoFactory.1"),ConfigBDD.getString("DaoFactory.2"),ConfigBDD.getString("DaoFactory.3"));
		return instance;
	}

	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, username, password);
	}
	public UserDao getUserDao() {
		// TODO Auto-generated method stub
		return new UserDaoImpl(this);
	}
	public AnneeScolaireDao getAnneeScolaireDao() {
		// TODO Auto-generated method stub
		return new AnneeScolaireDaoImpl(this);
	}
	
	
	
}
