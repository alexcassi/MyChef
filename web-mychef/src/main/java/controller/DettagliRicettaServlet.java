package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RicettaManager;
import modello.Chef;
import modello.Ricetta;

/**
 * Servlet implementation class LeggiRicettaService
 */
@WebServlet("/DettagliRicettaServlet")
public class DettagliRicettaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DettagliRicettaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Ricetta r = RicettaManager.findRicetta(Integer.valueOf(request.getParameter("id_ricetta")));
		Chef u = (Chef) request.getSession().getAttribute("chef");
		request.setAttribute("ricetta", r);
		if((r.getChef().getEmail()).equals(u.getEmail())){
			//lo chef della sessione è il proprietario della ricetta
			request.getRequestDispatcher("dettaglio_ricetta.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("mostra_ricetta.jsp").forward(request, response);
		}
	}

}
