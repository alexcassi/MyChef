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
@WebServlet("/NuovoOrdineController")
public class NuovoOrdineController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NuovoOrdineController() {
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
		String dataS = new String(request.getParameter("date"));
		String oraS = new String(request.getParameter("ora"));
		Date data = new Date();
		try {
			data = new SimpleDateFormat("yyyy-MM-dd").parse(dataS);
		} catch (ParseException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		Date ora = new Date();
		try {
			 ora = new SimpleDateFormat("kk:mm").parse(oraS);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String comune = new String(request.getParameter("comune"));
		String provincia = new String(request.getParameter("provincia"));
		String indirizzo = new String(request.getParameter("indirizzo"));
		Double totale = Double.valueOf(request.getParameter("totale"));
		String note_cliente = new String(request.getParameter("note_cliente"));
		String cliente_mail = new String(request.getParameter("cliente_mail"));
		String chef_mail = new String(request.getParameter("chef_mail"));
		String contenuto_ordine = new String(request.getParameter("contenuto_ordine"));

		try {
			OrdineManager.newOrdine(data, ora, comune, provincia, indirizzo, totale, note_cliente, cliente_mail, chef_mail, contenuto_ordine);
			response.sendRedirect(response.encodeRedirectURL("grazie.jsp"));
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
		}
	}

}
