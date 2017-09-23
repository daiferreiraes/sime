<%@ page import="sime.Vagas" %>



<div class="fieldcontain ${hasErrors(bean: vagasInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="vagas.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="turno" required="" value="${vagasInstance?.turno}"/>

</div>

