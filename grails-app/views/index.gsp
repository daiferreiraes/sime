<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sime</title>
		<style>
			#controller-list {
				text-align: center;
			}

			#controller-list li {
				margin: 50px;
				display: inline-block;
				-webkit-transition: linear 0.5s;
				-moz-transition: linear 0.5s;
				-ms-transition: linear 0.5s;
				-o-transition: linear 0.5s;
				transition: linear 0.5s;
			}

			#controller-list li:hover {
				-webkit-transform: rotateX(20deg);
				-moz-transform: rotateX(20deg);
				-ms-transform: rotateX(20deg);
				-o-transform: rotateX(20deg);
				transform: rotateX(20deg);
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="page-body" role="main">
			<nav id="controller-list" role="navigation">
				<ul>
					<li><g:link><asset:image src="buscar_escola.png" alt="Buscar escola"/></g:link></li>
					<li><g:link controller="DadosEscola" action="index"><asset:image src="dados_escola.png" alt="Dados da escola"/></g:link></li>
					<li><g:link controller="CorpoDocente" action="index"><asset:image src="corpo_docente.png" alt="Corpo docente"/></g:link></li>
					<li><g:link controller="Turma" action="index"><asset:image src="quantidade_vagas.png" alt="Quantidade de vagas"/></g:link></li>
					<li><g:link><asset:image src="configuracoes.png" alt="Configurações"/></g:link></li>
					<li><g:link controller="logout" action="index"><asset:image src="sair.png" alt="Sair"/></g:link></li>
				</ul>
			</nav>
		</div>
	</body>
</html>
