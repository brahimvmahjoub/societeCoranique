<%@ page import="societecoranique.Contact" %>
<%@ page contentType="text/html" %>
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
			<div class="control-group fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="contact.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" maxlength="25" required="" value="${contactInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contactInstance, field: 'mail', 'error')} required">
				<label for="mail" class="control-label"><g:message code="contact.mail.label" default="Mail" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="mail" required="" value="${contactInstance?.mail}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'mail', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contactInstance, field: 'message', 'error')} required">
				<label for="message" class="control-label"><g:message code="contact.message.label" default="Message" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textArea name="message" cols="40" rows="5" maxlength="2000" required="" value="${contactInstance?.message}"/>
					<span class="help-inline">${hasErrors(bean: contactInstance, field: 'message', 'error')}</span>
				</div>
			</div>

