
<%@ page import="societecoranique.Contact" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-contact" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'contact.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="mail" title="${message(code: 'contact.mail.label', default: 'Mail')}" />
			
				<g:sortableColumn property="message" title="${message(code: 'contact.message.label', default: 'Message')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${contactInstanceList}" status="i" var="contactInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: contactInstance, field: "mail")}</td>
			
				<td>${fieldValue(bean: contactInstance, field: "message")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${contactInstanceTotal}" />
	</div>
</section>

</body>

</html>
