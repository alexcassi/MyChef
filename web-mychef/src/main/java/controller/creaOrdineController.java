package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.UtenteManager;
import modello.Chef;
import modello.Cliente;

/**
 * Servlet implementation class creaOrdineController
 */
@WebServlet("/creaOrdineController")
public class creaOrdineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public creaOrdineController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = new String(request.getParameter("email_chef_request"));
		try {
			Chef u = (Chef) request.getSession().getAttribute("chef");
			u = UtenteManager.findChef(u.getEmail());
			if (u!=null) {
				response.sendRedirect(response.encodeRedirectURL("no_chef.jsp"));
			}
		} catch (Exception e) {
			try {
				Cliente u = (Cliente) request.getSession().getAttribute("cliente");
				u = UtenteManager.findCliente(u.getEmail());
				request.setAttribute("email_chef_request", email);
				response.sendRedirect(response.encodeRedirectURL("creaOrdine.jsp"));
			} catch (Exception e2) {
				request.setAttribute("email_chef_request", email);
				response.sendRedirect(response.encodeRedirectURL("loginOrdine.jsp"));
			}
		}
	}

}
