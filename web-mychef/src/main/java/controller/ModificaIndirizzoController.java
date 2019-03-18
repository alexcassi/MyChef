package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpChefManager;
import business.UtenteManager;
import modello.Chef;

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
			// rimette nella sessione lo chef col campo aggiornato riprendendolo dal db
			Chef c = UtenteManager.findChef(email);
			if (c != null) {
				request.getSession().setAttribute("chef", c);
				response.sendRedirect(response.encodeRedirectURL("profilo_chef.jsp"));
			} else {
				request.setAttribute("message", "chef non ritrovato nel database ");
				request.getRequestDispatcher("/messaggio_errore.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}

}
