package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RicettaManager;
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
		request.setAttribute("ricetta", r);
		request.getRequestDispatcher("dettaglio_ricetta.jsp").include(request, response);
	}

}
