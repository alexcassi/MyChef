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
@WebServlet("/LoginOrdineController")
public class LoginOrdineController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginOrdineController() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().invalidate();
		String emailRequest = new String(request.getParameter("email_chef_request"));
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));
		Cliente u = LoginManager.loginCliente(email, password);
		if (u != null) {
			request.getSession().setAttribute("cliente", u);
			request.setAttribute("email_chef_request", emailRequest);
			response.sendRedirect(response.encodeRedirectURL("creaOrdine.jsp"));
		} else {
			request.setAttribute("errorMessage", "Email o password errati.");
			request.getRequestDispatcher("loginOrdine.jsp").forward(request, response);
		}

	}

}
