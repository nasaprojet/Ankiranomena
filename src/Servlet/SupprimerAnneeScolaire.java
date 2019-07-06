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
import User.AnneeScolaire;
import User.Classe;
import config.FactoryDao;


@WebServlet("/suppr_anneescolaire")
public class SupprimerAnneeScolaire extends HttpServlet {
	private AnneeScolaireDao anneeScolaireDao;
	private static final long serialVersionUID = 1L;
       
   
    public SupprimerAnneeScolaire() {
        super();
       
    }

    public void init() throws ServletException{
    	FactoryDao factory = FactoryDao.getInstance();
    	anneeScolaireDao = factory.getAnneeScolaireDao();
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
				
				anneeScolaireDao.deleteAnneeScolaire(id_annee_scolaire);
				

				List<Classe> anneeScolaires = anneeScolaireDao.getListAnneeScolaire();
				request.setAttribute("anneeScolaires", anneeScolaires);
				
				
			}catch(Exception e) {
				throw new ServletException("ErreurSupr: "+e.getMessage());
			}
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/layout/list_as_classe.jsp").forward(request, response);
		}
		
	}

}
