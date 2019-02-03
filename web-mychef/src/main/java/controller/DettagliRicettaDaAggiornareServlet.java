package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import modello.Ricetta;
import utility.JPAUtility;

/**
 * Servlet implementation class LeggiRicettaService
 */
@WebServlet("/DettagliRicettaDaAggiornareServlet")
public class DettagliRicettaDaAggiornareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DettagliRicettaDaAggiornareServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EntityManager em = JPAUtility.getEntityManager();
		Ricetta r = em.find(Ricetta.class, Integer.valueOf(request.getParameter("id_ricetta")));
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		response.getWriter().append(om.writeValueAsString(r));
	}

}
