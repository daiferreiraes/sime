
<%@ page import="sime.CorpoDocente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'corpoDocente.label', default: 'CorpoDocente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-corpoDocente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-corpoDocente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cargo" title="${message(code: 'corpoDocente.cargo.label', default: 'Cargo')}" />
					
						<g:sortableColumn property="disciplina" title="${message(code: 'corpoDocente.disciplina.label', default: 'Disciplina')}" />
					
						<g:sortableColumn property="idade" title="${message(code: 'corpoDocente.idade.label', default: 'Idade')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'corpoDocente.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'corpoDocente.sexo.label', default: 'Sexo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${corpoDocenteInstanceList}" status="i" var="corpoDocenteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${corpoDocenteInstance.id}">${fieldValue(bean: corpoDocenteInstance, field: "cargo")}</g:link></td>
					
						<td>${fieldValue(bean: corpoDocenteInstance, field: "disciplina")}</td>
					
						<td>${fieldValue(bean: corpoDocenteInstance, field: "idade")}</td>
					
						<td>${fieldValue(bean: corpoDocenteInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: corpoDocenteInstance, field: "sexo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${corpoDocenteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
