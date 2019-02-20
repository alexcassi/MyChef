package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.UtenteManager;
import modello.Cliente;

/**
 * Servlet implementation class LeggiRicettaService
 */
@WebServlet("/IndirizzoClienteServlet")
public class IndirizzoClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndirizzoClienteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cliente c = UtenteManager.findCliente(request.getParameter("cliente_email"));
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		response.getWriter().append(om.writeValueAsString(c.getComune()));
		response.getWriter().append(om.writeValueAsString(c.getIndirizzo()));
		response.getWriter().append(om.writeValueAsString(c.getProvincia()));
	}

}
