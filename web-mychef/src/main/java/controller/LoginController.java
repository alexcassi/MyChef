package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.LoginManager;
import modello.Chef;
import modello.Cliente;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));
		Chef c = LoginManager.loginChef(email, password);
		Cliente u = LoginManager.loginCliente(email, password);
		if (c != null) {
			request.getSession().setAttribute("chef", c);
			request.getSession().setAttribute("tipo", "chef");
			response.sendRedirect(response.encodeRedirectURL("profilo_chef.jsp"));
		} else if (u != null) {
			request.getSession().setAttribute("cliente", u);
			request.getSession().setAttribute("tipo", "cliente");
			response.sendRedirect(response.encodeRedirectURL("profilo_cliente.jsp"));
		} else {
			request.setAttribute("errorMessage", "Email o password errati.");
			response.sendRedirect(response.encodeRedirectURL("login.jsp"));
		}

	}

}
