<%@ page import="sime.DadosEscola" %>



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

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'nome_escola', 'error')} required">
	<label for="nome_escola">
		<g:message code="dadosEscola.nome_escola.label" default="Nomeescola" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome_escola" required="" value="${dadosEscolaInstance?.nome_escola}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="dadosEscola.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${dadosEscolaInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'qnt_de_alunos', 'error')} required">
	<label for="qnt_de_alunos">
		<g:message code="dadosEscola.qnt_de_alunos.label" default="Qntdealunos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qnt_de_alunos" type="number" value="${dadosEscolaInstance.qnt_de_alunos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'qnt_de_professores', 'error')} required">
	<label for="qnt_de_professores">
		<g:message code="dadosEscola.qnt_de_professores.label" default="Qntdeprofessores" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qnt_de_professores" type="number" value="${dadosEscolaInstance.qnt_de_professores}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'qnt_de_salas', 'error')} required">
	<label for="qnt_de_salas">
		<g:message code="dadosEscola.qnt_de_salas.label" default="Qntdesalas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qnt_de_salas" type="number" value="${dadosEscolaInstance.qnt_de_salas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: dadosEscolaInstance, field: 'rua', 'error')} required">
	<label for="rua">
		<g:message code="dadosEscola.rua.label" default="Rua" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rua" required="" value="${dadosEscolaInstance?.rua}"/>

</div>

