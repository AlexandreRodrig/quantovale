<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="header.jsp" />	
 
<script type="text/javascript">
   
function valida(form) {
	if (formlogin.nome.value=="") {
		alert("Preencha o nome corretamente.");
		form.nome.focus();
	return false;
	}
	var filtro_mail = /^.+@.+\..{2,3}$/
	if (!filtro_mail.test(formlogin.email.value) || formlogin.email.value=="") {
		alert("Preencha o e-mail corretamente.");
		formlogin.email.focus();
		return false;
	}

	if (form.idade.value=="" || !IsNum(form.idade.value)) {
		alert("Preencha a idade corretamente.");
		form.idade.focus();
	return false;
	}

	//if (form.endereco.value=="" || form.endereco.value.length < 8) {
	//	alert("Preencha o endereço corretamente.");
	//	form.endereco.focus();
	//	return false;
	//}

	//if (form.tel.value=="") {
	//	alert("Preencha o telefone corretamente.");
	//	form.tel.focus();
	//	return false;
	//}

	//if (form.data_nascimento.value=="" || form.data_nascimento.value.length != 10) {
	//	alert("Preencha a data de nascimento corretamente.");
	//	form.data_nascimento.focus();
	//	return false;
	//}

	if (formlogin.password.value=="" || formlogin.password.value.length < 6) {
		alert("Preencha a senha corretamente.");
		form.senha.focus();
		return false;
	}

	if (formlogin.confirmpassword.value=="" || form.confirmpassword.value.length < 6) {
		alert("Preencha a confirmação de senha corretamente.");
		form.conf_senha.focus();
		return false;
	}

	if (formlogin.password.value!=formlogin.confirmpassword.value) {
		alert("A senha e a confirmação tem de ser iguais.");
		form.conf_senha.focus();
		return false;
	}

	//if (form.sexo[0].checked==false && form.sexo[1].checked==false) {
	//alert("Selecione o sexo.");
	//return false;
	
	}
</script>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
	  
	  	
		      <form class="form-login" id="formlogin" action="cadastrar-usuario" method="post" onsubmit="return valida(this);">
		        <h2 class="form-login-heading">Cadastre se</h2>
		        <div class="login-wrap">
		        
		        <c:if test="${erros.size()>0}">
		       		 <div class="alert alert-danger">
	  							
	  								 <c:forEach  var="erros" items="${erros}">
   					 					<c:out value="${erros}"/><p>
									</c:forEach> 							 		
	  				</div>
		        </c:if>	
		            <input type="text" name="nome" id="nome" class="form-control" placeholder="Nome" autofocus>
		            <br>
					 <input type="text" name="email" id="email" class="form-control" placeholder="Email" autofocus>
		            <br>
		            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
					<br>
		            <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" placeholder="Confirma Password">
		            <label class="checkbox">
		             
		            </label>
		            <button class="btn btn-theme btn-block" id="btn-cadastrar" type="submit"><i class="fa fa-lock"></i> Cadastrar</button><br />
		            <a href="index" class="btn btn-theme btn-block" style="background:red"><i class="fa fa-lock"></i> Cancelar</a>
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
