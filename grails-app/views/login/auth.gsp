<html>

<head>
<title><g:message code='spring.security.ui.login.title' /></title>
<meta name='layout' content='kickstart' />
</head>

<body>

	<p />

	<div class="login s2ui_center ui-corner-all"
		style='text-align: center;'>
		<div class="login-inner">
			<form action='${postUrl}' method='POST' id="loginForm"
				name="loginForm" autocomplete='off'>
				
					<h1>
						<g:message code='spring.security.ui.login.signin' />
					</h1>
					<fieldset class="form">
						<g:render template="form" />
					</fieldset>
					<div class="form-actions" style="background: transparent;">
						<g:submitButton name="LogIn" class="btn btn-primary"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
						<g:link class="btn" controller="register" action="register">Sign Up</g:link>
			</form>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#username').focus();
		});

		<s2ui:initCheckboxes/>
	</script>

</body>
</html>
