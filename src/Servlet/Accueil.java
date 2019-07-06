package Servlet;

import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelDao.AnneeScolaireDao;
import ModelDao.ClasseDao;
import User.AnneeScolaire;
import User.Classe;
import config.FactoryDao;

/**
 * Servlet implementation class Accueil
 */
@WebServlet("/accueil")
public class Accueil extends HttpServlet {
	
	private AnneeScolaireDao anneescolaireDao;
	private ClasseDao classeDao;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accueil() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() throws ServletException{
    	FactoryDao factoryDao = FactoryDao.getInstance();
    	anneescolaireDao = factoryDao.getAnneeScolaireDao();
    	classeDao = factoryDao.getClasseDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		request.setCharacterEncoding("UTF-8");
				
		HttpSession session = request.getSession();
				
		if(session.getAttribute("user")==null) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/login.jsp").forward(request, response);
		}
		else {
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/accueil.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user")==null) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/login.jsp").forward(request, response);
		}
		else {
			
			String nom_annee_scolaire = request.getParameter("nom_annee_scolaire");
			String debut = request.getParameter("debut");
			String fin = request.getParameter("fin");
			String description_as = request.getParameter("description_annee_scolaire");
//			String nom_classe = request.getParameter("nom_classe");
//			int niveau = Integer.parseInt(request.getParameter("niveau"));
//			String description_classe = request.getParameter("description_classe");
			
			Classe classe = new Classe();
			classe.setNom_as(nom_annee_scolaire);
			classe.setDebut(debut);
			classe.setFin(fin);
			classe.setDescription_as(description_as);
//			classe.setNom_classe(nom_classe);
//			classe.setNiveau(niveau);
//			classe.setDescription_classe(description_classe);
			
			try {
				classeDao.ajoutAnneeScolaire(classe);
//				anneescolaireDao.ajoutClasse(classe);
				
				List<Classe> classevue = classeDao.listClasseAnneeScolaireVues();
				request.setAttribute("classevue", classevue);
				
			}catch(Exception e) {
				throw new ServletException("E: "+e.getMessage());
			}
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/list_as_classe.jsp").forward(request, response);
			
		}
		
		
	}

}
