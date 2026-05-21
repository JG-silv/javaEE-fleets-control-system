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
<title>Excluir Motorista - Logística Pro</title>
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

.btn-delete {
	padding: 15px 35px;
	border-radius: 12px;
	font-weight: 600;
	background: #dc3545;
	border: none;
	color: white;
	transition: 0.3s;
	width: 100%;
	text-transform: uppercase;
	letter-spacing: 1px;
}

.btn-delete:hover {
	background: #a71d2a;
	transform: translateY(-3px);
	box-shadow: 0 10px 20px rgba(220, 53, 69, 0.2);
}

footer {
	padding: 40px 0;
	color: #adb5bd;
	font-size: 0.85rem;
	text-align: center;
}

.nav-center {
	display: flex;
	gap: 10px;
}

#feedback-toast {
	position: fixed;
	top: 20px;
	right: 20px;
	z-index: 1050;
	display: none;
	background: #dc3545;
	color: white;
	padding: 15px 25px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>

	<div id="feedback-toast">Motorista removido com sucesso!</div>
<br>
	<div class="container mt-5">
		<div class="card-custom mx-auto text-center" style="max-width: 500px;">
			<div style="font-size: 3rem; margin-bottom: 10px;">⚠️</div>
			<h3 style="color: #002d72; font-weight: 700; margin-bottom: 10px;">Confirmar
				Exclusão</h3>
			<p class="text-muted mb-4">Você tem certeza que deseja excluir
				permanentemente o motorista abaixo?</p>

			<div
				class="p-3 mb-4 bg-light rounded-3 border-start border-danger border-4 text-start">
				<small class="text-uppercase fw-bold text-muted"
					style="font-size: 0.7rem;">Motorista Selecionado</small>
				<div class="fs-5 fw-bold text-dark"><%=m.getNome()%></div>
				<div class="text-muted small">
					CPF:
					<%=m.getCpf()%></div>
			</div>

			<form id="formExcluir"
				action="<%=request.getContextPath()%>/SvExcluirMotorista"
				method="post">
				<input type="hidden" name="id" value="<%=m.getId()%>">

				<button type="submit" class="btn-delete mb-3" id="btnConfirmar">Excluir
					Agora</button>
				<a href="<%=request.getContextPath()%>/SvListarMotorista"
					class="btn btn-light w-100"
					style="border-radius: 12px; padding: 12px;">Cancelar e Voltar</a>
			</form>
		</div>
	</div>

	<footer>
		José Gabriel - Logística Pro &copy; 2026<br> <small>Sistema
			de Gestão de Frotas</small>
	</footer>

	<script>
    document.getElementById('formExcluir').addEventListener('submit', function(e) {
        e.preventDefault();
        const btn = document.getElementById('btnConfirmar');
        btn.innerHTML = "Excluindo...";
        btn.style.opacity = "0.7";
        btn.disabled = true;

        // Envio via Fetch (AJAX) para ser igual ao editar
        fetch(this.action + '?id=<%=m.getId()%>', {
            method: 'POST'
        }).then(() => {
            // Feedback visual instantâneo
            const toast = document.getElementById('feedback-toast');
            toast.style.display = 'block';
            
            // Redireciona rápido após 1 segundo
            setTimeout(() => {
                window.location.href = '<%=request.getContextPath()%>/SvListarMotorista';
            }, 1000);
        }).catch(() => {
            alert('Erro ao excluir. Tente novamente.');
            btn.innerHTML = "Excluir Agora";
            btn.style.opacity = "1";
            btn.disabled = false;
        });
    });
</script>
</body>
</html>
