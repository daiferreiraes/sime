<%@ page import="sime.TiposEscola" %>



<div class="fieldcontain ${hasErrors(bean: tiposEscolaInstance, field: 'tipo_De_Escola', 'error')} required">
	<label for="tipo_De_Escola">
		<g:message code="tiposEscola.tipo_De_Escola.label" default="Tipo De Escola" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo_De_Escola" required="" value="${tiposEscolaInstance?.tipo_De_Escola}"/>

</div>

