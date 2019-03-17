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
 * Servlet implementation class LeggiRicettaService
 */
@WebServlet("/RimuoviRicettaControllerAndroid")
public class RimuoviRicettaControllerAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RimuoviRicettaControllerAndroid() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper om = new ObjectMapper();
		try {
			RicettaManager.removeRicetta(Integer.valueOf(request.getParameter("id_ricetta")));
			response.getWriter().append(om.writeValueAsString("ok"));
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append(om.writeValueAsString("error"));
		}
	}

}
