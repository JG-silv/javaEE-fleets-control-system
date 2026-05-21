<%@ page import="model.Veiculo, javax.persistence.*"%>
<% 
    Long id = Long.parseLong(request.getParameter("id")); 
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("frotaPU"); 
    EntityManager em = emf.createEntityManager(); 
    
    Veiculo v = em.find(Veiculo.class, id); 
    
    if (v == null) { 
        response.sendRedirect("SvVeiculo"); 
        return; 
    } 
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Excluir Veículo</title>
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
	margin-top: 2rem;
	margin-bottom: 30px;
	border-radius: 24px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
}

.brand-logo {
	color: #002d72;
	font-weight: 800;
	font-size: 2.5rem;
	display: block;
	margin-bottom: 1rem;
}

.card-text {
	color: #6c757d;
	margin-bottom: 2rem;
}

.container-main {
	max-width: 1000px;
	margin: 0 auto;
}

.resultado-card {
	background: #fff;
	border-radius: 20px;
	padding: 25px;
	margin-top: 25px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
}

.badge-status {
	font-size: 0.75rem;
	padding: 6px 12px;
	border-radius: 20px;
	background: #eef2f7;
	color: #002d72;
	font-weight: 700;
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
								class="bi bi-map"></i> Cadastrar Viagem

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

	<div class="container container-main">
		<div class="hero-section text-center">
			<span class="brand-logo">Confirmar Exclusão</span>
			<p class="card-text">Esta ação não pode ser desfeita!</p>

			<div class="resultado-card mx-auto" style="max-width: 600px;">
				<div class="alert alert-danger border-0">
					Tem certeza que deseja excluir o Veículo: <br> <strong
						class="fs-4"><%=v.getModelo()%></strong>
				</div>

				<form action="<%=request.getContextPath()%>/SvExcluirVeiculo"
					method="post" class="mt-4">
					<input type="hidden" name="acao" value="excluir"> <input
						type="hidden" name="id" value="<%=v.getId()%>">

					<div class="d-grid gap-2 d-md-block">
						<button type="submit" class="btn btn-danger btn-lg px-5">Sim,quero
							excluir</button>
						<a href="localizarVeiculo.jsp"
							class="btn btn-outline-secondary btn-lg px-5">Cancelar</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<footer>
		<div class="decoration">José Gabriel - Sistema de Gestão de
			Frotas &copy; 2026</div>
	</footer>

</body>
</html>
<% em.close(); %>
