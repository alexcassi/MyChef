package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.OrdineManager;

/**
 * Servlet implementation class RicettaController
 */
@WebServlet("/AggiornaOrdineController")
public class AggiornaOrdineController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AggiornaOrdineController() {
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
		Date data = null;
		try {
			data = new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("data"));
		} catch (ParseException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		Date ora = null;
		try {
			ora = new SimpleDateFormat("kk-mm").parse(request.getParameter("ora"));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String comune = new String(request.getParameter("comune"));
		String provincia = new String(request.getParameter("provincia"));
		String indirizzo = new String(request.getParameter("indirizzo"));
		Double totale = new Double(request.getParameter("totale"));
		String note_cliente = new String(request.getParameter("note_cliente"));

		Integer id = Integer.valueOf(request.getParameter("id"));

		try {
			OrdineManager.updateOrdine(id, data, ora, comune, provincia, indirizzo, totale, note_cliente);
			response.sendRedirect(response.encodeRedirectURL("temp.jsp"));
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}

}
