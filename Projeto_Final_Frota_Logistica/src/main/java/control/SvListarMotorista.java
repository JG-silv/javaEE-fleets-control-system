package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import org.hibernate.Session;

import model.Motorista;
import util.HibernateUtil;

/**
 * Servlet implementation class SvListarMotorista
 */
@WebServlet("/SvListarMotorista")
public class SvListarMotorista extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SvListarMotorista() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Session session = HibernateUtil.getSessionFactory().openSession();

		List<Motorista> lista = session.createQuery("from Motorista", Motorista.class).list();

		session.close();

		request.setAttribute("lista", lista);

		request.getRequestDispatcher("listarMotorista.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
