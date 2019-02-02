package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RicettaManager;

/**
 * Servlet implementation class LeggiRicettaService
 */
@WebServlet("/RimuoviRicettaController")
public class RimuoviRicettaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RimuoviRicettaController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RicettaManager.removeRicetta(Integer.valueOf(request.getParameter("id_ricetta")));
		request.getRequestDispatcher("profilo_chef.jsp").include(request, response);
	}

}
