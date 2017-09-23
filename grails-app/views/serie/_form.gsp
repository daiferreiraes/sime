<%@ page import="sime.Serie" %>



<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="serie.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${serieInstance?.descricao}"/>

</div>

