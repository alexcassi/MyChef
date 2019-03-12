package controller_android;

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
@WebServlet("/SignUpChefControllerAndroid")
public class SignUpChefControllerAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpChefControllerAndroid() {
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
		String luogo_lavoro = new String(request.getParameter("luogo_lavoro"));		
		
		try {
			if (SignUpChefManager.checkUsernameExists(email)) {
				response.getWriter().append("Email già  utilizzata, usare un'altra mail.");
			} else {
				SignUpChefManager.signUp(nome, cognome, email, password, luogo_lavoro);
				response.getWriter().append("registrazione avvenuta");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}
}
