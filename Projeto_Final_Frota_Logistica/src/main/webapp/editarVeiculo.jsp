<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.Veiculo"%>

<%
    Veiculo v = (Veiculo) request.getAttribute("veiculo");

    if (v == null) {

        response.sendRedirect(
            request.getContextPath() + "/SvListarVeiculo"
        );
        return;
        } 
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Editar Veículo - Logística Pro</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Segoe UI', system-ui, sans-serif;
	margin: 0;
	color: #333;
}

:root {
	--primary: #002d72;
	--secondary: #0d6efd;
	--dark: #001633;
	--light: #f4f7fb;
}

.navbar-premium {
	background: linear-gradient(135deg, #001633 0%, #002d72 55%, #0d6efd 100%);
	padding: 14px 0;
	box-shadow: 0 8px 30px rgba(0, 0, 0, .12);
	border-bottom: 1px solid rgba(255, 255, 255, .08);
	position: sticky;
	top: 0;
	z-index: 999;
}
.nav-center {
	display: flex;
	gap: 10px; 
}
.brand-system {
	display: flex;
	align-items: center;
	gap: 14px;
	text-decoration: none;
}

.brand-icon {
	width: 48px;
	height: 48px;
	border-radius: 14px;
	background: rgba(255, 255, 255, .12);
	display: flex;
	align-items: center;
	justify-content: center;
	color: #fff;
	font-size: 1.3rem;
}

.brand-title {
	color: #fff;
	font-weight: 800;
	font-size: 1.15rem;
}

.brand-subtitle {
	color: rgba(255, 255, 255, .65);
	font-size: .78rem;
}

.dropdown-premium .btn {
	border: none;
	background: rgba(255, 255, 255, .10);
	color: #fff;
	padding: 10px 16px;
	border-radius: 12px;
	font-weight: 600;
}

.dropdown-menu {
	border: none;
	border-radius: 18px;
	padding: 14px;
	min-width: 280px;
	box-shadow: 0 15px 45px rgba(0, 0, 0, .12);
}

.dropdown-item-custom {
	display: flex;
	align-items: center;
	gap: 12px;
	padding: 12px;
	border-radius: 12px;
	text-decoration: none;
	color: #343a40;
	transition: .2s;
	font-weight: 500;
}

.dropdown-item-custom:hover {
	background: #f4f7fb;
	color: #0d6efd;
	transform: translateX(4px);
}

.user-box {
	display: flex;
	align-items: center;
	gap: 14px;
}

.user-info {
	text-align: right;
	color: #fff;
}

.btn-logout {
	border: 1px solid rgba(255, 255, 255, .18);
	background: rgba(255, 255, 255, .08);
	color: #fff;
	border-radius: 12px;
	padding: 10px 14px;
}

.hero-section {
	padding: 50px 0;
}

.card-custom {
	background: #fff;
	padding: 2.5rem;
	border-radius: 24px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
	border: 1px solid #eee;
}

.form-label {
	font-weight: 600;
	color: #002d72;
}

.form-control, .form-select {
	border-radius: 12px;
	padding: 12px;
	border: 1px solid #dee2e6;
}

.form-control:focus, .form-select:focus {
	border-color: #002d72;
	box-shadow: 0 0 0 0.2rem rgba(0, 45, 114, 0.15);
}

.btn-update {
	padding: 15px 35px;
	border-radius: 12px;
	font-weight: 600;
	background: #002d72;
	border: none;
	color: white;
	transition: 0.3s;
	width: 100%;
	text-transform: uppercase;
	letter-spacing: 1px;
}

.btn-update:hover {
	background: #001a42;
	transform: translateY(-3px);
	box-shadow: 0 10px 20px rgba(0, 45, 114, 0.2);
}

footer {
	padding: 40px 0;
	color: #adb5bd;
	font-size: 0.85rem;
	text-align: center;
}
</style>

</head>

<body>
	<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-premium">
    <div class="container">
        <a class="brand-system" href="menuFrota.jsp">

    <span class="brand-icon">
        <i class="bi bi-truck"></i>
    </span>

    <span class="d-flex flex-column">

        <span class="brand-title">
            Logística Pro
        </span>

        <span class="brand-subtitle">
           Gestão de Frotas Logísticas
        </span>

    </span>

</a>

        <button class="navbar-toggler border-0 shadow-none"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSystem">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse justify-content-between"
             id="navbarSystem">

            <div class="nav-center mx-auto">

                <!-- VEICULOS -->
                <div class="dropdown dropdown-premium">

                    <button class="btn dropdown-toggle"
                            data-bs-toggle="dropdown">

                        <i class="bi bi-car-front-fill me-2"></i>
                        Veículos

                    </button>

                    <div class="dropdown-menu">

                        <div class="dropdown-title">
                            Gestão de Veículos
                        </div>

                        <a href="cadastrarVeiculo.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-plus-circle"></i>
                            Cadastrar Veículo

                        </a>

                        <a href="localizarVeiculo.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-search"></i>
                            Localizar Veículo

                        </a>

                        <a href="editarVeiculo.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-pencil-square"></i>
                            Editar Veículo

                        </a>

                        <a href="excluirVeiculo.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-trash3"></i>
                            Excluir Veículo

                        </a>

                        <a href="<%=request.getContextPath()%>/SvListarVeiculo"
                           class="dropdown-item-custom">

                            <i class="bi bi-list-ul"></i>
                            Exibir Frota

                        </a>

                    </div>
                </div>

                <!-- MOTORISTAS -->
                <div class="dropdown dropdown-premium">

                    <button class="btn dropdown-toggle"
                            data-bs-toggle="dropdown">

                        <i class="bi bi-person-badge-fill me-2"></i>
                        Motoristas

                    </button>

                    <div class="dropdown-menu">

                        <div class="dropdown-title">
                            Gestão de Motoristas
                        </div>

                        <a href="cadastrarMotorista.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-person-plus"></i>
                            Cadastrar Motorista

                        </a>

                        <a href="<%=request.getContextPath()%>/SvListarMotorista"
                           class="dropdown-item-custom">

                            <i class="bi bi-list-stars"></i>
                            Exibir Motoristas

                        </a>

                        <a href="editarMotorista.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-pencil"></i>
                            Editar Motorista

                        </a>

                        <a href="excluirMotorista.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-trash3"></i>
                            Excluir Motorista

                        </a>

                    </div>
                </div>

                <!-- VIAGENS -->
                <div class="dropdown dropdown-premium">

                    <button class="btn dropdown-toggle"
                            data-bs-toggle="dropdown">

                        <i class="bi bi-geo-alt-fill me-2"></i>
                        Viagens

                    </button>

                    <div class="dropdown-menu">

                        <div class="dropdown-title">
                            Gestão de Viagens
                        </div>

                        <a href="cadastrarViagem.jsp"
                           class="dropdown-item-custom">

                            <i class="bi bi-map"></i>
                            Cadastrar Viagem

                        </a>

                        <a href="#"
                           class="dropdown-item-custom">

                            <i class="bi bi-list-ul"></i>
                            Exibir Viagens

                        </a>

                    </div>
                </div>

            </div>

            <div class="user-box">

                <div class="user-info">
                    <strong>José Gabriel</strong>
                    
                </div>

                <a href="menuFrota.jsp"
                   class="btn btn-logout">

                    <i class="bi bi-house-door me-1"></i>
                    Painel

                </a>

                <a href="index.html"
                   class="btn btn-logout">

                    <i class="bi bi-box-arrow-right me-1"></i>
                    Sair

                </a>

            </div>

        </div>
    </div>
</nav>

<br>

	<div class="container hero-section">

		<div class="row justify-content-center">

			<div class="col-lg-10">

				<div class="card-custom">

					<h2 class="mb-4" style="color: #002d72; font-weight: 700;">

						<i class="bi bi-pencil-square me-2"></i> Editar Veículo -
						<%= v.getPlaca() %>

					</h2>

					<%
                    String erro =
                    (String) request.getAttribute("erro");

                    if (erro != null) {
                %>

					<div class="alert alert-danger">

						<%= erro %>

					</div>

					<%
                    }
                %>

					<form action="<%=request.getContextPath()%>/SvEditarVeiculo"
						method="post">

						<input type="hidden" name="id" value="<%=v.getId()%>">

						<!-- IDENTIFICAÇÃO -->

						<h5 class="mb-3" style="color: #002d72;">Identificação</h5>

						<div class="row">

							<div class="col-md-6 mb-3">

								<label class="form-label"> Placa </label> <input type="text"
									class="form-control" name="placa" value="<%=v.getPlaca()%>"
									required>

							</div>

							<div class="col-md-6 mb-3">

								<label class="form-label"> Chassi </label> <input type="text"
									class="form-control" name="chassi" value="<%=v.getChassi()%>">

							</div>

						</div>

						<!-- VEÍCULO -->

						<h5 class="mb-3 mt-4" style="color: #002d72;">Dados do
							Veículo</h5>

						<div class="row">

							<div class="col-md-4 mb-3">

								<label class="form-label"> Marca </label> <input type="text"
									class="form-control" name="marca" value="<%=v.getMarca()%>"
									required>

							</div>

							<div class="col-md-4 mb-3">

								<label class="form-label"> Modelo </label> <input type="text"
									class="form-control" name="modelo" value="<%=v.getModelo()%>"
									required>

							</div>

							<div class="col-md-4 mb-3">

								<label class="form-label"> Ano </label> <input type="number"
									class="form-control" name="ano" value="<%=v.getAno()%>"
									required>

							</div>

						</div>

						<div class="row">

							<div class="col-md-6 mb-3">

								<label class="form-label"> Tipo </label> <select
									class="form-select" name="tipo">

									<option
										<%= v.getTipo().equals("Carro")
                                ? "selected" : "" %>>

										Carro</option>

									<option
										<%= v.getTipo().equals("Caminhão")
                                ? "selected" : "" %>>

										Caminhão</option>

									<option
										<%= v.getTipo().equals("Van")
                                ? "selected" : "" %>>

										Van</option>

								</select>

							</div>

							<div class="col-md-6 mb-3">

								<label class="form-label"> Combustível </label> <select
									class="form-select" name="combustivel">

									<option
										<%= v.getCombustivel().equals("Gasolina")
                                ? "selected" : "" %>>

										Gasolina</option>

									<option
										<%= v.getCombustivel().equals("Diesel")
                                ? "selected" : "" %>>

										Diesel</option>

									<option
										<%= v.getCombustivel().equals("Flex")
                                ? "selected" : "" %>>

										Flex</option>

								</select>

							</div>

						</div>

						<!-- OPERAÇÃO -->

						<h5 class="mb-3 mt-4" style="color: #002d72;">Operação</h5>

						<div class="row">

							<div class="col-md-4 mb-3">

								<label class="form-label"> Status </label> <select
									class="form-select" name="status">

									<option
										<%= v.getStatus().equals("Disponível")
                                ? "selected" : "" %>>

										Disponível</option>

									<option
										<%= v.getStatus().equals("Em uso")
                                ? "selected" : "" %>>

										Em uso</option>

									<option
										<%= v.getStatus().equals("Manutenção")
                                ? "selected" : "" %>>

										Manutenção</option>

								</select>

							</div>

							<div class="col-md-4 mb-3">

								<label class="form-label"> Quilometragem </label> <input
									type="number" step="0.01" class="form-control" name="km"
									value="<%=v.getQuilometragem()%>">

							</div>

							<div class="col-md-4 mb-3">

								<label class="form-label"> Capacidade </label> <input
									type="number" step="0.01" class="form-control"
									name="capacidade" value="<%=v.getCapacidadeCarga()%>">

							</div>

						</div>

						<!-- EXTRA -->

						<h5 class="mb-3 mt-4" style="color: #002d72;">Extras</h5>

						<div class="row">

							<div class="col-md-6 mb-4">

								<label class="form-label"> Cor </label> <input type="text"
									class="form-control" name="cor" value="<%=v.getCor()%>">

							</div>

						</div>

						<button type="submit" class="btn-update">

							<i class="bi bi-check-circle me-2"></i> Atualizar Veículo

						</button>

					</form>

				</div>

			</div>

		</div>

	</div>

	<footer>

		<div>

			José Gabriel - Logística Pro &copy; 2026 <br> <small>
				Sistema de Gestão de Frotas </small>

		</div>

	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>