<%@ page import="sime.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="usuario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="usuario.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" required="" value="${usuarioInstance?.cargo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="senha" required="" value="${usuarioInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'confirmarSenha', 'error')} required">
	<label for="confirmarSenha">
		<g:message code="usuario.confirmarSenha.label" default="Confirmar Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="confirmarSenha" required="" value="${usuarioInstance?.confirmarSenha}"/>

</div>

