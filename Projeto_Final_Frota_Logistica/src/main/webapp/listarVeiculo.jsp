<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Veiculo"%>
<%@ page import="java.util.List"%>
<%
    @SuppressWarnings("unchecked")
    List<Veiculo> lista = (List<Veiculo>) request.getAttribute("lista");
%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Listar Veículos - Logística Pro</title>

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
	padding: 60px 0;
	background: #fff;
	border-bottom: 1px solid #eee;
	margin-bottom: 30px;
	border-radius: 24px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
}

.brand-logo {
	color: #002d72;
	font-weight: 800;
	font-size: 2.5rem;
	margin-bottom: 1rem;
	display: block;
}

.card-text {
	color: #6c757d;
	margin-bottom: 1.5rem;
	font-size: 1.1rem;
	max-width: 600px;
}

.btn-action {
	padding: 12px 25px;
	border-radius: 12px;
	font-weight: 600;
	background: #002d72;
	border: none;
	color: white;
	text-decoration: none;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	transition: 0.3s;
	text-transform: uppercase;
	letter-spacing: 1px;
}

.btn-action:hover {
	background: #001a42;
	color: white;
	transform: translateY(-3px);
	box-shadow: 0 10px 20px rgba(0, 45, 114, 0.2);
}

.form-control {
	border-radius: 12px;
	padding: 12px 15px;
	border: 1px solid #dee2e6;
}

.feature-box {
	background: #fff;
	padding: 2rem;
	border-radius: 24px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
	transition: 0.3s;
	height: 100%;
	border: 1px solid #eee;
}

.feature-box:hover {
	border-color: #002d72;
	transform: translateY(-5px);
}

.icon-box {
	font-size: 2rem;
	color: #002d72;
	margin-bottom: 1rem;
}

footer {
	padding: 40px 0;
	color: #adb5bd;
	font-size: 0.85rem;
	text-align: center;
}

.badge-status {
	font-size: 0.75rem;
	padding: 5px 12px;
	border-radius: 20px;
	background: #eef2f7;
	color: #002d72;
	font-weight: 700;
}
</style>
</head>

