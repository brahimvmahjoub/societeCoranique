
<%@ page import="societecoranique.Image"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'album.label', default: 'Album')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

	<g:each in="${imageInstanceList}" status="i" var="imageInstance">
		<g:if test="${(i%3) == 0}">
			</br>
		</g:if>
		<div class="span3" style="height:400px;width:400px;text-align: center; border-style: solid;border-width: 2px;">
			<g:img dir="images/avatars" file="${imageInstance.name}"
				class="img-thumbnail" width="400" height="400" />
		</div>
	</g:each>
	</table>


</body>

</html>
