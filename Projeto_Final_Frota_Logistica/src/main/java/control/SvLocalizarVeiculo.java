package control;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.Veiculo;

import java.io.IOException;
@WebServlet("/SvLocalizarVeiculo")
public class SvLocalizarVeiculo extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String placa = request.getParameter("placa");

            if (placa != null && !placa.isEmpty()) {

                Veiculo veiculo = Veiculo.localizarPlaca(placa);

                // carro encontrado
                if (veiculo != null) {

                    request.setAttribute("veiculo", veiculo);

                } 
                
                // carro não encontrado
                else {

                    request.setAttribute(
                        "erro",
                        "O Veículo não foi encontrado na nossa base de dados!"
                    );
                }
            }

            request.getRequestDispatcher("localizarVeiculo.jsp")
                   .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                "erro",
                "Erro ao localizar o veículo!"
            );

            request.getRequestDispatcher("localizarVeiculo.jsp")
                   .forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}