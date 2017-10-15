
<%@ page import="sime.DadosEscola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dadosEscola.label', default: 'DadosEscola')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dadosEscola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dadosEscola" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dadosEscola">
			
				<g:if test="${dadosEscolaInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="dadosEscola.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${dadosEscolaInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="dadosEscola.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${dadosEscolaInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="dadosEscola.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${dadosEscolaInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.nome_escola}">
				<li class="fieldcontain">
					<span id="nome_escola-label" class="property-label"><g:message code="dadosEscola.nome_escola.label" default="Nomeescola" /></span>
					
						<span class="property-value" aria-labelledby="nome_escola-label"><g:fieldValue bean="${dadosEscolaInstance}" field="nome_escola"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="dadosEscola.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${dadosEscolaInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.qnt_de_alunos}">
				<li class="fieldcontain">
					<span id="qnt_de_alunos-label" class="property-label"><g:message code="dadosEscola.qnt_de_alunos.label" default="Qntdealunos" /></span>
					
						<span class="property-value" aria-labelledby="qnt_de_alunos-label"><g:fieldValue bean="${dadosEscolaInstance}" field="qnt_de_alunos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.qnt_de_professores}">
				<li class="fieldcontain">
					<span id="qnt_de_professores-label" class="property-label"><g:message code="dadosEscola.qnt_de_professores.label" default="Qntdeprofessores" /></span>
					
						<span class="property-value" aria-labelledby="qnt_de_professores-label"><g:fieldValue bean="${dadosEscolaInstance}" field="qnt_de_professores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.qnt_de_salas}">
				<li class="fieldcontain">
					<span id="qnt_de_salas-label" class="property-label"><g:message code="dadosEscola.qnt_de_salas.label" default="Qntdesalas" /></span>
					
						<span class="property-value" aria-labelledby="qnt_de_salas-label"><g:fieldValue bean="${dadosEscolaInstance}" field="qnt_de_salas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dadosEscolaInstance?.rua}">
				<li class="fieldcontain">
					<span id="rua-label" class="property-label"><g:message code="dadosEscola.rua.label" default="Rua" /></span>
					
						<span class="property-value" aria-labelledby="rua-label"><g:fieldValue bean="${dadosEscolaInstance}" field="rua"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dadosEscolaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dadosEscolaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
