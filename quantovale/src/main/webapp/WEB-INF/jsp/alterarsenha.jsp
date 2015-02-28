<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="header.jsp" />
 <%@ page contentType="text/html; charset=UTF-8" %>
 
 <script type="text/javascript">
   
function valida(form) {
	if (formlogin.password.value=="" || formlogin.password.value.length < 6) {
		alert("Preencha a senha corretamente.");
		formlogin.password.focus();
		return false;
	}
	if (formlogin.password.value!=formlogin.confirmpassword.value) {
		alert("A senha e a confirma��o tem de ser iguais.");
		form.conf_senha.focus();
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
	  	
		
		      <form class="form-login" name="formlogin" action="alterarSenha" method="post" onsubmit="return valida(this);">
		        <h2 class="form-login-heading">Alteração de senha</h2>
		              <c:if test="${erros.size()>0}">
			       		 <div class="alert alert-danger">	  							
		  					 <c:forEach  var="erros" items="${erros}">
	   					 		<p align="center"><c:out value="${erros}"/></p>
							</c:forEach> 							 		
		  				</div>
	  				</c:if>
	  				
	  				 <c:if test="${sucesso.size()>0}">
			       		 <div class="alert alert-succes">	  							
		  					 <c:forEach  var="sucesso" items="${sucesso}">
	   					 		<p align="center"><c:out value="${sucesso}"/></p>
							</c:forEach> 							 		
		  				</div>
	  				</c:if>
		        
		        <div class="login-wrap">
		            <input type="password"  name="password" class="form-control" placeholder="Senha" autofocus>
		            <br>
		            <input type="password" name="confirmpassword" class="form-control" placeholder="Confirma senha">
		              <input type="hidden" name="id" class="form-control" value="${usuario.id}">
		      
		            <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> Alterar</button>
		         	<a href="index" class="btn btn-theme btn-block" style="background:red"><i class="fa fa-lock"></i> Cancelar</a>
		        </div>   	
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
