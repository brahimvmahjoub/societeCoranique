<%@ page import="grails.plugins.springsecurity.ui.RegisterCommand"%>
<%@ page contentType="text/html"%>
<!doctype html>
<html>

<head>
<meta name='layout' content='kickstart' />
<title><g:message code='spring.security.ui.register.title' /></title>


</head>

<body>

	<section id="create-user" class="first">

		<g:hasErrors bean="${command}">
			<div class="alert alert-error">
				<g:renderErrors bean="${command}" as="list" />
			</div>
		</g:hasErrors>


		<g:form action='register' name='registerForm' class="form-horizontal" >
			<g:if test='${emailSent}'>
				<div class="alert alert-block">
				<g:message code='spring.security.ui.register.sent' />
				</div>
			</g:if>
			<g:else>
			<h1 style="text-align: center;">Sign up</h1><br/><br/><br/><br/>
				<fieldset class="form" >
					<g:render template="form" />
				</fieldset>
				<div class="form-actions" style="background: transparent;">
					<g:submitButton name="create" class="btn btn-primary"
						value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<button class="btn" type="reset">
						<g:message code="default.button.reset.label" default="Reset" />
					</button>
				</div>
			</g:else>
		</g:form>
	</section>

	<script>
		$(document).ready(function() {
			$('#username').focus();
		});
	</script>
</body>
</html>
