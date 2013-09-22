<style>
#footer {
	margin-top: 0px;
	background-repeat: no-repeat;
	width: 100%;
	height: 300px;
	position: static;
	background-position: fixed;
	background: linear-gradient(to right, #0A2229, #81DAF5);
	color: #BDBDBD;
}

#footer div {
	margin-top: 20px;
}
</style>
<div id="footer">
	<div class="container">
		<div class="row">
			<div class="span2">
				<h4>Menu</h4>
				<ul class="unstyled">
					<li><i class="icon-home"></i> <a
						href="${createLink(uri: '/')}">Accueil</a></li>
					<li><i class="icon-eye-open"></i> <a
						href="${createLink(uri: '/')}">Actualités</a></li>
					<li><i class="icon-money"></i> <a
						href="${createLink(uri: '/')}">Présentation</a></li>
					<li><i class="icon-comments"></i> <a
						href="${createLink(uri: '/')}">Photos</a></li>
					<li><i class="icon-comments"></i> <a
						href="${createLink(uri: '/')}">Videos</a></li>

				</ul>
			</div>
			<div class="span2">
				<h4>Societé</h4>
				<ul class="unstyled">
					<li><i class="icon-info-sign"></i> <a
						href="${createLink(uri: '/about')}"> Qui sommes nous? </a></li>
					<li><i class="icon-envelope"></i> <a
						href="${createLink(uri: '/contact')}"> Contact </a></li>
				</ul>
			</div>
			<div class="span5">
				<h4>Societé coranique</h4>
				<p>Copyright @ 2013</p>
			</div>
			<div class="span3">
				<g:link controller="home" action="index">
					<g:img dir="images/sigle" file="sigle.png" class="img-circle" />
				</g:link>
			</div>
		</div>