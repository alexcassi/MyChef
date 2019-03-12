package controller_android;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.RicettaManager;
import modello.Ricetta;

/**
 * Servlet implementation class LeggiRicettaService
 */
@WebServlet("/DettagliRicettaServletAndroid")
public class DettagliRicettaServletAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DettagliRicettaServletAndroid() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Ricetta r = RicettaManager.findRicetta(Integer.valueOf(request.getParameter("id_ricetta")));
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		response.getWriter().append(om.writeValueAsString(r));
	}

}
