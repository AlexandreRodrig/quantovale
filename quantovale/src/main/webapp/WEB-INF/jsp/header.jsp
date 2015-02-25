<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-BR" lang="pt-BR">
<head>

  

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="author" content="Movile" />
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <meta name="robots" content="index,follow" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="${rootURL}resources/bootstrap/css/bootstrap.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${rootURL}resources/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="${rootURL}resources/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${rootURL}resources/js/app.js"></script>

<title>Free HostCompare Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<link href="${rootURL}resources/assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<!--external css-->
<link href="${rootURL}resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />       
<!-- Custom styles for this template -->
<link href="${rootURL}resources/assets/css/style.css" rel="stylesheet">
<link href="${rootURL}resources/assets/css/style-responsive.css" rel="stylesheet">
<script src="${rootURL}resources/assets/js/bootstrap.min.js"></script>
<script src="${rootURL}resources/js/jquery.validate.js" type="text/javascript"></script>
	
 <script type="text/javascript">

 $(document).ready(function(){
	
			$("#cont1").hide();	
			$("#cont2").hide();	
			
			$("#box-1").click(function(event){
				$("#cont1").show("slow");
				$("#cont2").hide("slow");
		
			});
			
			$("#box-2").click(function(event){
				$("#cont2").show("slow");
				$("#cont1").hide("slow");
		
			});
 
});
   
	
    </script> 
 

  
</head>

<body>
  <div class="header" id="home">
  	  <div class="header_top">
	   <div class="wrap">
		 	     <div class="logo">
						<a href="index.html"><img src="${rootURL}resources/images/logo.png" alt="" /></a>
						<p style="color: white;">Bem vindo : ${usuario.nome}</p>
						
					</div>	
						<div class="menu">
						    <ul>
						    	<li class="current"><a href="index.html" class="scroll"> Home</a></li>
								<li class="current"><a href="index.html" class="scroll"> Como funciona?</a></li>
								<li><a href="index.html" class="scroll">Saiba Mais</a></li>
								<li>
									<a class="logout" href="cadastrar"><span class="btn btn-round btn-info">Cadastre-se</span></a></li>
								</li>
								<li>
									<a class="logout" href="login"><span class="btn btn-round btn-danger">Login</span></a></li>
								</li>
							</ul>
						</div>							
	    		 <div class="clear"></div>
	        </div>
	    </div>
	 </div>	
 

