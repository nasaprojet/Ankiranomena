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


@WebServlet("/ajoutClasse")
public class AvantAjoutClasse extends HttpServlet {
	private AnneeScolaireDao anneeScolaireDao;
	private ClasseDao classeDao;
	private static final long serialVersionUID = 1L;
       
    
    public AvantAjoutClasse() {
        super();
        // TODO Auto-generated constructor stub
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
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/list_as_classe.jsp").forward(request, response);
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
			
			try {
				
				List<Classe> classes = classeDao.getClasseById(id_annee_scolaire);
				request.setAttribute("classes", classes);
				
			}catch(Exception e) {
				throw new ServletException("Erreur :"+e.getMessage());
			}
			
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/avantajoutclasse.jsp").forward(request, response);
		}
		
	}

}
