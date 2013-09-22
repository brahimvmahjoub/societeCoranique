<style>
#header {
	margin-top: 0px;
	background-repeat: no-repeat;
	width: 100%;
	height: 300px;
	position: static;
	background-position: fixed;
	background: linear-gradient(to right, #000099, #B2B2FF);
}
</style>

<div id="header">
	<div class="inner">
		<div class="container">

			<g:render template="/_menu/navbar" />
			<g:link controller="home" action="index">
				<g:img style="margin-top: -30px;" dir="images/sigle"
					file="sigle.png" class="img-circle" />
			</g:link>
		</div>
	</div>
</div>
