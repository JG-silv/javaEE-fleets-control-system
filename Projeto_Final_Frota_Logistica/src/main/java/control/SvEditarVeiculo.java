package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.Veiculo;

import java.io.IOException;

@WebServlet("/SvEditarVeiculo")
public class SvEditarVeiculo extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Long id = Long.parseLong(request.getParameter("id"));

            Veiculo veiculo = Veiculo.localizarPorId(id);

            if (veiculo == null) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/SvListarVeiculo"
                );

                return;
            }

            request.setAttribute("veiculo", veiculo);

            request.getRequestDispatcher("editarVeiculo.jsp")
                   .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect(
                    request.getContextPath()
                    + "/SvListarVeiculo"
            );
        }
    }
     
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Long id =
                    Long.parseLong(request.getParameter("id"));

            Veiculo v =
                    Veiculo.localizarPorId(id);

            if (v == null) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/SvListarVeiculo"
                );

                return;
            }

            v.setPlaca(request.getParameter("placa"));
            v.setModelo(request.getParameter("modelo"));
            v.setMarca(request.getParameter("marca"));
            v.setAno(
                    Integer.parseInt(
                            request.getParameter("ano")
                    )
            );

            v.setCor(request.getParameter("cor"));
            v.setTipo(request.getParameter("tipo"));

            v.setCapacidadeCarga(
                    Double.parseDouble(
                            request.getParameter("capacidade")
                    )
            );

            v.setStatus(request.getParameter("status"));

            v.setQuilometragem(
                    Double.parseDouble(
                            request.getParameter("km")
                    )
            );

            v.setCombustivel(
                    request.getParameter("combustivel")
            );

            v.setChassi(
                    request.getParameter("chassi")
            );

            boolean sucesso = v.editar();

            if (sucesso) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/SvListarVeiculo"
                );

            } else {

                request.setAttribute(
                        "erro",
                        "Erro ao editar veículo!"
                );

                request.setAttribute("veiculo", v);

                request.getRequestDispatcher(
                        "editarVeiculo.jsp"
                ).forward(request, response);
            }

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                    "erro",
                    "Dados inválidos!"
            );

            request.getRequestDispatcher(
                    "editarVeiculo.jsp"
            ).forward(request, response);
        }
    }
}