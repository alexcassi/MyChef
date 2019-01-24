package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpChefManager;

/**
 * Servlet implementation class SignUpChefControleer
 */
@WebServlet("/SignUpChefController")
public class SignUpChefController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpChefController() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("application/json");
		String nome = new String(request.getParameter("nome"));
		String cognome = new String(request.getParameter("cognome"));
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));

		try {
			if (SignUpChefManager.checkUsernameExists(email)) {
				response.getWriter().append(
						"{\"esito\": false, \"messaggio\": \"Attenzione! L'indirizzo email fornito corrisponde ad un utente già registrato.\"}");
			} else {
				SignUpChefManager.signUp(nome, cognome, email, password);
				response.getWriter().append("{\"esito\": true, \"messaggio\": \"ok\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("{\"esito\": true, \"messaggio\": \"" + e.getMessage() + "\"}");
		}
	}
}
