
<%@ page import="sime.CorpoDocente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'corpoDocente.label', default: 'CorpoDocente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-corpoDocente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-corpoDocente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list corpoDocente">
			
				<g:if test="${corpoDocenteInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="corpoDocente.cargo.label" default="Cargo" /></span>
					
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${corpoDocenteInstance}" field="cargo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corpoDocenteInstance?.disciplina}">
				<li class="fieldcontain">
					<span id="disciplina-label" class="property-label"><g:message code="corpoDocente.disciplina.label" default="Disciplina" /></span>
					
						<span class="property-value" aria-labelledby="disciplina-label"><g:fieldValue bean="${corpoDocenteInstance}" field="disciplina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corpoDocenteInstance?.idade}">
				<li class="fieldcontain">
					<span id="idade-label" class="property-label"><g:message code="corpoDocente.idade.label" default="Idade" /></span>
					
						<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${corpoDocenteInstance}" field="idade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corpoDocenteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="corpoDocente.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${corpoDocenteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${corpoDocenteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="corpoDocente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:formatBoolean boolean="${corpoDocenteInstance?.sexo}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:corpoDocenteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${corpoDocenteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
