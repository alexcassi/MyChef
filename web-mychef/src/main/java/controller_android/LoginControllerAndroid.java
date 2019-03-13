package controller_android;

import java.io.IOException;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.LoginManager;
import modello.Chef;
import modello.Cliente;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginControllerAndroid")
public class LoginControllerAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginControllerAndroid() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));
		Chef c = LoginManager.loginChef(email, password);
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		if (c != null) {
			response.getWriter().append(om.writeValueAsString(c));
		} else {
			Cliente u = LoginManager.loginCliente(email, password);
			if (u != null) {
				response.getWriter().append(om.writeValueAsString(u));
			} else {
				TreeMap<Object, Object> risposta = new TreeMap<>();
				risposta.put("messaggio", "Email o password errati");
				response.getWriter().append(om.writeValueAsString(risposta));
			}
		}

	}

}
