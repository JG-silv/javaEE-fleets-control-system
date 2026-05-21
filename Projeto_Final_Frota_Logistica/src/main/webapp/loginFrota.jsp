<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Login - Logística Pro</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css"
	rel="stylesheet">
<style>
:root {
	--primary: #002d72;
	--secondary: #0d6efd;
	--dark: #001633;
	--light: #f4f7fb;
}

body {
	background: linear-gradient(135deg, #f4f7fb 0%, #eef3ff 100%);
	min-height: 100vh;
	font-family: 'Segoe UI', system-ui, sans-serif;
	margin: 0;
	color: #333;
	display: flex;
	flex-direction: column;
}

.navbar-premium {
	background: linear-gradient(135deg, #001633 0%, #002d72 55%, #0d6efd 100%);
	padding: 14px 0;
	box-shadow: 0 8px 30px rgba(0, 0, 0, .12);
	border-bottom: 1px solid rgba(255, 255, 255, .08);
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

.login-wrapper {
	flex: 1;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 40px 20px;
}

.login-card {
	width: 100%;
	max-width: 430px;
	padding: 2.8rem;
	border-radius: 28px;
	background: #fff;
	box-shadow: 0 25px 60px rgba(0, 0, 0, .08);
	border: 1px solid rgba(0, 0, 0, .04);
}

.brand-logo {
	color: var(--primary);
	font-weight: 800;
	font-size: 2rem;
}

.form-control {
	padding: 14px 16px;
	border-radius: 14px;
	border: 1px solid #dee2e6;
	background: #fff;
}

.form-control:focus {
	box-shadow: 0 0 0 4px rgba(13, 110, 253, 0.10);
	border-color: var(--secondary);
}

.input-group-text {
	border-radius: 14px 0 0 14px;
	background: #fff;
}

.btn-login {
	padding: 14px;
	border-radius: 14px;
	font-weight: 700;
	background: var(--primary);
	border: none;
	transition: .3s;
	text-transform: uppercase;
	letter-spacing: .5px;
}

.btn-login:hover {
	background: #001a42;
	transform: translateY(-2px);
	box-shadow: 0 12px 24px rgba(0, 45, 114, .18);
}

footer {
	padding: 20px;
}

.decoration {
	color: #adb5bd;
	font-size: .85rem;
	text-align: center;
}
</style>
</head>
<body>

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
		</div>
	</nav>

	<!-- LOGIN -->
	<div class="login-wrapper">

		<div class="login-card">

			<div class="text-center mb-4">

				<div class="brand-logo mb-2">
					<i class="bi bi-shield-lock"></i>
				</div>

				<h3 class="fw-bold">Acesso ao Painel</h3>

				<p class="text-muted">Insira suas credenciais!</p>

			</div>

			<% 
        String erro = request.getParameter("erro");
        if (erro != null) { 
        %>

			<div class="alert alert-danger d-flex align-items-center rounded-4">

				<i class="bi bi-exclamation-triangle-fill me-2"></i>

				<div>Usuário ou senha inválidos.</div>

			</div>

			<% } %>

			<form action="SvLoginFrota" method="post">

				<div class="mb-3">

					<label class="form-label fw-semibold"> Usuário </label>

					<div class="input-group">

						<span class="input-group-text border-end-0"> <i
							class="bi bi-person"></i>
						</span> <input type="text" name="usuario"
							class="form-control border-start-0"
							placeholder="Ex: Admin" required>

					</div>

				</div>

				<div class="mb-4">

					<label class="form-label fw-semibold"> Senha </label>

					<div class="input-group">

						<span class="input-group-text border-end-0"> <i
							class="bi bi-lock"></i>
						</span> <input type="password" name="senha"
							class="form-control border-start-0"
							placeholder="Ex: 000" required>

					</div>

				</div>

				<button type="submit" class="btn btn-primary btn-login w-100">

					<i class="bi bi-box-arrow-in-right me-2"></i> Entrar no Painel

				</button>

			</form>

		</div>

	</div>

	<footer>
		<div class="decoration">José Gabriel - Sistema de Gestão de
			Frotas &copy; 2026</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
