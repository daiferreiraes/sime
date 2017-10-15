
<%@ page import="sime.DadosEscola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dadosEscola.label', default: 'DadosEscola')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dadosEscola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dadosEscola" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bairro" title="${message(code: 'dadosEscola.bairro.label', default: 'Bairro')}" />
					
						<g:sortableColumn property="cidade" title="${message(code: 'dadosEscola.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'dadosEscola.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="nome_escola" title="${message(code: 'dadosEscola.nome_escola.label', default: 'Nomeescola')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'dadosEscola.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="qnt_de_alunos" title="${message(code: 'dadosEscola.qnt_de_alunos.label', default: 'Qntdealunos')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dadosEscolaInstanceList}" status="i" var="dadosEscolaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dadosEscolaInstance.id}">${fieldValue(bean: dadosEscolaInstance, field: "bairro")}</g:link></td>
					
						<td>${fieldValue(bean: dadosEscolaInstance, field: "cidade")}</td>
					
						<td>${fieldValue(bean: dadosEscolaInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: dadosEscolaInstance, field: "nome_escola")}</td>
					
						<td>${fieldValue(bean: dadosEscolaInstance, field: "numero")}</td>
					
						<td>${fieldValue(bean: dadosEscolaInstance, field: "qnt_de_alunos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dadosEscolaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
