<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="header.jsp" />	

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
	  
	  	
		      <form class="form-login" action="cadastrar-usuario" method="post">
		        <h2 class="form-login-heading">Cadastre se</h2>
		        <div class="login-wrap">
		        
		       		 <div class="alert alert-danger">
	  							<c:if test="${erros.size()>0}">
	  								 <c:forEach  var="erros" items="${erros}">
   					 					<c:out value="${erros}"/><p>
									</c:forEach> 
								</c:if>	 		
	  				</div>
		        
		            <input type="text" name="nome" class="form-control" placeholder="Nome" autofocus>
		            <br>
					 <input type="text" name="email" class="form-control" placeholder="Email" autofocus>
		            <br>
		            <input type="password" name="password" class="form-control" placeholder="Password">
					<br>
		            <input type="password" name="confirmpassword" class="form-control" placeholder="Confirma Password">
		            <label class="checkbox">
		             
		            </label>
		            <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> Cadastrar</button><br />
					<button class="btn btn-theme btn-block" href="index" type="submit" style="background:red"><i class="fa fa-lock"></i> Cancelar</button>
		            <hr>
		       </form>
		            <!--
		            <div class="login-social-link centered">
		            <p>or you can sign in via your social network</p>
		                <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
		            </div>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="#">
		                    Create an account
		                </a>
		            </div>
					-->
		        </div>
				<form class="form-login" action="" method="post">
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Esqueceu sua senha ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Digite seu endereço de e-mail abaixo para redefinir sua senha.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
		                          <button class="btn btn-theme" type="submit">Enviar</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${rootURL}resources/assets/js/jquery.js"></script>
    <script src="${rootURL}resources/assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="${rootURL}resources/assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("${rootURL}resources/assets/img/login-bg.jpg", {speed: 500});
    </script>


  </body>
</html>
