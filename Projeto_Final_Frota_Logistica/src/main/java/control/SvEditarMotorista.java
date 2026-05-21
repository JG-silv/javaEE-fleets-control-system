package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.Motorista;

import java.io.IOException;

@WebServlet("/SvEditarMotorista")
public class SvEditarMotorista extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Long id = Long.parseLong(request.getParameter("id"));

            Motorista motorista = Motorista.localizarPorId(id);

            if (motorista == null) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/SvListarMotorista"
                );

                return;
            }

            request.setAttribute("motorista", motorista);

            request.getRequestDispatcher("editarMotorista.jsp")
                   .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect(
                    request.getContextPath()
                    + "/SvListarMotorista"
            );
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Long id =
                    Long.parseLong(request.getParameter("id"));

            Motorista m =
                    Motorista.localizarPorId(id);

            if (m == null) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/SvListarMotorista"
                );

                return;
            }

            m.setNome(request.getParameter("nome"));
            m.setCpf(request.getParameter("cpf"));
            m.setStatus(request.getParameter("status"));
            m.setCnh(request.getParameter("cnh"));
            m.setTelefone(request.getParameter("telefone"));

            boolean sucesso = m.editar();

            if (sucesso) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/SvListarMotorista"
                );

            } else {

                request.setAttribute(
                        "erro",
                        "Erro ao editar motorista!"
                );

                request.setAttribute("motorista", m);

                request.getRequestDispatcher(
                        "editarMotorista.jsp"
                ).forward(request, response);
            }

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                    "erro",
                    "Dados inválidos!"
            );

            request.getRequestDispatcher(
                    "editarMotorista.jsp"
            ).forward(request, response);
        }
    }
}
