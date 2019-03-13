package controller_android;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.RicettaManager;

/**
 * Servlet implementation class RicettaController
 */
@WebServlet("/AggiornaRicettaControllerAndroid")
public class AggiornaRicettaControllerAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AggiornaRicettaControllerAndroid() {
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
		String nome_ricetta = new String(request.getParameter("nome_ricetta"));
		String ingredienti = new String(request.getParameter("ingredienti"));
		String tempo_preparazione = new String(request.getParameter("tempo_preparazione"));
		Double prezzo = new Double(request.getParameter("prezzo"));
		Integer id = Integer.valueOf(request.getParameter("id"));

		ObjectMapper om = new ObjectMapper();

		try {
			RicettaManager.updateRicetta(id, nome_ricetta, ingredienti, tempo_preparazione, prezzo);
			response.getWriter().append(om.writeValueAsString("ricetta aggiornata"));
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append(om.writeValueAsString("Errore interno. Riprovare. Se persiste contattarci"));
		}
	}

}
