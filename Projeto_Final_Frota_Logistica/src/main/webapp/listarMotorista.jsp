<%@ page import="java.util.List, model.Motorista"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    @SuppressWarnings("unchecked")
    List<Motorista> lista = (List<Motorista>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Lista de Motoristas - Logística Pro</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://jsdelivr.net" rel="stylesheet">

<style>
body {
	background: #f8f9fa;
	font-family: 'Segoe UI', sans-serif;
}

.card-custom {
	background: #fff;
	border-radius: 24px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, .05);
	padding: 2rem;
	border: none;
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

.btn-edit-real {
	background: #002d72;
	color: white !important;
	border-radius: 10px;
	padding: 6px 12px;
	text-decoration: none;
	display: inline-block;
	font-size: 0.9rem;
	font-weight: 600;
}

.btn-delete-real {
	background: #dc3545;
	color: white !important;
	border-radius: 10px;
	border: none;
	padding: 6px 12px;
	font-size: 0.9rem;
	font-weight: 600;
}

#fast-toast {
	position: fixed;
	top: 20px;
	right: 20px;
	z-index: 9999;
	display: none;
	background: #198754;
	color: white;
	padding: 12px 25px;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
	font-weight: 500;
}
</style>
</head>
<body>

	<div id="fast-toast">Removido com sucesso!</div>

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
	<br>
	<div class="container">
		<div class="card-custom">
			<h3 class="mb-4" style="color: #002d72; font-weight: 700;">Motoristas</h3>

			<table class="table align-middle table-hover">
				<thead>
					<tr>
						<th>Nome</th>
						<th>CPF</th>
						<th class="text-center">Ações</th>
					</tr>
				</thead>
				<tbody>
					<% if(lista != null) { for (Motorista m : lista) { %>
					<tr id="linha-<%=m.getId()%>">
						<td class="fw-bold"><%=m.getNome()%></td>
						<td><%=m.getCpf()%></td>
						<td class="text-center">
							<!-- Botão Editar Sólido --> <a
							href="SvEditarMotorista?id=<%=m.getId()%>"
							class="btn-edit-real me-1"> <i class="bi bi-pencil-square"></i>
								Editar
						</a> <!-- Botão Excluir Sólido -->
							<button
								onclick="SvExcluirMotorista?id=<%=m.getId()%>', '<%=m.getNome()%>')"
								class="btn-delete-real">
								<i class="bi bi-trash"></i> Excluir
							</button>
						</td>
					</tr>
					<% } } %>
				</tbody>
			</table>
		</div>
	</div>

	<div class="modal fade" id="modalExcluir" tabindex="-1"
		aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered">
			<div class="modal-content border-0 shadow"
				style="border-radius: 15px;">
				<div class="modal-body text-center p-4">
					<p class="mb-4">
						Excluir <strong id="nomeM"></strong>?
					</p>
					<div class="d-flex gap-2">
						<button class="btn btn-light w-100" data-bs-dismiss="modal">Não</button>
						<button id="btnConfirm" class="btn btn-danger w-100">Sim</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://jsdelivr.net"></script>
</body>
</html>
