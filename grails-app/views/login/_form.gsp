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

			<div class="control-group">
				<label for="username" class="control-label"><g:message code="user.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="j_username" id="username"/>
				</div>
			</div>

			<div class="control-group">
				<label for="password" class="control-label"><g:message code="user.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="password" name="j_password" id="password"/>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
				<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label>	
				<input type="checkbox" class="checkbox" name="${rememberMeParameter}" id="remember_me" checked="checked" />
							
				</div>
			</div>
			<span class="forgot-link">
					<g:link controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>
				</span>
			