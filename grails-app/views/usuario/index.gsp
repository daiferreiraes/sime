
<%@ page import="sime.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="chave" title="${message(code: 'usuario.chave.label', default: 'Chave')}" />
					
						<g:sortableColumn property="nomeDaEscola" title="${message(code: 'usuario.nomeDaEscola.label', default: 'Nome Da Escola')}" />
					
						<g:sortableColumn property="nomeUsuario" title="${message(code: 'usuario.nomeUsuario.label', default: 'Nome Usuario')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'usuario.senha.label', default: 'Senha')}" />
					
						<g:sortableColumn property="validarSenha" title="${message(code: 'usuario.validarSenha.label', default: 'Validar Senha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "chave")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "nomeDaEscola")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "nomeUsuario")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "senha")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "validarSenha")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>