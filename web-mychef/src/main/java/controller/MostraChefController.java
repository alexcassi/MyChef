package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.UtenteManager;
import modello.Chef;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/MostraChefController")
public class MostraChefController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MostraChefController() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		String email = new String(request.getParameter("chef_email"));
		Chef c = UtenteManager.findChef(email);
		if (c != null) {
			request.setAttribute("requested_chef", c);
			request.getRequestDispatcher("mostra_chef.jsp").forward(request, response);
			//response.sendRedirect(response.encodeRedirectURL("mostra_chef.jsp"));
		} else {
			request.setAttribute("message", "Errore interno. Riprovare. Se persiste contattarci");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

}
