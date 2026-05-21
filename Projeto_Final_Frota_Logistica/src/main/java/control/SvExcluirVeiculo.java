package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.Veiculo;

import java.io.IOException;

@WebServlet("/SvExcluirVeiculo")
public class SvExcluirVeiculo extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Long id =
                    Long.parseLong(
                            request.getParameter("id")
                    );

            Veiculo v =
                    Veiculo.localizarPorId(id);

            if (v != null) {

                v.excluir();
            }

            response.sendRedirect(
                    request.getContextPath()
                    + "/SvListarVeiculo"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect(
                    request.getContextPath()
                    + "/SvListarVeiculo"
            );
        }
    }
}