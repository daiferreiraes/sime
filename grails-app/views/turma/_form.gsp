<%@ page import="sime.Turma" %>



<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'numvagas', 'error')} required">
	<label for="numvagas">
		<g:message code="turma.numvagas.label" default="Numvagas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numvagas" type="number" value="${turmaInstance.numvagas}" required=""/>

</div>

