package controller_android;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.SignUpClienteManager;

/**
 * Servlet implementation class SignUpClienteControleer
 */
@WebServlet("/SignUpClienteControllerAndroid")
public class SignUpClienteControllerAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpClienteControllerAndroid() {
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
		String comune = new String(request.getParameter("comune"));
		String provincia = new String(request.getParameter("provincia"));
		String indirizzo = new String(request.getParameter("indirizzo"));
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));

		ObjectMapper om = new ObjectMapper();

		try {
			if (SignUpClienteManager.checkUsernameExists(email)) {
				response.getWriter().append(om.writeValueAsString("Email già  utilizzata, usare un'altra mail."));
			} else {
				SignUpClienteManager.signUp(nome, cognome, comune, provincia, indirizzo, email, password);
				response.getWriter().append(om.writeValueAsString("registrazione avvenuta"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append(om.writeValueAsString("Errore interno. Riprovare. Se persiste contattarci"));
		}
	}
}
