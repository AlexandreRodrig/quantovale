<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Quanto vale seu problema?</title>
<link href="${rootURL}resources/bootstrap/css/bootstrap.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${rootURL}resources/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="${rootURL}resources/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${rootURL}resources/js/app.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${rootURL}resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${rootURL}resources/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,700,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${rootURL}resources/js/jquery.min.js"></script>
<script src="${rootURL}resources/js/jquery.easydropdown.js"></script>
<script type="text/javascript" src="${rootURL}resources/js/script.js"></script>
<script type="text/javascript" src="${rootURL}resources/js/jquery.nivo.slider.js"></script>
<script src="${rootURL}resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="${rootURL}resources/css/magnific-popup.css" rel="stylesheet" type="text/css">
<link href="${rootURL}resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<!--external css-->
<link href="${rootURL}resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />       
<!-- Custom styles for this template -->
<link href="${rootURL}resources/assets/css/style.css" rel="stylesheet">
<link href="${rootURL}resources/assets/css/style-responsive.css" rel="stylesheet">
<script src="${rootURL}resources/assets/js/bootstrap.min.js"></script>
	
	
 <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>    
</head>
<body>
  <div class="header" id="home">
  	  <div class="header_top">
	   <div class="wrap">
		 	     <div class="logo">
						<a href="index.html"><img src="${rootURL}resources/images/logo.png" alt="" /></a>
					</div>	
						<div class="menu">
						    <ul>
						    	<li class="current"><a href="#section-1" class="scroll"> Home</a></li>
								<li class="current"><a href="#section-3" class="scroll"> Como funciona?</a></li>
								<li><a href="#section-2" class="scroll">Saiba Mais</a></li>
								
								<li>
									<c:if test="${usuario==null}">
										<a class="logout" href="cadastrar"><span class="btn btn-round btn-info">Cadastre-se</span></a></li>
									</c:if>
									<c:if test="${usuario!=null}">
										<a class="logout" href="minhaconta"><span class="btn btn-round btn-info">Minha conta</span></a></li>
									</c:if>
								</li>
									<c:if test="${usuario!=null}">
											<a class="logout" href="logout"><span class="btn btn-round btn-danger">Logout</span></a></li>
									</c:if>
									<c:if test="${usuario==null}">
										<a class="logout" href="login"><span class="btn btn-round btn-danger">Login</span></a></li>
									</c:if>
								<li>
								</li>
							</ul>
						</div>							
	    		 <div class="clear"></div>
	        </div>
	    </div>
	 </div>			      	
     <div class="main" id="container">
	 	<div class="content">	
	 		 <div class="content_top section" id="section-1">  
	 		     <div class="wrap">                                  		
            	   <div class="banner_desc">
            	      <div class="wmuSlider example1">
							<div class="wmuSliderWrapper">
							<article><p>Você ja parou para pensar quanto vale o seu  problema?</p> <img src="${rootURL}resources/images/clouds.png"  alt="" /> </article>
							<article><p>Você tem alguma solução para o problema de alguem  e esta disposto a receber por isto?</p> <img src="${rootURL}resources/images/system.png"  alt="" /> </article>
							<article><p>Entao cadastre-se agora mesmo no <b>Quanto vale o seu problema</b></p> <img src="${rootURL}resources/images/slider-img3.png"  alt="" /> </article>
							<article><p>Acesse agora gratuitamente e saiba mais.</p> <img src="${rootURL}resources/images/slider-img4.png"  alt="" /> </article>
							</div>
                       </div>
            	      <script src="${rootURL}resources/js/jquery.wmuSlider.js"></script> 
						<script type="text/javascript" src="${rootURL}resources/js/modernizr.custom.min.js"></script> 
						<script>
       						 $('.example1').wmuSlider();         
   						 </script> 	   
   						         	      
                    		
                 		 <div class="">
                  	 		<a href="grid_problemas"class="btn btn-round btn-info" style="font-size:20px;">Veja agora os problemas que você pode solucionar</a>
                  	 				<!--
									<div id="small-dialog" class="mfp-hide">
					                       <div class="priceing-tabel">
												<div class="priceing-header">
													<h4>Windows</h4>
													<a href="#">100 GB<label>$29/month</label></a>
												</div>
												<ul>
													<li><a href="#">15 Email Accounts</a></li>
													<li><a href="#">100 GB space</a></li>
													<li><a href="#">1 Domain Name</a></li>
													<li><a href="#">500 GB Bandwith</a></li>
												</ul>
												<a class="price-btn" href="#">Order Now</a>
											</div>
										</div>
										-->
                 				 </div>                
              				</div>
          				</div>
        	
     		 </div>

           <div class="about_desc section" id="section-2"> 
					<div class="wrap"> 
		                   <p style="color:#ff742c;font-family: -webkit-pictograph;font-size:36px;" align="center" >Quanto vale seu problema?</p>    	
                         
                 	<div class="section group example">
						<div class="col_1_of_2 span_1_of_2">
						   <h3>"Você tem um problema"</h3>
						   <img src="${rootURL}resources/images/problema.png" alt="" />
							<p><span> Olá se você por acaso tem um problema e não consegue resolver e precisa de ajuda.<br /></span></p>
							<p><b>Quanto vale seu problema </b> chegou para te ajudar.</P>
							
							<p> Cadastre-se agora mesmo para os solucionadores possam entrar em contato com você para te ajudar a solucionar o seu problema veja o video abaixo e saiba mais.</p>

		 				</div>
						<div class="col_1_of_2 span_1_of_2">
						   <h3>"Você possui uma solução"</h3>
						   <img src="${rootURL}resources/images/solution.png" alt="" />
			src="${rootURL}resourcespan>Se você possui uma empresa ou presta serviço que soluciona problemas do dia a dia das pessoas.</span></p>
						   <p>Para você chegou <b>Quanto vale seu problema</b> simples facil rapido. </p>
						   <p>O nosso sistema conecta você dono da solução com as pessoas que precisão da solução </p>
						</div>
				    </div>	        
           	     
						<div style="align:center">
							<div id="wistia_video_grid_center"><object id="wistia_7" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:inline-block;*display:inline;height:100%;margin:0;padding:0;position:relative;vertical-align:top;width:100%;zoom:1;" bgcolor="#000000"><param name="movie" 	value="https://embed-ssl.wistia.com/flash/embed_player_v2.0.swf?2013-10-04"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="wmode" value="opaque"><param name="flashvars" value="autoPlay=true&amp;controlsVisibleOnLoad=true&amp;customColor=7b796a&amp;endVideoBehavior=default&amp;mediaDuration=50.05&amp;playButtonVisible=true&amp;referrer=https%3A%2F%2Fwww.powtoon.com%2Fshow%2FbwqZpeWqybQ%2Fquanto-vale-seu-problema%2F&amp;showAbout=true&amp;showVolume=true&amp;stillUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F34397a33fe14d1e4f853e886b8a926b5ac34e2a3.jpg%3Fimage_crop_resized%3D640x360&amp;allowSwitchToHtml5=true&amp;trackingTransmitInterval=10&amp;unbufferedSeek=true&amp;videoUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F1390d9e7a74e330ac24a6c7db103390db5e09674.bin&amp;wmode=opaque"><embed src="https://embed-ssl.wistia.com/flash/embed_player_v2.0.swf?2013-10-04" name="wistia_7" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="autoPlay=true&amp;controlsVisibleOnLoad=true&amp;customColor=7b796a&amp;endVideoBehavior=default&amp;mediaDuration=50.05&amp;playButtonVisible=true&amp;referrer=https%3A%2F%2Fwww.powtoon.com%2Fshow%2FbwqZpeWqybQ%2Fquanto-vale-seu-problema%2F&amp;showAbout=true&amp;showVolume=true&amp;stillUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F34397a33fe14d1e4f853e886b8a926b5ac34e2a3.jpg%3Fimage_crop_resized%3D640x360&amp;allowSwitchToHtml5=true&amp;trackingTransmitInterval=10&amp;unbufferedSeek=true&amp;videoUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F1390d9e7a74e330ac24a6c7db103390db5e09674.bin&amp;wmode=opaque" style="display:inline-block;*display:inline;height:300px;;margin:0;padding:0;position:relative;vertical-align:top;width:600px;;zoom:1;left:200px;" bgcolor="#000000"></object></div>
					 </div>
				</div>	
       	  </div>  
		  
		  <div class="" id="section-3"> 
					<div class="wrap">
		                <p style="color:#ff742c;font-family: -webkit-pictograph;font-size:36px;" align="center" >Como funciona?</p>    	
						  
							<div class="showback2">
							  <p class="pshow" > Imaginamos que você tenha uma empresa que oferece o serviço de garçons, e que você tenha um
							   evento para daqui há duas semanas, mas você não possui a quantidade de garçons suficientes para 
							   atender este evento então temos um PROBLEMA certo.</p>
							   <p class="pshow"><b>O Quanto vale seu problema </b> veio para ajudar a você resolver este problema.</p>
							  <p class="pshow"> Você deve esta se perguntando mas como?</p>
							  <p class="pshow"> Simples o seu problema fica disponível em nosso sistema para que as pessoas solucionadoras possam 
							   entrar em contato com você para te ajudar no seu problema.</p>
							   <p class="pshow">No entanto você também pode ser o <b>solucionador</b> você pode oferecer soluções para os problemas cadastrados,imagine
							   que você é um garçom então logo você pode oferecer seu serviço ou a sua solução de forma prática simples e rápida.</p>
							   <p class="pshow">Então o que está esperando entre e veja como você pode ajudar, ou ser ajudado.</p>  
							
								<div style="align:center">
										<a href="grid_problemas" class="btn btn-round btn-danger" style="font-size:20px;background:#ff742c">Veja agora os problemas que você pode solucionar</a>
                  	 			 </div> 
							</div>
						</div>	
							
			</div>				
       	  
      </div>
     <div class="footer section"  id="section-4">
     	 <div class="wrap">
     	 	      <div class="section group example">
						<div class="col_1_of_2 span_1_of_2">
							<div class="footer_logo">
							 <img src="${rootURL}resources/images/logo.png" alt="" />
							 <p style="color: white;"><c:if test="${usuario!=null}">Olá : ${usuario.nome}</c:if></p>
							 
							</div>
						      <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor ut labore et dolore magna aliqua. Duis aute irure dolor in velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                <div class="search_box"> 		    		 	
									 <form>
										<input type="text" class="textbox" value="Leave your emil cobber" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Leave your emil cobber';}">
								        <input type="submit" value="">
							         </form>
							     </div>
		 				</div>
						<div class="col_1_of_2 span_1_of_2">
						    <div class="social_icons">
				       	      	<ul>
				       	    	 <li><a class="rss" href="#"></a> </li>
				       	    	  <li><a class="dribble" href="#"></a> </li>
				       	    	   <li><a class="twitter" href="https://twitter.com/W3layouts" target="_blank"> </a> </li>
				       	    	    <li><a class="facebook" href="https://www.facebook.com/w3layouts" target="_blank"> </a> </li>
				       	    	    <div class="clear"></div>
				       	    	 </ul>
				       	        </div>
				       	   </div>   
     				 </div>
     			</div>		
     		</div>
     		<div class="copy-right">
			<div class="wrap">
				<p class="copy">© 2013 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a> </p>
			</div>
	  </div>       
   
	</body>
</html>

