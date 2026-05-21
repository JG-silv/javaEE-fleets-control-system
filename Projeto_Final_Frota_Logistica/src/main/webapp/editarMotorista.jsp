<%@ page import="model.Motorista"%>
<%
    Motorista m = (Motorista) request.getAttribute("motorista");
    if (m == null) {
        response.sendRedirect(request.getContextPath() + "/SvListarMotorista");
        return;
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Editar Motorista - Logística Pro</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Segoe UI', system-ui, sans-serif;
	margin: 0;
	color: #333;
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

#feedback-toast {
	position: fixed;
	top: 20px;
	right: 20px;
	z-index: 1050;
	display: none;
	background: #28a745;
	color: white;
	padding: 15px 25px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>

	<div id="feedback-toast">Motorista atualizado com sucesso!</div>
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark navbar-premium">
		<div class="container">
			<a class="brand-system" href="menuFrota.jsp"> <span
				class="brand-icon"> <i class="bi bi-truck"></i>
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
	<div class="container mt-5">
		<div class="card-custom mx-auto" style="max-width: 600px;">
			<h3 style="color: #002d72; font-weight: 700; margin-bottom: 20px;">
				Editar Motorista -
				<%=m.getNome()%>
			</h3>

			<form id="formEditar"
				action="<%=request.getContextPath()%>/SvEditarMotorista"
				method="post">
				<input type="hidden" name="id" value="<%=m.getId()%>">

				<div class="mb-3">
					<label class="form-label">Nome</label> <input type="text"
						class="form-control" name="nome" value="<%=m.getNome()%>" required>
				</div>

				<div class="mb-3">
					<label class="form-label">CPF</label> <input type="text"
						class="form-control" name="cpf" value="<%=m.getCpf()%>" required>
				</div>

				<div class="mb-3">
					<label class="form-label">CNH</label> <input type="text"
						class="form-control" name="cnh" value="<%=m.getCnh()%>">
				</div>

				<div class="mb-3">
					<label class="form-label">Telefone</label> <input type="text"
						class="form-control" name="telefone" value="<%=m.getTelefone()%>">
				</div>

				<button type="submit" class="btn-update mb-3">Atualizar</button>
				<a href="<%=request.getContextPath()%>/SvListarMotorista"
					class="btn btn-light w-100"
					style="border-radius: 12px; padding: 12px;">Cancelar</a>
			</form>
		</div>
	</div>

	<footer>
		José Gabriel - Logística Pro &copy; 2026<br> <small>Sistema
			de Gestão de Frotas</small>
	</footer>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>

