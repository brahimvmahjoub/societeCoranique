<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Slide Down Box Menu with jQuery and CSS3" />
        <meta name="keywords" content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails"/>
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon"/>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css" media="screen"/>
        <style>
			
			span.reference{
				position:fixed;
				left:10px;
				bottom:10px;
				font-size:12px;
			}
			span.reference a{
				color:#aaa;
				text-transform:uppercase;
				text-decoration:none;
				text-shadow:1px 1px 1px #000;
				margin-right:30px;
			}
			span.reference a:hover{
				color:#ddd;
			}
			ul.sdt_menu{
				margin-top:50px;
			}
			
		</style>
   
		<div class="content">
			
			<ul id="sdt_menu" class="sdt_menu">
				<li>
					<a href="#">
						<img src="${resource(dir: 'images', file: '1.png')}" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Accueil</span>
							<span class="sdt_descr">présentation</span>
						</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="${resource(dir: 'images', file: '2.png')}" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Actualités</span>
							<span class="sdt_descr">Quoi de neuf</span>
						</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="${resource(dir: 'images', file: '3.png')}" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Présentation</span>
							<span class="sdt_descr">Qui sommes nous</span>
						</span>
					</a>
					<div class="sdt_box">
							<a href="#">Programmes</a>
							<a href="#">Activités</a>
							<a href="#">Modifier Programmes</a>
							<a href="#">Modifier Activités</a>							
					</div>
				</li>
				<li>
					<a href="#">
						<img src="${resource(dir: 'images', file: '4.png')}" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Photos</span>
							<span class="sdt_descr">nos photos</span>
						</span>
					</a>
					<div class="sdt_box">
							<a href="#">Modifier Photos</a>													
					</div>
				</li>
				<li>
					<a href="#">
						<img src="${resource(dir: 'images', file: '5.png')}" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Videos</span>
							<span class="sdt_descr">nos videos</span>
						</span>
					</a>
					<div class="sdt_box">
							<a href="#">Modifier Videos</a>													
					</div>
				</li>
				<li>
					<a href="#">
						<img src="${resource(dir: 'images', file: '6.png')}" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Contact</span>
							<span class="sdt_descr">contacter nous</span>
						</span>
					</a>
					
				</li>				
			</ul>
		</div>
       <!-- The JavaScript -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript" src="jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.easing.1.3.js')}"></script>
		
        <script type="text/javascript">
            $(function() {
				/**
				* for each menu element, on mouseenter, 
				* we enlarge the image, and show both sdt_active span and 
				* sdt_wrap span. If the element has a sub menu (sdt_box),
				* then we slide it - if the element is the last one in the menu
				* we slide it to the left, otherwise to the right
				*/
                $('#sdt_menu > li').bind('mouseenter',function(){
					var $elem = $(this);
					$elem.find('img')
						 .stop(true)
						 .animate({
							'width':'170px',
							'height':'170px',
							'left':'0px'
						 },400,'easeOutBack')
						 .andSelf()
						 .find('.sdt_wrap')
					     .stop(true)
						 .animate({'top':'140px'},500,'easeOutBack')
						 .andSelf()
						 .find('.sdt_active')
					     .stop(true)
						 .animate({'height':'170px'},300,function(){
						var $sub_menu = $elem.find('.sdt_box');
						if($sub_menu.length){
							var left = '170px';
							if($elem.parent().children().length == $elem.index()+1)
								left = '-170px';
							$sub_menu.show().animate({'left':left},200);
						}	
					});
				}).bind('mouseleave',function(){
					var $elem = $(this);
					var $sub_menu = $elem.find('.sdt_box');
					if($sub_menu.length)
						$sub_menu.hide().css('left','0px');
					
					$elem.find('.sdt_active')
						 .stop(true)
						 .animate({'height':'0px'},300)
						 .andSelf().find('img')
						 .stop(true)
						 .animate({
							'width':'0px',
							'height':'0px',
							'left':'85px'},400)
						 .andSelf()
						 .find('.sdt_wrap')
						 .stop(true)
						 .animate({'top':'25px'},500);
				});
            });
        </script>
