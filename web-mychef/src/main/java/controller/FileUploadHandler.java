package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import business.UtenteManager;
import modello.Chef;

/**
 * Servlet to handle File upload request from Client
 * 
 */
@WebServlet("/upload")
public class FileUploadHandler extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private final String UPLOAD_DIRECTORY_PROFILE = "src/main/webapp/immagini_caricate/profili";
	private final String UPLOAD_DIRECTORY_RECIPE = "src/main/webapp/immagini_caricate/ricette";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("application/json");

		String tipo_immagine = new String();
		String valore_id = new String();
		String upload_directory = new String();
		String estensione = new String();
		String nome_file = new String();
		String email = new String();

		// process only if its multipart content
		if (ServletFileUpload.isMultipartContent(request)) {
			try {

				@SuppressWarnings("unchecked")
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

				for (FileItem item : multiparts) {
					if (item.isFormField()) {
						String name = item.getFieldName();
						String value = item.getString();
						if (name.equals("tipo_immagine")) {
							tipo_immagine = value;
						} else {
							if (name.equals("valore_id")) {
								valore_id = value;
								email = value;
							}
						}
					}
				}

				valore_id = valore_id.replace("@", "_");
				valore_id = valore_id.replace(".", "_");

				if (tipo_immagine.equals("profilo")) {
					upload_directory = UPLOAD_DIRECTORY_PROFILE;
				} else {
					upload_directory = UPLOAD_DIRECTORY_RECIPE;
				}

				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						String name = new File(item.getName()).getName();
						estensione = FilenameUtils.getExtension(name);
						nome_file = valore_id + '.' + estensione;
						item.write(new File(upload_directory + File.separator + nome_file));
					}
				}

			} catch (Exception ex) {
				ex.printStackTrace();
			}

			// aggiorna lo chef
			try {
				UtenteManager.updateProfileImage(email, nome_file);
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("message", "aggiornamento chef fallito: " + e);
				request.getRequestDispatcher("/messaggio_errore.jsp").forward(request, response);
			}

			// rimette nella sessione lo chef col campo aggiornato riprendendolo dal db
			Chef c = UtenteManager.findChef(email);
			if (c != null) {
				request.getSession().setAttribute("chef", c);
				response.sendRedirect(response.encodeRedirectURL("profilo_chef.jsp"));
			} else {
				request.setAttribute("message", "chef non ritrovato nel database ");
				request.getRequestDispatcher("/messaggio_errore.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("message", "Errore: richiesta non valida");
			request.getRequestDispatcher("/messaggio_errore.jsp").forward(request, response);
		}
	}

}