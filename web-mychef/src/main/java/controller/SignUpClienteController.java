package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpClienteManager;
import modello.Cliente;

/**
 * Servlet implementation class SignUpClienteControleer
 */
@WebServlet("/SignUpClienteController")
public class SignUpClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpClienteController() {
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

		try {
			if (SignUpClienteManager.checkUsernameExists(email)) {
				request.setAttribute("errorMessage", "Email già  utilizzata, usare un'altra mail.");
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			} else {
				Cliente u = SignUpClienteManager.signUp(nome, cognome, comune, provincia, indirizzo, email, password);
				request.getSession().setAttribute("cliente", u);
				response.sendRedirect(response.encodeRedirectURL("profilo_cliente.jsp"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}
}
