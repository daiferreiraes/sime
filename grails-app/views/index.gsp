<!DOCTYPE html>
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Sime</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>
		<style>
			#page-body {
				text-align: center;
			}

			#page-body .logo {
				margin-top: 50px;
			}

			#controller-list li {
				margin: 50px 60px 0 60px;
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
		<div id="page-body" role="main">
			<asset:image class="logo" src="logo_sime_verde.png" alt="Logomarca Sime"/>
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
