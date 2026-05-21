<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Menu Gestão Logística - LogPro</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">
<link href="https://jsdelivr.net" rel="stylesheet">
<style>
body {
	background: #f4f7fb;
	font-family: 'Segoe UI', system-ui, sans-serif;
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
}

.btn-logout {
	padding: 8px 20px !important;
	border-radius: 12px !important;
	font-weight: 700 !important;
	background: #002d72 !important;
	border: 1px solid rgba(255, 255, 255, 0.1) !important;
	color: white !important;
	text-decoration: none !important;
	display: inline-flex !important;
	align-items: center !important;
	justify-content: center !important;
	transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
	text-transform: uppercase !important;
	letter-spacing: 1px !important;
	font-size: 0.85rem !important;
	box-shadow: 0 4px 12px rgba(220, 53, 69, 0.2) !important;
	cursor: pointer !important;
}

.btn-logout:hover {
	transform: translateY(-2px) !important;
	box-shadow: 0 6px 18px rgba(220, 53, 69, 0.35) !important;
	filter: brightness(1.15) !important;
}

.btn-logout:active {
	transform: translateY(-0.5px) !important;
	box-shadow: 0 3px 8px rgba(220, 53, 69, 0.2) !important;
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

.menu-card {
	border: none;
	border-radius: 15px;
	transition: all 0.3s ease;
	background: #fff;
	height: 100%;
}

.menu-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
}

.icon-box {
	width: 60px;
	height: 60px;
	border-radius: 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 1.5rem;
	margin-bottom: 1rem;
}

.bg-veiculo {
	background: rgba(13, 110, 253, 0.1);
	color: #0d6efd;
}

.bg-motorista {
	background: rgba(25, 135, 84, 0.1);
	color: #198754;
}

.bg-viagem {
	background: rgba(255, 193, 7, 0.1);
	color: #ffc107;
}

.action-link {
	text-decoration: none;
	color: #495057;
	display: flex;
	align-items: center;
	padding: 8px 0;
	border-bottom: 1px solid #f8f9fa;
	transition: 0.2s;
}

.action-link:hover {
	color: var(--accent);
	padding-left: 5px;
}

.action-link i {
	margin-right: 10px;
	font-size: 0.9rem;
}

footer {
	padding: 80px 0 90px;
	color: #808080;
}
</style>
</head>
<body>

	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark navbar-premium mb-5">
		<div class="container">
			<a class="brand-system" href="menuFrota.jsp"> <span
				class="brand-icon"> <i class="bi bi-truck"></i>
			</span> <span class="d-flex flex-column"> <span class="brand-title">
						Logística Pro </span> <span class="brand-subtitle"> Gestão de
						Frotas Logísticas </span>
			</span>
			</a>
			<div class="d-flex align-items-center gap-3">
				<span class="text-white small"> Olá, José </span>

				<a href="index.html" class="btn-logout"> <i
					class="bi bi-box-arrow-right me-1"></i> Sair
				</a>
			</div>
		</div>
	</nav>


	<div class="container">
		<h3 class="fw-bold text-dark mb-4">Painel</h3>

		<div class="row g-4">

			<div class="col-md-4">
				<div class="card menu-card shadow-sm p-4">
					<div class="icon-box bg-veiculo">
						<i class="bi bi-car-front-fill"></i>
					</div>
					<h5 class="fw-bold">Veículos</h5>
					<div class="mt-3">
						<a href="cadastrarVeiculo.jsp" class="action-link"><i
							class="bi bi-plus-circle"></i>Cadastar Veículo</a> <a
							href="localizarVeiculo.jsp" class="action-link"><i
							class="bi bi-search"></i> Localizar Veículo</a> <a
							href="editarVeiculo.jsp" class="action-link"><i
							class="bi bi-pencil"></i> Editar Veículo</a> <a
							href="excluirVeiculo.jsp" class="action-link"><i
							class="bi bi-trash3"></i> Excluir Veículo</a> <a
							href="listarVeiculo.jsp" class="action-link"><i
							class="bi bi-list-ul"></i>Exibir Frota de Veículos</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card menu-card shadow-sm p-4">
					<div class="icon-box bg-motorista">
						<i class="bi bi-person-badge-fill"></i>
					</div>
					<h5 class="fw-bold">Motoristas</h5>
					<div class="mt-3">
						<a href="cadastrarMotorista.jsp" class="action-link"><i
							class="bi bi-person-plus"></i> Cadastrar Motorista</a> <a
							href="listarMotorista.jsp" class="action-link"><i
							class="bi bi-graph-up-arrow"></i> Exibir Motorista</a> <a
							href="editarMotorista.jsp" class="action-link"><i
							class="bi bi-search"></i> Editar Motorista</a> <a
							href="excluirMotorista.jsp" class="action-link"><i
							class="bi bi-trash3"></i>Excluir Motorista</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card menu-card shadow-sm p-4">
					<div class="icon-box bg-viagem">
						<i class="bi bi-geo-alt-fill"></i>
					</div>
					<h5 class="fw-bold">Viagens</h5>
					<div class="mt-3">
						<a href="cadastrarViagem.jsp" class="action-link"><i
							class="bi bi-map"></i> Registrar Viagem</a> <a href="#"
							class="action-link"><i class="bi bi-list-ul"></i> Exibir
							Viagem</a> <a href="#" class="action-link"><i
							class="bi bi-search"></i> Editar Viagem</a> <a href="#"
							class="action-link"><i class="bi bi-trash3"></i>Excluir
							Viagem</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container text-center">
			<hr class="mb-4" style="opacity: 0.1;">
			<div class=" fw-bold">José Gabriel -
				Sistema de Gestão de Frotas &copy; 2026</div>
		</div>
	</footer>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>