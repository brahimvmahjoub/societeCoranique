<%@ page import="societecoranique.Image"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'album.label', default: 'Album')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>

<body>

	Upload Form:
	<br />
	<g:uploadForm action="upload">
		<input type="file" name="myFile" />
		<input type="submit" />
	</g:uploadForm>

</body>

</html>
