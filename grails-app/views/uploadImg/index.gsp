<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<title>FileResource List</title>
</head>
<body>

	<fieldset>
		<legend>Avatar Upload</legend>

		<form action="uploadAvatar" method="post"
			enctype="multipart/form-data">
			<table class="table" style="width: 75%">
				<tr>
					<td><span style="font-weight: bold;"><g:message
								code="select.file" /></span> <input size="75" type="file" id="avatar"
						name="avatar" /></td>
				</tr>
				<tr>
					<td><input type="submit" class="btn" id="Run"></td>
				</tr>
			</table>
		</form>

	</fieldset>

</body>
</html>