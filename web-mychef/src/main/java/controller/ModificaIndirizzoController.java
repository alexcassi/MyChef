package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RicettaManager;
import business.SignUpChefManager;

/**
 * Servlet implementation class RicettaController
 */
@WebServlet("/ModificaIndirizzoController")
public class ModificaIndirizzoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ModificaIndirizzoController() {
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
		String luogo_lavoro = new String(request.getParameter("luogo_lavoro"));

		String email = new String(request.getParameter("chef_email"));

		try {
			SignUpChefManager.modificaIndirizzo(email, luogo_lavoro);
			response.sendRedirect(response.encodeRedirectURL("profilo_chef.jsp"));
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}

}
