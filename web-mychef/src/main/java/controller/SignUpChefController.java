package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpChefManager;
import modello.Chef;
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
				request.getSession().setAttribute("errorMessage", "Email già  utilizzata, usare un'altra mail.");
				request.setAttribute("nome", nome);
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			} else {
				Chef c = SignUpChefManager.signUp(nome, cognome, email, password, nuova_ricetta);
				request.getSession().setAttribute("errorMessage", "");
				request.getSession().setAttribute("chef", c);
				request.getRequestDispatcher("profilo_chef.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}
}
