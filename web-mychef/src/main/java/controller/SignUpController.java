package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpManager;
import utility.JPAUtility;

/**
 * Servlet implementation class SignUpControleer
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpController() {
		super();
		// TODO Auto-generated constructor stub
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
		String citta = new String(request.getParameter("citta"));
		String provincia = new String(request.getParameter("provincia"));
		String indirizzo = new String(request.getParameter("indirizzo"));
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));
		request.getSession().removeAttribute("errorMessage1");
		try {
			if (SignUpManager.checkUsernameExists(email)) {
				response.getWriter().append(
						"{\"esito\": false, \"messaggio\": \"Attenzione! L'indirizzo email fornito corrisponde ad un utente già registrato.\"}");
			} else {
				SignUpManager.signUp(nome, cognome, citta, provincia, indirizzo, email, password);
				response.getWriter().append("{\"esito\": true, \"messaggio\": \"ok\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("{\"esito\": true, \"messaggio\": \"" + e.getMessage() + "\"}");
		}
	}
}
