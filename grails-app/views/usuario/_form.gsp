<%@ page import="sime.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'chave', 'error')} required">
	<label for="chave">
		<g:message code="usuario.chave.label" default="Chave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="chave" required="" value="${usuarioInstance?.chave}"placeholder="Digite sua chave de entrada"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nomeDaEscola', 'error')} required">
	<label for="nomeDaEscola">
		<g:message code="usuario.nomeDaEscola.label" default="Nome Da Escola" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeDaEscola" required="" value="${usuarioInstance?.nomeDaEscola}"placeholder="Informe o nome da escola"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nomeUsuario', 'error')} required">
	<label for="nomeUsuario">
		<g:message code="usuario.nomeUsuario.label" default="Nome Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeUsuario" required="" value="${usuarioInstance?.nomeUsuario}"placeholder="Informe o nome Usuário"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${usuarioInstance?.senha}"placeholder="Ditite uma senha"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'validarSenha', 'error')} required">
	<label for="validarSenha">
		<g:message code="usuario.validarSenha.label" default="Validar Senha"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="validarSenha" required="" value="${usuarioInstance?.validarSenha}"placeholder="Valide sua senha"/>

</div>

