
<%@ page import="societecoranique.Video"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'video.label', default: 'Video')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>

<style type="text/css">
#vid {
	border-style: solid;
	border-width: 2px;
	width: 350px;
	height: 250px;
	margin-bottom: 10px;
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
		data-toggle="modal"> <b> Upload Video</b></a>

	<!-- Modal -->
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Upload Photo</h3>
		</div>
		<div class="modal-body">


			<g:form action="upload">
				<fieldset class="form">
					<div
						class="fieldcontain ${hasErrors(bean: video, field: 'myFile', 'error')} ">
						<label for="myFile"> <g:message code="video.line.label"
								default="Lien Video" />

						</label>
						<g:textField name="myFile" value="${video?.myFile}" />
					</div>

					<div
						class="fieldcontain ${hasErrors(bean: video, field: 'name', 'error')} ">
						<label for="password"> <g:message
								code="endUser.name.label" default="Name" />

						</label>
						<g:textField name="name" value="${video?.name}" />
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="upload" value="upload" />
				</fieldset>
			</g:form>


		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</div>
	</div>
	<br />

	<g:paginate total="${VideoInstanceCount}" />
	<br />
	<br />

	<g:each in="${VideoInstanceList}" status="i" var="videoInstance">
		<g:if test="${(i%3) == 0}">
			</br>
		</g:if>

		<div class="span3" id="vid">
			<object width="350" height="250">

				<param name="movie"
					value="http://www.youtube.com/v/${videoInstance.fileId}?fs=1&amp;amp;hl=en_US">

				</param>


				<param name="allowFullScreen" value="true"></param>
				<param name="allowscriptaccess" value="always">

				</param>

				<embed
					src="http://www.youtube.com/v/${videoInstance.fileId}?fs=1&amp;amp;hl=en_US"
					type="application/x-shockwave-flash" allowscriptaccess="always"
					allowfullscreen="true" width="350" height="250">

				</embed>
			</object>
		</div>
	</g:each>

</body>

</html>
