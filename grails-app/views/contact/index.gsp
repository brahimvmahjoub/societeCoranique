<%@ page import="societecoranique.Contact"%>
<%@ page contentType="text/html"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'contact.label', default: 'Contact')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>

<body>
	<g:hasErrors bean="${contactInstance}">
		<div class="alert alert-error">
			<g:renderErrors bean="${contactInstance}" as="list" />
		</div>
	</g:hasErrors>
	<section id="address">
		<div class="row">

			<div class="span2">
				<h1>
					<g:message code="default.contact.address" />
				</h1>
				<address>
					<strong> ${meta(name:'app.name')}, Inc.
					</strong><br> Fatnassa SoukElAhad<br> 4223, Kebili<br>
					Tunisia<br> <br>
				</address>
				<address>
					<div class="row">
						<span class="span1"> <strong><abbr title="Phone">Phone</abbr></strong>
						</span> <span class="span3"> (123) 456-7890 </span>
					</div>
					<div class="row">
						<span class="span1"> <strong><abbr title="Fax">Fax</abbr></strong>
						</span> <span class="span3"> +49 (0) 72 27 - 95 35 - 605 </span>
					</div>
				</address>
				<address>
					<div class="row">
						<span class="span1"> <strong>Email</strong>
						</span> <span class="span3"> <a
							href="mailto:societecoranique.fn@gmail.com">societecoranique.fn@gmail.com
						</a>
						</span>
					</div>
				</address>
			</div>
			<div class="span10">
				<g:form action="save" class="form-horizontal">
					<h1 style="text-align: center;">Contact</h1>
					<br />
					<br />
					<fieldset class="form">
						<g:render template="form" />
					</fieldset>
					<div class="form-actions" style="background: transparent;">
						<g:submitButton name="create" class="btn btn-primary"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
						<button class="btn" type="reset">
							<g:message code="default.button.reset.label" default="Reset" />
						</button>
					</div>
				</g:form>
			</div>

		</div>

		<section id="address">
			<iframe width="100%" height="350" frameborder="0" scrolling="no"
				marginheight="0" marginwidth="0"
				src="https://maps.google.fr/maps?f=d&amp;source=s_d&amp;saddr=fatnassa,+K%C3%A9bili,+Tunisie&amp;daddr=&amp;hl=fr&amp;geocode=&amp;aq=0&amp;oq=fatnassa&amp;sll=46.75984,1.738281&amp;sspn=8.44504,21.643066&amp;mra=ls&amp;ie=UTF8&amp;t=m&amp;ll=33.783333,8.75&amp;spn=0.083492,0.100454&amp;output=embed"></iframe>

		</section>
</body>

</html>
