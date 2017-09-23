<%@ page import="sime.TiposEscola" %>



<div class="fieldcontain ${hasErrors(bean: tiposEscolaInstance, field: 'tipoEscola', 'error')} required">
	<label for="tipoEscola">
		<g:message code="tiposEscola.tipoEscola.label" default="Tipo Escola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoEscola" name="tipoEscola.id" from="${sime.DadosEscola.list()}" optionKey="id" required="" value="${tiposEscolaInstance?.tipoEscola?.id}" class="many-to-one"/>

</div>

