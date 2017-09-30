<%@ page import="sime.Turno" %>



<div class="fieldcontain ${hasErrors(bean: turnoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="turno.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${turnoInstance?.descricao}"/>

</div>

