# Sistema de Gestão de Frota Logística

Sistema web desenvolvido em Java EE para gerenciamento de operações logísticas, controle de veículos, motoristas e viagens.

O projeto foi construído com foco em organização em camadas, persistência de dados utilizando Hibernate ORM e integração com banco relacional MySQL.

---

# Objetivo do Projeto

A proposta do sistema é centralizar operações de gestão de frota em uma interface administrativa moderna, permitindo:

* Cadastro de veículos
* Gerenciamento de motoristas
* Controle de viagens
* Persistência de dados
* Navegação administrativa
* Estrutura MVC
* Organização enterprise com Java EE

---

# Tecnologias Utilizadas

## Back-end

* Java EE
* JSP
* Servlets
* Hibernate ORM
* JPA
* JDBC

## Front-end

* HTML5
* CSS3
* JavaScript
* Bootstrap 5
* Bootstrap Icons

## Banco de Dados

* MySQL
* XAMPP

## Servidor

* Apache Tomcat

---

# Arquitetura do Projeto

O sistema foi estruturado utilizando o padrão MVC:

## Model

Responsável pelas entidades e regras de persistência.

Exemplos:

* Veiculo
* Motorista
* Viagem

## View

Interface construída com:

* JSP
* HTML
* CSS
* Bootstrap

## Controller

Controle das requisições utilizando:

* Servlets
* Fluxo HTTP
* Encaminhamento entre páginas

---

# Funcionalidades Implementadas

## Gestão de Veículos

* Cadastro de veículos
* Localização de veículos
* Edição de dados
* Exclusão
* Listagem da frota

## Gestão de Motoristas

* Cadastro completo
* Controle de CNH
* Status do motorista
* Listagem e gerenciamento

## Gestão de Viagens

* Registro de viagens
* Controle operacional
* Integração entre motorista e veículo

---

# Hibernate ORM

O Hibernate foi utilizado para realizar o mapeamento objeto-relacional (ORM), reduzindo código SQL manual e facilitando operações de persistência.

## Recursos aplicados

* Mapeamento de entidades
* SessionFactory
* Relacionamentos
* Persistência automática
* Operações CRUD
* Integração com MySQL

---

# Estrutura Visual

A interface foi desenhada utilizando Bootstrap 5 com foco em:

* Responsividade
* Navegação intuitiva
* Layout administrativo moderno
* Componentização visual
* Experiência mais próxima de sistemas corporativos

---

# Ambiente de Desenvolvimento

## Ferramentas utilizadas

* Eclipse IDE
* Apache Tomcat
* XAMPP
* MySQL Workbench
* Git
* GitHub

---

# Como Executar

## 1. Clonar o repositório

```bash
git clone https://github.com/JG-silv/javaEE-fleets-control-system.git
```

## 2. Configurar banco MySQL

Criar o banco de dados no MySQL:

```sql
CREATE DATABASE frota_logistica;
```

## 3. Configurar conexão Hibernate

Editar:

```xml
hibernate.cfg.xml
```

Inserindo:

* usuário
* senha
* porta do MySQL

---

## 4. Executar servidor

* Configurar Apache Tomcat
* Importar projeto no Eclipse
* Executar o projeto no servidor

---

# Aprendizados Aplicados

Durante o desenvolvimento foram trabalhados conceitos como:

* Persistência de dados
* ORM com Hibernate
* Estrutura MVC
* Organização enterprise
* Integração front-end e back-end
* Design de interface administrativa
* Relacionamento entre entidades
* Navegação JSP
* Servlets e requisições HTTP

---

# Autor

José Gabriel

Projeto desenvolvido como prática avançada de Java EE e aplicações web corporativas.
