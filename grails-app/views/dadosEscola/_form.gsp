<%@ page import="sime.DadosEscola" %>



<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'tipo_De_Escola', 'error')} required">
	<label for="tipo_De_Escola">
		<g:message code="dadosEscola.tipo_De_Escola.label" default="Tipo De Escola" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo_De_Escola" from="${dadosEscolaInstance.constraints.tipo_De_Escola.inList}" required="" value="${dadosEscolaInstance?.tipo_De_Escola}" valueMessagePrefix="dadosEscola.tipo_De_Escola"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="dadosEscola.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${dadosEscolaInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="dadosEscola.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${dadosEscolaInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="dadosEscola.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${dadosEscolaInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'nome_Escola', 'error')} required">
	<label for="nome_Escola">
		<g:message code="dadosEscola.nome_Escola.label" default="Nome Escola" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome_Escola" required="" value="${dadosEscolaInstance?.nome_Escola}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="dadosEscola.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${dadosEscolaInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'qnt_De_Alunos', 'error')} required">
	<label for="qnt_De_Alunos">
		<g:message code="dadosEscola.qnt_De_Alunos.label" default="Qnt De Alunos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qnt_De_Alunos" type="number" value="${dadosEscolaInstance.qnt_De_Alunos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'qnt_De_Professores', 'error')} required">
	<label for="qnt_De_Professores">
		<g:message code="dadosEscola.qnt_De_Professores.label" default="Qnt De Professores" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qnt_De_Professores" type="number" value="${dadosEscolaInstance.qnt_De_Professores}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'qnt_De_Salas', 'error')} required">
	<label for="qnt_De_Salas">
		<g:message code="dadosEscola.qnt_De_Salas.label" default="Qnt De Salas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qnt_De_Salas" type="number" value="${dadosEscolaInstance.qnt_De_Salas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'rua', 'error')} required">
	<label for="rua">
		<g:message code="dadosEscola.rua.label" default="Rua" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rua" required="" value="${dadosEscolaInstance?.rua}"/>

</div>

