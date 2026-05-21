package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Motorista;

import java.io.IOException;

/**
 * Servlet implementation class SvCadastrarMotorista
 */
@WebServlet("/SvCadastrarMotorista")
public class SvCadastrarMotorista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvCadastrarMotorista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
throws ServletException, IOException {

try {

String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String cnh = request.getParameter("cnh");
String telefone = request.getParameter("telefone");
String status = request.getParameter("status");
Motorista m =
      new Motorista(nome, cpf, cnh, telefone, status);

m.salvar();

response.sendRedirect(
      request.getContextPath()
      + "/SvListarMotorista");

} catch (Exception e) {
e.printStackTrace();
}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("cadastrarMotorista.jsp");
    }

}
