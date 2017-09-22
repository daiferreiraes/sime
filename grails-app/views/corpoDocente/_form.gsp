<%@ page import="sime.CorpoDocente" %>



<div class="fieldcontain ${hasErrors(bean: corpoDocenteInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="corpoDocente.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" required="" value="${corpoDocenteInstance?.cargo}"placeholder="Digite o cargo do professor"/>

</div>

<div class="fieldcontain ${hasErrors(bean: corpoDocenteInstance, field: 'disciplina', 'error')} required">
	<label for="disciplina">
		<g:message code="corpoDocente.disciplina.label" default="Disciplina" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="disciplina" required="" value="${corpoDocenteInstance?.disciplina}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: corpoDocenteInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="corpoDocente.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" value="${corpoDocenteInstance.idade}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: corpoDocenteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="corpoDocente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${corpoDocenteInstance?.nome}"placeholder="Infome o nome"/>

</div>

<div class="fieldcontain ${hasErrors(bean: corpoDocenteInstance, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="corpoDocente.sexo.label" default="Sexo" />
		
	</label>
	<g:checkBox name="sexo" value="${corpoDocenteInstance?.sexo}" prefix="F"  />

</div>

