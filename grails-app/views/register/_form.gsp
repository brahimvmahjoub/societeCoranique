<%@ page import="grails.plugins.springsecurity.ui.RegisterCommand"%>
<%@ page contentType="text/html"%>

<style>
form {
   margin-left:auto;
   margin-right:auto;
   width:50%;
   border-width: 1px;
  border-style: solid;
  border-color: black;
  
  -moz-border-radius:20px;
  -webkit-border-radius:20px;
  -ms-border-radius:20px;
  -o-border-radius:20px;
  border-radius:20px;
  background-color: #E0ECF8;
}
</style>

			<div class="control-group fieldcontain ${hasErrors(bean: command, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="user.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" maxlength="25" required="" value="${command?.username}"/>
					<span class="help-inline">${hasErrors(bean: command, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: command, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="user.email.label" default="Mail" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="email" required="" value="${command?.email}"/>
					<span class="help-inline">${hasErrors(bean: command, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: command, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="user.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="password" name="password" required="" value="${command?.password}"/>
					<span class="help-inline">${hasErrors(bean: command, field: 'password', 'error')}</span>
				</div>
			</div>
			<div class="control-group fieldcontain ${hasErrors(bean: command, field: 'password2', 'error')} required">
				<label for="password2" class="control-label"><g:message code="user.password2.label" default="Password (again)" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="password" name="password2" required="" value="${command?.password2}"/>
					<span class="help-inline">${hasErrors(bean: command, field: 'password2', 'error')}</span>
				</div>
			</div>