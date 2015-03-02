<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="header.jsp" />
 
 <script type="text/javascript">
   
function valida(form) {

	var filtro_mail = /^.+@.+\..{2,3}$/
	if (!filtro_mail.test(formlogin.email.value) || formlogin.email.value=="") {
		alert("Preencha o e-mail corretamente.");
		formlogin.email.focus();
		return false;
	}
	

	if (formlogin.password.value=="" || formlogin.password.value.length < 6) {
		alert("Preencha a senha corretamente.");
		formlogin.password.focus();
		return false;
	}

}
</script>	

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
		
		      <form class="form-login" name="formlogin" action="logar" method="post" onsubmit="return valida(this);">
		        <h2 class="form-login-heading">Logar</h2>
		              <c:if test="${erros.size()>0}">
			       		 <div class="alert alert-danger">	  							
		  					 <c:forEach  var="erros" items="${erros}">
	   					 		<p align="center"><c:out value="${erros}"/></p>
							</c:forEach> 							 		
		  				</div>
	  				</c:if>
	  				
	  				  <c:if test="${sucesso.size()>0}">
			       		 <div class="alert alert-info">	  							
		  					 <c:forEach  var="erros" items="${sucesso}">
	   					 		<p align="center"><c:out value="${sucesso}"/></p>
							</c:forEach> 							 		
		  				</div>
	  				</c:if>
		        
		        <div class="login-wrap">
		            <input type="text" name="email" class="form-control" placeholder="Email" autofocus>
		            <br>
		            <input type="password" name="password" class="form-control" placeholder="senha">
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> Esqueceu sua senha?</a>
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> Logar</button>
		         	<a href="index" class="btn btn-theme btn-block" style="background:red"><i class="fa fa-lock"></i> Cancelar</a>
		           	
		           </form>
		            <hr>
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
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                  <form action="sendEmailHash" method="post" name="recuperacao" >
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Esqueceu sua senha ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Digite seu endereço de e-mail abaixo para redefinir sua senha.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-danger" type="button" >Cancelar</button>
		                          <button class="btn btn-theme" type="submit">Enviar</button>
		                      </div>
		                    </form>
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
