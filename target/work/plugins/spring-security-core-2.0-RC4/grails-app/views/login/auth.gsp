<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
	#login {
		text-align: center;
	}

	#login .logomarca {
		margin-top: 100px;
		margin-bottom: 30px;
	}

	#login .inner {
		width: 420px;
		margin: 0 auto;
	}

	#login .inner .cssform input[type='text'], #login .inner .cssform input[type='password'] {
		width: 100%;
		margin-bottom: 15px;
	}

	#login #submit {
		width: 100%;
		margin-top: 15px;
	}

	#login #remember_me_holder {
		text-align: left;
	}

	#login #remember_me_holder label {
		color: #A9ABAE;
	}

	#login .inner .login_message {
		padding: 6px 25px 20px 25px;
		color: #c33;
	}

	#login .inner .text_ {
		width: 120px;
	}

	#login .inner .chk {
		height: 12px;
	}
	</style>

</head>

<body>
<div id='login'>

	<asset:image class="logomarca" src="logo_sime.png" alt="Logomarca Sime"/>

	<div class='inner'>

		%{--<div class='fheader'><g:message code="springSecurity.login.header"/></div>--}%

		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>

		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>

			%{--<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>--}%
			<input type='text' class='text_' name='j_username' id='username' placeholder='Nome de usuário' required/>

			%{--<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>--}%
			<input type='password' class='text_' name='j_password' id='password' placeholder='Senha' required/>

			<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
				<label for="remember_me"><g:link>Esqueci senha</g:link></label>
			</p>

			<p>
				<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
			</p>
		</form>

	<li><g:link controller="Usuario" action="create">Cadastrar-se</g:link></li>

	</div>
</div>
<script type='text/javascript'>
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
</script>
</body>
</html>
