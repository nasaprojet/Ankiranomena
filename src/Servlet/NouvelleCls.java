package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelDao.AnneeScolaireDao;
import ModelDao.ClasseDao;
import User.Classe;
import config.FactoryDao;

/**
 * Servlet implementation class NouvelleCls
 */
@WebServlet("/nouvelleCls")
public class NouvelleCls extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AnneeScolaireDao anneescolaireDao;  
    private ClasseDao classeDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NouvelleCls() {
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
		this.getServletContext().getRequestDispatcher("/WEB-INF/layout/acceuil.jsp").forward(request, response);	

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nom = request.getParameter("nom");
		String debut = request.getParameter("debut");
		String fin = request.getParameter("fin");
		
		
		String[] periodes = request.getParameterValues("periodes");
		String[] debutperiodes = request.getParameterValues("debutperiodes");
		String[] finperiodes = request.getParameterValues("finperiodes");
		
		
		String[] nomClasse = request.getParameterValues("nomClasse");
		String[] niveau = request.getParameterValues("niveau");
		String[] description = request.getParameterValues("description");
		
		Classe classe = new Classe();
		classe.setNom_as(nom);
		classe.setDebut(debut);
		classe.setFin(fin);
		classe.setDescription_as("");
		
		int id_annee_scolaire=-1;
		//throw new ServletException("nom"+ periodes[0]);

		
//		this.getServletContext().getRequestDispatcher("/WEB-INF/layout/admin.jsp").forward(request, response);
		
		//	 Insertions dns l tble nne scolire
		try {
			classeDao.ajoutAnneeScolaire(classe);
			
			id_annee_scolaire = classeDao.ajoutClasseById(classe);
			
			//throw new ServletException("id :"+id_annee_scolaire);
			
//			List<Classe> classevue = classeDao.listClasseAnneeScolaireVues();
//			request.setAttribute("classevue", classevue);
//			
			
		} catch(Exception e) {
			
			throw new ServletException("Erreur: "+e.getMessage());
			
		}
//		throw new ServletException("nom"+ nom+"idanne scolaire"+ idAjout);
		
		// insertion classes
		try {
			for (int i=0; i<nomClasse.length;i++) {
				Classe cls = new Classe();
				cls.setNom_classe(nomClasse[i]);
				cls.setNiveau(Integer.parseInt(niveau[i]));
				cls.setDescription_classe(description[i]);
				classeDao.insertClasseAjoutee(cls, id_annee_scolaire);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
