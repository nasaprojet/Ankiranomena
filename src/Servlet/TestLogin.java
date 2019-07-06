package Servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelDao.UserDao;

import java.security.MessageDigest;
import java.util.List;

import User.Classe;
import User.UserModel;
import config.BaseServlet;
import config.FactoryDao;

@WebServlet("/testLogin")
public class TestLogin extends BaseServlet{
	
	private UserDao userDao;

	private static final long serialVersionUID = 1L;
	
	public TestLogin() {
		super();
	}
	
	public void init() throws ServletException{
		
		FactoryDao factoryDao = FactoryDao.getInstance();
		userDao = factoryDao.getUserDao();
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/layout/login.jsp").forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		

		String login = request.getParameter("login");
		String password = request.getParameter("mdp");
		UserModel user = new UserModel();
		boolean valid= false;
//		String message = "message"+login+password;
//		List<UserModel> users=null;
		try {
//			boolean valid= false;
			List<UserModel> userSet = userDao.voirUser();
//			users= userSet;
			for(int i = 0; i<userSet.size();i++) {
				if(userSet.get(i).getNom().equals(login) && userSet.get(i).getPassword().equals(MD5(password))) {
					valid =true;
					user = userSet.get(i);
					break;
				}
			}
		}catch(Exception e) {
//			message+=e.getMessage();
		}
		
//		 throw new ServletException(MD5("123456")+"valide"+(users.get(3).getNom() != "RATREMA")+"message"+message+users.get(3).getNom()+users.get(3).getPassword());
		if(valid == true) {
			// stockena ato ilay user 
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			response.sendRedirect("accueil");
		}
		else if(valid == false) {
			response.sendRedirect("login");
		}
		
			
//		this.getServletContext().getRequestDispatcher("/WEB-INF/layout/accueil.jsp").forward(request, response);
	
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

