package control;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SvLoginFrota")
public class SvLoginFrota extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.sendRedirect("loginFrota.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");

		if ("admin".equals(usuario) && "123".equals(senha)) {
			response.sendRedirect("menuFrota.jsp");
		} else {
			response.sendRedirect("loginFrota.jsp?erro=1");
		}
	}
}