<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Veículo - Logística Pro</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body { 
            background-color: #f8f9fa; 
            font-family: 'Segoe UI', system-ui, sans-serif; 
            margin: 0; 
            color: #333; 
        }

       :root{
    --primary:#002d72;
    --secondary:#0d6efd;
    --dark:#001633;
    --light:#f4f7fb;
}

.navbar-premium{
    background: linear-gradient(135deg, #001633 0%, #002d72 55%, #0d6efd 100%);
    padding: 14px 0;
    box-shadow: 0 8px 30px rgba(0,0,0,.12);
    border-bottom: 1px solid rgba(255,255,255,.08);
    position: sticky;
    top: 0;
    z-index: 999;
}
.nav-center {
	display: flex;
	gap: 10px; 
}

.brand-system{
    display:flex;
    align-items:center;
    gap:14px;
    text-decoration:none;
}
.brand-system{
    display:flex;
    align-items:center;
    gap:14px;
    text-decoration:none;
}
.brand-icon{
    width:48px;
    height:48px;
    border-radius:14px;
    background: rgba(255,255,255,.12);
    display:flex;
    align-items:center;
    justify-content:center;
    color:#fff;
    font-size:1.3rem;
}

.brand-title{
    color:#fff;
    font-weight:800;
    font-size:1.15rem;
}

.brand-subtitle{
    color:rgba(255,255,255,.65);
    font-size:.78rem;
}

.dropdown-premium .btn{
    border:none;
    background: rgba(255,255,255,.10);
    color:#fff;
    padding:10px 16px;
    border-radius:12px;
    font-weight:600;
}

.dropdown-menu{
    border:none;
    border-radius:18px;
    padding:14px;
    min-width:280px;
    box-shadow:0 15px 45px rgba(0,0,0,.12);
}

.dropdown-item-custom{
    display:flex;
    align-items:center;
    gap:12px;
    padding:12px;
    border-radius:12px;
    text-decoration:none;
    color:#343a40;
    transition:.2s;
    font-weight:500;
}

.dropdown-item-custom:hover{
    background:#f4f7fb;
    color:#0d6efd;
    transform:translateX(4px);
}

.user-box{
    display:flex;
    align-items:center;
    gap:14px;
}

.user-info{
    text-align:right;
    color:#fff;
}

.btn-logout{
    border:1px solid rgba(255,255,255,.18);
    background: rgba(255,255,255,.08);
    color:#fff;
    border-radius:12px;
    padding:10px 14px;
}

        .card-form {
            background: #fff;
            padding: 0;
            border-radius: 24px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            border: 1px solid #eee;
            overflow: hidden;
            margin-bottom: 50px;
        }

        .card-header-custom {
            background: #fff;
            padding: 2.5rem 2.5rem 1rem 2.5rem;
            border-bottom: none;
        }

        .brand-logo-small {
            color: #002d72;
            font-weight: 800;
            font-size: 1.8rem;
            margin-bottom: 0.5rem;
            display: block;
        }

        .section-title {
            font-size: 0.85rem;
            font-weight: 700;
            color: #adb5bd;
            margin: 25px 0 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-bottom: 1px solid #f8f9fa;
            padding-bottom: 5px;
        }

        label {
            font-weight: 600;
            color: #333;
            margin-bottom: 8px;
            font-size: 0.9rem;
        }

        .form-control, .form-select {
            border-radius: 12px;
            padding: 12px 15px;
            border: 1px solid #dee2e6;
            transition: 0.3s;
        }

        .form-control:focus, .form-select:focus {
            border-color: #002d72;
            box-shadow: 0 0 0 0.25 darkblue;
        }

        .btn-save {
            padding: 15px 35px;
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
            width: 100%;
            margin-top: 20px;
        }

        .btn-save:hover {
            background: #001a42;
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 45, 114, 0.2);
        }

        .icon-box-small {
            font-size: 1.5rem;
            color: #002d72;
            margin-right: 10px;
        }

        footer {
            color: #adb5bd;
            font-size: 0.85rem;
            text-align: center;
            padding: 30px 0;
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
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-10">

            <% String erro = (String) request.getAttribute("erro");
               if (erro != null) { %>
                <div class="alert alert-danger shadow-sm" style="border-radius: 12px;"><%=erro%></div>
            <% } %>

            <div class="card card-form">
                <div class="card-header-custom">
                    <span class="brand-logo-small">Cadastrar Veículo</span>
                    <p class="text-muted">Preencha as especificações técnicas da frota abaixo.</p>
                </div>

                <div class="p-4 px-lg-5 pb-5">
                    <form id="formVeiculo" action="<%=request.getContextPath()%>/SvCadastrarVeiculo" method="post">
                        <input type="hidden" name="acao" value="cadastrar"/>

                        <!-- IDENTIFICAÇÃO -->
                        <div class="section-title">Identificação</div>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label>Placa</label>
                                <input class="form-control" name="placa" required placeholder="Ex: ABC-1234">
                            </div>
                            <div class="col-md-6">
                                <label>Chassi</label>
                                <input class="form-control" name="chassi" placeholder="Número do Chassi">
                            </div>
                        </div>

                        <!-- VEICULO -->
                        <div class="section-title">Dados do Veículo</div>
                        <div class="row g-3">
                            <div class="col-md-4">
                                <label>Marca</label>
                                <input class="form-control" name="marca" required>
                            </div>
                            <div class="col-md-4">
                                <label>Modelo</label>
                                <input class="form-control" name="modelo" required>
                            </div>
                            <div class="col-md-4">
                                <label>Ano</label>
                                <input type="number" class="form-control" name="ano" required>
                            </div>
                            <div class="col-md-6">
                                <label>Tipo</label>
                                <select class="form-select" name="tipo" required>
                                    <option value="">Selecionar</option>
                                    <option>Carro</option>
                                    <option>Caminhão</option>
                                    <option>Van</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label>Combustível</label>
                                <select class="form-select" name="combustivel" required>
                                    <option value="">Selecionar</option>
                                    <option>Gasolina</option>
                                    <option>Diesel</option>
                                    <option>Flex</option>
                                </select>
                            </div>
                        </div>

                        <!-- OPERAÇÃO -->
                        <div class="section-title">Operação e Técnica</div>
                        <div class="row g-3">
                            <div class="col-md-4">
                                <label>Status</label>
                                <select class="form-select" name="status" required>
                                    <option value="">Selecionar</option>
                                    <option>Disponível</option>
                                    <option>Em uso</option>
                                    <option>Manutenção</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label>Quilometragem (KM)</label>
                                <input type="number" step="0.01" class="form-control" name="km" required>
                            </div>
                            <div class="col-md-4">
                                <label>Capacidade (kg)</label>
                                <input type="number" step="0.01" class="form-control" name="capacidade" required>
                            </div>
                        </div>

                        <div class="section-title">Extras</div>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label>Cor</label>
                                <input class="form-control" name="cor" placeholder="Cor predominante">
                            </div>
                        </div>

                        <!-- BOTÃO -->
                        <button type="submit" class="btn-save" id="btnSalvar">
                            <i class="bi bi-check-circle me-2"></i> Confirmar Cadastro
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="decoration">José Gabriel - Sistema de Gestão de Frotas &copy; 2026</div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
