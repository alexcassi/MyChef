package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpChefManager;
import modello.Ricetta;

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
		Ricetta nuova_ricetta = new Ricetta();
		nuova_ricetta.setNome_ricetta(request.getParameter("nome_ricetta"));
		nuova_ricetta.setIngredienti(request.getParameter("ingredienti"));
		nuova_ricetta.setTempo_preparazione(request.getParameter("tempo_preparazione"));
		nuova_ricetta.setPrezzo(Double.valueOf(request.getParameter("prezzo")));

		try {
			if (SignUpChefManager.checkUsernameExists(email)) {
				response.getWriter().append(
						"{\"esito\": false, \"messaggio\": \"Attenzione! L'indirizzo email fornito corrisponde ad un utente già registrato.\"}");
			} else {
				SignUpChefManager.signUp(nome, cognome, email, password, nuova_ricetta);
				response.getWriter().append("{\"esito\": true, \"messaggio\": \"ok\"}");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("{\"esito\": false, \"messaggio\": \"" + e.getMessage() + "\"}");
		}
	}
}
