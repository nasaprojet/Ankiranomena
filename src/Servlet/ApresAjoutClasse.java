package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelDao.AnneeScolaireDao;
import ModelDao.ClasseDao;
import User.Classe;
import config.FactoryDao;


@WebServlet("/apresajoutclasse")
public class ApresAjoutClasse extends HttpServlet {
	private AnneeScolaireDao anneeScolaireDao;
	private ClasseDao classeDao;
	
	private static final long serialVersionUID = 1L;
       
   
    public ApresAjoutClasse() {
        super();
        
    }
    
    public void init() throws ServletException{
    	FactoryDao factoryDao = FactoryDao.getInstance();
    	anneeScolaireDao = factoryDao.getAnneeScolaireDao();
    	classeDao = factoryDao.getClasseDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user")==null) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/login.jsp").forward(request, response);
		}
		else {
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/avantajoutclasse.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user")==null) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/login.jsp").forward(request, response);
		}
		else {
			
			int id_annee_scolaire = Integer.parseInt(request.getParameter("id_annee_scolaire"));
			String nom_classe_ajoute = request.getParameter("nom_classe_ajoute");
			int niveau_ajoute = Integer.parseInt(request.getParameter("niveau_ajoute"));
			String description_ajoute = request.getParameter("description_ajoute");
			
			Classe classe = new Classe();
			classe.setId_annee_scolaire(id_annee_scolaire);
			classe.setNom_classe(nom_classe_ajoute);
			classe.setNiveau(niveau_ajoute);
			classe.setDescription_classe(description_ajoute);
			
			try {
				
				classeDao.insertClasseAjoutee(classe,id_annee_scolaire);
				
				List<Classe> classevue = classeDao.listClasseAnneeScolaireVues();
				request.setAttribute("classevue", classevue);
				
			}catch(Exception e) {
				throw new ServletException("Erreur: "+e.getMessage());
			}
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/list_as_classe.jsp").forward(request, response);
		}
	}

}
