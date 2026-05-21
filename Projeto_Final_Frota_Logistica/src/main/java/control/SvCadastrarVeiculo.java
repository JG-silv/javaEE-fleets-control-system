package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.Veiculo;

import java.io.IOException;

@WebServlet("/SvCadastrarVeiculo")
public class SvCadastrarVeiculo extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SvCadastrarVeiculo() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String placa = request.getParameter("placa");
            String modelo = request.getParameter("modelo");
            String marca = request.getParameter("marca");
            String anoStr = request.getParameter("ano");
            String tipo = request.getParameter("tipo");
            String capacidadeStr = request.getParameter("capacidade");
            String kmStr = request.getParameter("km");
            String status = request.getParameter("status");
            String combustivel = request.getParameter("combustivel");
            String cor = request.getParameter("cor");
            String chassi = request.getParameter("chassi");

            // VALIDAÇÃO
            if (placa == null || placa.isEmpty() ||
                modelo == null || modelo.isEmpty() ||
                marca == null || marca.isEmpty() ||
                anoStr == null || anoStr.isEmpty() ||
                capacidadeStr == null || capacidadeStr.isEmpty() ||
                kmStr == null || kmStr.isEmpty()) {

                request.setAttribute("erro", "Preencha todos os campos obrigatórios!");
                request.getRequestDispatcher("cadastrarVeiculo.jsp").forward(request, response);
                return;
            }

            int ano = Integer.parseInt(anoStr);
            double capacidade = Double.parseDouble(capacidadeStr);
            double km = Double.parseDouble(kmStr);

            Veiculo v = new Veiculo(
                    placa, modelo, marca, ano,
                    tipo, capacidade, km,
                    status, combustivel
            );

            v.setCor(cor);
            v.setChassi(chassi);

            boolean sucesso = v.salvar();

            if (sucesso) {
                response.sendRedirect(request.getContextPath() + "/SvListarVeiculo");
            } else {
                request.setAttribute("erro", "Erro ao salvar o veículo!");
                request.getRequestDispatcher("cadastrarVeiculo.jsp").forward(request, response);
            }

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute("erro", "Erro inesperado!");
            request.getRequestDispatcher("cadastrarVeiculo.jsp").forward(request, response);
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("cadastrarVeiculo.jsp");
    }
}