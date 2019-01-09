

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SignUpManager;

/**
 * Servlet implementation class SignUpControleer
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = new String (request.getParameter("nome"));
		String cognome = new String (request.getParameter("cognome"));
		String citta = new String (request.getParameter("citta"));
		String provincia = new String (request.getParameter("provincia"));
		String indirizzo = new String (request.getParameter("indirizzo"));
		String email = new String (request.getParameter("email"));
		String password = new String (request.getParameter("password"));
		request.getSession().removeAttribute("errorMessage1");
		if (SignUpManager.checkUsernameExists(email)){
			request.getSession().setAttribute("errorMessage1", "Attenzione! L'indirizzo email fornito corrisponde ad un utente già registrato.");
			request.getRequestDispatcher("/signup.jsp").include(request, response);
		}else{
			SignUpManager.signUp(nome, cognome, citta, provincia, indirizzo, email, password);
			RequestDispatcher rs = request.getRequestDispatcher("welcome.jsp"); 
			rs.forward(request, response);
		}
	 }
}



