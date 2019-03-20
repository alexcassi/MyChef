package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OutputCreaOrdineController")
public class OutputCreaOrdineController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OutputCreaOrdineController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String risposta=new String(request.getParameter("contenuto"));
		Double totale=Double.valueOf(request.getParameter("totale"));
		String chef_mail=new String(request.getParameter("email_chef_request"));
		request.setAttribute("totale", totale);
		request.setAttribute("contenuto", risposta);
		request.setAttribute("chef_mail", chef_mail);
		request.getRequestDispatcher("nuovoOrdine.jsp").forward(request, response);
	}
}
