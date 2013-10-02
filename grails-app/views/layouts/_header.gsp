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

nav ul li {
	display: inline;
	float: right;
}
</style>
<div id="header">
	<div class="inner">
		<div class="container">
			<div class="span6">
				<g:render template="/_menu/navbar" />
			</div>
			<sec:ifNotLoggedIn>
				<nav>
					<ul>
						<li id="signUp"><g:link class="btn" controller="register">Sign up FREE</g:link></li>
						<li id="signIn"><g:link class="btn btn-primary"
								controller="login" action="auth">Sign In</g:link></li>

					</ul>
				</nav>
			</sec:ifNotLoggedIn>
			<sec:ifLoggedIn>

				<div style="float: right;">
					<ul class="nav nav-tabs">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#" style="color: black; "><sec:loggedInUserInfo
									field="username" /> <b class="caret"></b> </a>
							<ul class="dropdown-menu">
								<li><g:link>Edit profile</g:link></li>
								<li><g:link controller="logout">Logout</g:link></li>
							</ul></li>
					</ul>
				</div>
			</sec:ifLoggedIn>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#login-trigger').click(function() {
			$(this).next('#login-content').slideToggle();
			$(this).toggleClass('active');

			if ($(this).hasClass('active'))
				$(this).find('span').html('&#x25B2;')
			else
				$(this).find('span').html('&#x25BC;')
		})
	});
</script>