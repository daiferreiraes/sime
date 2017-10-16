<!DOCTYPE html>
<!--[if lt IE 7 ]><html lang="en" class="no-js ie6"><![endif]-->
<!--[if IE 7 ]><html lang="en" class="no-js ie7"><![endif]-->
<!--[if IE 8 ]><html lang="en" class="no-js ie8"><![endif]-->
<!--[if IE 9 ]><html lang="en" class="no-js ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Sime"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	<sec:ifLoggedIn>
		<div role="banner">
			<nav id="menu-nav">
				<ul>
					<asset:image src="logo_sime_preta.png" alt="Logomarca Sime"/>
					<li><g:link uri="/">Home</g:link></li>
					<li><g:link>Pesquisar escola</g:link></li>
					<li><g:link controller="DadosEscola" action="index">Dados da escola</g:link></li>
					<li><g:link controller="CorpoDocente" action="index">Corpo docente</g:link></li>
					<li><g:link controller="Turma" action="index">Quantidade de vagas</g:link></li>
					<li><g:link controller="Configuracao">Configurações</g:link></li>
					<li><g:link controller="logout" action="index">Sair</g:link></li>
				</ul>
			</nav>
		</div>
	</sec:ifLoggedIn>
	<g:layoutBody/>
%{--	<sec:ifLoggedIn>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</sec:ifLoggedIn>--}%
	</body>
</html>
