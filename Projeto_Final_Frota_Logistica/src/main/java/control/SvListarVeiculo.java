package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import model.Veiculo;
/**
 * Servlet implementation class SvListarVeiculo
 */
@WebServlet("/SvListarVeiculo")
public class SvListarVeiculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvListarVeiculo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String status = request.getParameter("status");
        String tipo = request.getParameter("tipo");

        List<Veiculo> lista;

        if ((status != null && !status.isEmpty()) ||
            (tipo != null && !tipo.isEmpty())) {

            lista = Veiculo.filtrar(status, tipo);

        } else {
            lista = Veiculo.listarTodos();
        }

        request.setAttribute("lista", lista);

        request.getRequestDispatcher("listarVeiculo.jsp")
               .forward(request, response);
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
