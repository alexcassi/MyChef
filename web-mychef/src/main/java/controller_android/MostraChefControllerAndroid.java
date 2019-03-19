package controller_android;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.UtenteManager;
import modello.Chef;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/MostraChefControllerAndroid")
public class MostraChefControllerAndroid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MostraChefControllerAndroid() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		String email = new String(request.getParameter("chef_email"));
		Chef c = UtenteManager.findChef(email);
		ObjectMapper om = new ObjectMapper();
		response.getWriter().append(om.writeValueAsString(c));		
	}

}
