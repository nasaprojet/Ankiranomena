package Login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelDao.UserDao;

import java.security.MessageDigest;

import User.UserModel;
import config.BaseServlet;
import config.FactoryDao;

@WebServlet("/login")
public class Login extends BaseServlet{
	
	private UserDao userDao;

	private static final long serialVersionUID = 1L;
	
	public Login() {
		super();
	}
	
	public void init() throws ServletException{
		
		FactoryDao factoryDao = FactoryDao.getInstance();
		userDao = factoryDao.getUserDao();
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/layout/login.jsp").forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		UserModel user = new UserModel();
		user.setNom(nom);
		user.setPrenom(prenom);
		user.setPassword(MD5(password));
		user.setCode(password);
		user.setRole(role);
		boolean error = false;
		try {
			userDao.ajoutUser(user);
		}catch(Exception e) {
			error = true;
			throw new ServletException(e.getMessage());
		}
		// throw new ServletException("nom"+nom);
		if(error){
			throw new ServletException("error");
		}
		else{
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/accueil.jsp").forward(request, response);
		}
	}

	private String MD5(String password) {
		// TODO Auto-generated method stub
		//String password="bmw525TDS.";
				byte[] unencodedPassword = password.getBytes();
				MessageDigest md = null;
				try {
					md = MessageDigest.getInstance("MD5");
				} catch (Exception e) {}
				md.reset();
				md.update(unencodedPassword);
				byte[] encodedPassword = md.digest();
				StringBuffer buf = new StringBuffer();
				for (int i = 0; i < encodedPassword.length; i++) {
					if (((int) encodedPassword[i] & 0xff) < 0x10) {
						buf.append("0");
					}
					buf.append(Long.toString((int) encodedPassword[i] & 0xff, 16));
				}
				return (buf.toString());
	}
	
	

}
