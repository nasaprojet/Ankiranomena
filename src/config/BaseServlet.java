package config;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/baseservlet")
public class BaseServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//protected String base_url=ServletURL.getString("BaseServlet.0"); //$NON-NLS-1$
	protected String catalina_path=System.getProperty("catalina.base");

    public BaseServlet() {
        super();
        //System.out.println("Catalina home:"+catalina_path);
       
    }
}
