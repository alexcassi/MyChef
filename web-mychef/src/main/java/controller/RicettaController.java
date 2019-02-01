package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import business.RicettaManager;
import business.SignUpChefManager;
import modello.Ricetta;

/**
 * Servlet implementation class RicettaController
 */
@WebServlet("/RicettaController")
public class RicettaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RicettaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("application/json");
		String nome_ricetta = new String(request.getParameter("nome_ricetta"));
		String ingredienti = new String(request.getParameter("ingredienti"));
		String tempo_preparazione = new String(request.getParameter("tempo_preparazione"));
		Double prezzo = new Double(request.getParameter("prezzo"));
		try {
				RicettaManager.addRicetta( nome_ricetta,  ingredienti,  tempo_preparazione,  prezzo);
				request.getSession().setAttribute("OKMessage", "La ricetta è stata aggiunta");
//				request.getRequestDispatcher("ricette.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append("Errore interno. Riprovare. Se persiste contattarci");
	}}

}
