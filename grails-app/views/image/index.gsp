
<%@ page import="societecoranique.Image"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'album.label', default: 'Image')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>

<style type="text/css">
#img {
	border-style: solid;
	border-width: 2px;
	width: 350px;
	height: 250px;
	margin-bottom: 10px;
}

#img img {
	width: 350px;
	height: 250px;
}

#launch {
	width: 100%;
	height: 30px;
}
</style>

</head>

<body>


	<!-- Button to trigger modal -->
	<a href="#myModal" id="launch" role="button" class="btn btn-primary"
		data-toggle="modal"> <b> Upload Photo</b></a>

	<!-- Modal -->
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Upload Photo</h3>
		</div>
		<div class="modal-body">
			<p>
				<g:uploadForm action="upload">
					<input type="file" name="myFile" />
					<input type="submit" />
				</g:uploadForm>
			</p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</div>
	</div>
	<br />

	<g:paginate total="${imageInstanceCount}" />
	<br />
	<br />
	<g:each in="${imageInstanceList}" status="i" var="imageInstance">
		<g:if test="${(i%3) == 0}">
			</br>
		</g:if>

		<div class="span3" id="img">
			<g:img dir="images/avatars" file="${imageInstance.name}"
				class="img-thumbnail" />
		</div>
	</g:each>
</body>

</html>