<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark navbar-premium">
		<div class="container">
			<a class="brand-system" href="menuFrota.jsp"> <span class="brand-icon">
					<i class="bi bi-truck"></i>
			</span> <span class="d-flex flex-column"> <span class="brand-title">
						Logística Pro </span> <span class="brand-subtitle"> Gestão de
						Frotas Logísticas </span>

			</span>

			</a>

			<button class="navbar-toggler border-0 shadow-none" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSystem">

				<span class="navbar-toggler-icon"></span>

			</button>

			<div class="collapse navbar-collapse justify-content-between"
				id="navbarSystem">

				<div class="nav-center mx-auto">

					<!-- VEICULOS -->
					<div class="dropdown dropdown-premium">

						<button class="btn dropdown-toggle" data-bs-toggle="dropdown">

							<i class="bi bi-car-front-fill me-2"></i> Veículos

						</button>

						<div class="dropdown-menu">

							<div class="dropdown-title">Gestão de Veículos</div>

							<a href="cadastrarVeiculo.jsp" class="dropdown-item-custom">

								<i class="bi bi-plus-circle"></i> Cadastrar Veículo

							</a> <a href="localizarVeiculo.jsp" class="dropdown-item-custom">

								<i class="bi bi-search"></i> Localizar Veículo

							</a> <a href="editarVeiculo.jsp" class="dropdown-item-custom"> <i
								class="bi bi-pencil-square"></i> Editar Veículo

							</a> <a href="excluirVeiculo.jsp" class="dropdown-item-custom"> <i
								class="bi bi-trash3"></i> Excluir Veículo

							</a> <a href="<%=request.getContextPath()%>/SvListarVeiculo"
								class="dropdown-item-custom"> <i class="bi bi-list-ul"></i>
								Exibir Frota

							</a>

						</div>
					</div>

					<!-- MOTORISTAS -->
					<div class="dropdown dropdown-premium">

						<button class="btn dropdown-toggle" data-bs-toggle="dropdown">

							<i class="bi bi-person-badge-fill me-2"></i> Motoristas

						</button>

						<div class="dropdown-menu">

							<div class="dropdown-title">Gestão de Motoristas</div>

							<a href="cadastrarMotorista.jsp" class="dropdown-item-custom">

								<i class="bi bi-person-plus"></i> Cadastrar Motorista

							</a> <a href="<%=request.getContextPath()%>/SvListarMotorista"
								class="dropdown-item-custom"> <i class="bi bi-list-stars"></i>
								Exibir Motoristas

							</a> <a href="editarMotorista.jsp" class="dropdown-item-custom">

								<i class="bi bi-pencil"></i> Editar Motorista

							</a> <a href="excluirMotorista.jsp" class="dropdown-item-custom">

								<i class="bi bi-trash3"></i> Excluir Motorista

							</a>

						</div>
					</div>

					<!-- VIAGENS -->
					<div class="dropdown dropdown-premium">

						<button class="btn dropdown-toggle" data-bs-toggle="dropdown">

							<i class="bi bi-geo-alt-fill me-2"></i> Viagens

						</button>

						<div class="dropdown-menu">

							<div class="dropdown-title">Gestão de Viagens</div>

							<a href="cadastrarViagem.jsp" class="dropdown-item-custom"> <i
								class="bi bi-map"></i> Registrar Viagem

							</a> <a href="#" class="dropdown-item-custom"> <i
								class="bi bi-list-ul"></i> Exibir Viagens

							</a>

						</div>
					</div>

				</div>

				<div class="user-box">

					<div class="user-info">
						<strong>José Gabriel</strong>
					</div>

					<a href="menuFrota.jsp" class="btn btn-logout"> <i
						class="bi bi-house-door me-1"></i> Painel

					</a> <a href="index.html" class="btn btn-logout"> <i
						class="bi bi-box-arrow-right me-1"></i> Sair

					</a>

				</div>

			</div>
		</div>
	</nav>

	<div class="container">
		<!-- hero -->
		<div class="hero-section text-center">
			<br> <span class="brand-logo">Frota Disponível</span>
			<p class="card-text mx-auto">Gerencie e visualize todos os
				veículos cadastrados no sistema com facilidade.</p>

			<form method="get"
				action="<%=request.getContextPath()%>/SvListarVeiculo"
				class="row g-3 justify-content-center mt-2">
				<div class="col-md-5">
					<input type="text" name="filtro" class="form-control"
						placeholder="Buscar por marca, modelo ou placa...">
				</div>
				<div class="col-auto">
					<button type="submit" class="btn-action">
						<i class="bi bi-search me-2"></i> Filtrar
					</button>
				</div>
			</form>
		</div>

		<div class="row g-4">
			<% if (lista != null && !lista.isEmpty()) { 
            for (Veiculo v : lista) { %>
			<div class="col-md-4">
				<div class="feature-box">
					<div class="d-flex justify-content-between align-items-start">
						<div class="icon-box">
							<i class="bi bi-car-front-fill"></i>
						</div>
						<span class="badge-status">ATIVO</span>
					</div>
					<h3 class="h5 mb-1 text-uppercase fw-bold"><%= v.getMarca() %></h3>
					<p class="text-primary fw-semibold mb-3"><%= v.getModelo() %>
						<span class="text-muted">| <%= v.getAno() %></span><span
							class="text-muted"> | <%= v.getCor() %></span>
					</p>

					<div class="border-top pt-3">

						<div class="d-flex justify-content-between mb-2">

							<small class="text-muted text-uppercase fw-bold"
								style="font-size: 0.65rem;"> Placa </small> <span
								class="fw-bold text-dark"> <%= v.getPlaca() %>

							</span>

						</div>

						<div class="d-flex justify-content-between mb-2">

							<small class="text-muted text-uppercase fw-bold"
								style="font-size: 0.65rem;"> Tipo </small> <span
								class="text-dark"> <%= v.getTipo() %>

							</span>

						</div>

						<div class="d-flex justify-content-between mb-3">

							<small class="text-muted text-uppercase fw-bold"
								style="font-size: 0.65rem;"> Status </small> <span
								class="badge-status"> <%= v.getStatus() %>

							</span>

						</div>

						<div class="d-flex gap-2 mt-4">
							<a
								href="<%=request.getContextPath()%>/SvEditarVeiculo?id=<%=v.getId()%>"
								class="btn btn-outline-primary w-100"
								style="border-radius: 12px;"> <i
								class="bi bi-pencil-square me-1"></i> Editar

							</a> <a
								href="<%=request.getContextPath()%>/SvExcluirVeiculo?id=<%=v.getId()%>"
								class="btn btn-outline-danger w-100"
								style="border-radius: 12px;"
								onclick="return confirm('Deseja realmente excluir este veículo?');">
								<i class="bi bi-trash3 me-1"></i> Excluir

							</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			%>
			<div class="col-12 text-center py-5">
				<i class="bi bi-inbox text-muted" style="font-size: 3rem;"></i>
				<p class="text-muted mt-3">Nenhum veículo foi encontrado na base
					de dados.</p>
			</div>
			<%
        }
        %>
		</div>
	</div>

	<footer>
		<div>
			José Gabriel - Logística Pro &copy; 2026<br> <small>Sistema
				de Gestão de Frotas</small>
		</div>
	</footer>

	<script src="https://jsdelivr.net"></script>
</body>
</html>
