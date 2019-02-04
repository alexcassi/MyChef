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
 * Servlet implementation class LoginController
 */
@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileController() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Chef c;
		try {
			Chef x = (Chef) request.getSession().getAttribute("chef");
			c = UtenteManager.findChef(x.getEmail());
			if (c!=null) {
				response.sendRedirect(response.encodeRedirectURL("profilo_chef.jsp"));
			}
		} catch (Exception e) {
			try {
				Cliente z = (Cliente) request.getSession().getAttribute("cliente");
				Cliente u = UtenteManager.findCliente(z.getEmail());
				response.sendRedirect(response.encodeRedirectURL("profilo_cliente.jsp"));
			} catch (Exception e2) {
				response.getWriter().append("Devi ancora fare il login!");
			}
		}
	}

}
