
<%@ page import="sime.TiposEscola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tiposEscola.label', default: 'TiposEscola')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tiposEscola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tiposEscola" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tiposEscola">
			
				<g:if test="${tiposEscolaInstance?.tipo_De_Escola}">
				<li class="fieldcontain">
					<span id="tipo_De_Escola-label" class="property-label"><g:message code="tiposEscola.tipo_De_Escola.label" default="Tipo De Escola" /></span>
					
						<span class="property-value" aria-labelledby="tipo_De_Escola-label"><g:fieldValue bean="${tiposEscolaInstance}" field="tipo_De_Escola"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tiposEscolaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tiposEscolaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
