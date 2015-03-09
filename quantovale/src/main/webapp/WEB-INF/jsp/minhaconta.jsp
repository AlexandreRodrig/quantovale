<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="header.jsp" />
 <%@ page contentType="text/html; charset=UTF-8" %>
 
 <script>
 function valida(form) {
		if (formAlterarCadastro.nome.value=="") {
			alert("Preencha o nome corretamente.");
			form.nome.focus();
		return false;
		}
		var filtro_mail = /^.+@.+\..{2,3}$/
		if (!filtro_mail.test(formAlterarCadastro.email.value) || formAlterarCadastro.email.value=="") {
			alert("Preencha o e-mail corretamente.");
			formAlterarCadastro.email.focus();
			return false;
		}
	
		if (formAlterarCadastro.telefone.value=="") {
			alert("Preenchao telefone corretamente.");
			formAlterarCadastro.idade.focus();
		return false;
		}
	
		if (formAlterarCadastro.endereco.value=="" || formAlterarCadastro.endereco.value.length < 8) {
			alert("Preencha o endereço corretamente.");
			form.endereco.focus();
			return false;
		}
	
		if (formAlterarCadastro.telefone.value=="") {
			alert("Preencha o telefone corretamente.");
			formAlterarCadastro.telefone.focus();
			return false;
		}
	
		if (formAlterarCadastro.complemento.value=="") {
			alert("Preencha complemento corretamente");
			formAlterarCadastro.complemento.focus();
			return false;
		}
		
		if (formAlterarCadastro.combo_cidade.value=="") {
			alert("Selecione uma cidade");
			formAlterarCadastro.combo_cidade.focus();
			return false;
		}
		
		if (formAlterarCadastro.option_estado.value=="") {
			alert("Selecione um estado");
			formAlterarCadastro.option_estado.focus();
			return false;
		}
		

	}
 
 
 $(document).on('change', '#option_estado', function() { 
	    //$('#opt-lessons').change(function(event) {
	        var _estadoselected = $("#option_estado option:selected").val();
	        
	         $.ajax({
         	url: '${pageContext.request.contextPath}/carregaCidade',
         	data: {estado: _estadoselected},
         	type: "GET",            	
         	contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success: function(response) {					
					$('#cont2').html($(response).find('#cont2'));		    	
		        	$('#cont2').fadeOut(200).fadeIn(200);		        				        	
    			}
	         });    		
	    });
	    $(document).ready(function() {
	    	    	
	        $.ajax({	        	 
           	url: '${pageContext.request.contextPath}/carregaEstado',            	
           	type: "GET",
           	contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success: function(response) {
					$('#cont2').html($(response).find('#cont2'));		    	
		        	$('#cont2').fadeOut(200).fadeIn(200);		        				        	
      			}
	         });    		
   		})
</script>
 
 	      	
     <div class="main" id="container">
	 	<div class="content">	
		
			        <section class="wrapper site-min-height">
        
                      <div class="showback">
                      <br />
						<h2>Minha conta</h2>
					         <!-- USERS ONLINE SECTION -->
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
							 
						<div class="form-panel">
							<div class="row mtbox">
								<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
									<div class="box1" id="box-1">
										<span class="li_heart"></span>
										<h3>Meus problemas</h3>
									</div>
										<p>Lista de problemas</p>
								</div>
								<div class="col-md-2 col-sm-2 box0">
									<div class="box1" id="box-2">
										<span class="li_cloud"></span>
										<h3>Meu cadastro</h3>
										
										
									</div>
										<p>Dados de cadastro </p>
								</div>
						
						
							</div><!-- /row mt -->	
				
						</div><!-- /form-panel -->	 
					 
						<div id="cont1">
							
							<table class="table table-bordered table-striped table-condensed">
                              <thead>
							  
                              <tr>
								  
									  <th>Imagen</th>
									  <th>Titulo</th>
									  <th class="numeric">Descrição</th>
									  <th class="numeric">Estado/cidade</th>
									  <th class="numeric">Valor disponível</th>
									  <th class="numeric">Ocultar </th>
									  <th class="numeric">Editar </th>
									  <th class="numeric">Excluir </th>
								  
                              </tr>
							  
                              </thead>
                              <tbody>
							  
                               <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garçom urgente.</td>
                                  <td class="numeric">Auxiliar de produção</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  
								    <td class="numeric"><a href="#"><img src="images/ocultar.png"  align=""></td> 
								  								  
								  <td class="numeric"><button class="btn btn-primary btn-xs fa fa-pencil" alt="Editar" style=				    "width:45px;height:45px;"></button>
								  </td> 
								  
								 <td class="numeric"><button class="btn btn-danger btn-xs fa fa-trash-o" alt="excluir" style="width:45px;height:45px;"></button></td>  
								                                  
                              </tr>
							  
							  
							     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garçom urgente.</td>
                                  <td class="numeric">Auxiliar de produção</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  
								    <td class="numeric"><a href="#"><img src="images/ocultar.png"  align=""></td> 
								  								  
								  <td class="numeric"><button class="btn btn-primary btn-xs fa fa-pencil" alt="Editar" style=				    "width:45px;height:45px;"></button>
								  </td> 
								  
								 <td class="numeric"><button class="btn btn-danger btn-xs fa fa-trash-o" alt="excluir" style="width:45px;height:45px;"></button></td>  
								                                  
                              </tr>
							  
						     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garçom urgente.</td>
                                  <td class="numeric">Auxiliar de produção</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  
								    <td class="numeric"><a href="#"><img src="images/ocultar.png"  align=""></td> 
								  								  
								  <td class="numeric"><button class="btn btn-primary btn-xs fa fa-pencil" alt="Editar" style=				    "width:45px;height:45px;"></button>
								  </td> 
								  
								 <td class="numeric"><button class="btn btn-danger btn-xs fa fa-trash-o" alt="excluir" style="width:45px;height:45px;"></button></td>  
								                                  
                              </tr>
							  
						     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garçom urgente.</td>
                                  <td class="numeric">Auxiliar de produção</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  
								    <td class="numeric"><a href="#"><img src="images/ocultar.png"  align=""></td> 
								  								  
								  <td class="numeric"><button class="btn btn-primary btn-xs fa fa-pencil" alt="Editar" style=				    "width:45px;height:45px;"></button>
								  </td> 
								  
								 <td class="numeric"><button class="btn btn-danger btn-xs fa fa-trash-o" alt="excluir" style="width:45px;height:45px;"></button></td>  
								                                  
                              </tr>
							  
							     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garçom urgente.</td>
                                  <td class="numeric">Auxiliar de produção</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  
								    <td class="numeric"><a href="#"><img src="images/ocultar.png"  align=""></td> 
								  								  
								  <td class="numeric"><button class="btn btn-primary btn-xs fa fa-pencil" alt="Editar" style=				    "width:45px;height:45px;"></button>
								  </td> 
								  
								 <td class="numeric"><button class="btn btn-danger btn-xs fa fa-trash-o" alt="excluir" style="width:45px;height:45px;"></button></td>  
								                                  
                              </tr>
                        
                        
                              </tbody>
						</table>
						
							
						</div>
						
						<div id="cont2">
							<form action="alterar-usuario" name="formAlterarCadastro" method="post" onsubmit="return valida(this);">
									<h2>Meus Dados</h2>
									 <div class="login-wrap">
									 	<label>Nome</label>
										<input type="text" class="formcontrol2" value="${usuario.nome}" name="nome" placeholder="Nome Completo" autofocus>
										<br>
										<label>Email</label>
										 <input type="text" class="formcontrol2" value="${usuario.email}" name="email" placeholder="Email" autofocus>
										<br>
											
											<c:if test="${usuario.sexo == 'm' || usuario == null || usuario.sexo=''}">
												 <label> Masculino </label> <input type="radio" name="sexo" id="sexo" value="m" checked="checked">	
												 <label> Feminino </label> <input type="radio" name="sexo" id="sexo" value="f"  >											
											</c:if>	
											<c:if test="${usuario.sexo == 'f'}">	
												<label> Masculino </label> <input type="radio" name="sexo" id="sexo" value="m" >				
												 <label> Feminino </label> <input type="radio" name="sexo" id="sexo" value="f" checked="checked" >
											</c:if>
										<br />
										<h2>Dados para contato</h2>
										<label>Telefone</label>
										 <input type="text" class="formcontrol2" value="${usuario.telefone}" id="telefone" name="telefone" style="width:30%" placeholder="Telefone para contato" autofocus>
										
										 <h2>Localização</h2>
										 
										 <label>Endereço</label>
										 <input type="text" class="formcontrol2" name="endereco" value="${usuario.endereco }"  placeholder="rua,nº" autofocus>
										  <br />
										 <label>Bairro</label>
										 <input type="text" class="formcontrol2"style="width:15%" value="${usuario.bairro }" name="bairro"  placeholder="bairro" autofocus>
										  <br />
										  <label>Complemento</label>
										 <input type="text" class="formcontrol2" name="complemento" value="${usuario.complemento }"  placeholder="complemento" autofocus>
										  <br />
										  
										  
										<label></label>	
										<div class="btn-group">
												
												<select class="btn btn-theme dropdown-toggle" name="estado" id="option_estado" >
												<option value="">Estado</option>											
												<c:forEach  items="${listaEstados}" var="estado" > 
													
														<c:choose>
	    													<c:when test="${estadoselecionado!= null}">
	  														 	<option value="${estado.cod_estados }"<c:if test="${estadoselecionado == estado.cod_estados}">selected="selected"</c:if>  >${estado.nome}</option> 
	  														</c:when>
														 <c:when test="${usuario.estado!='' && estadoselecionado==null }">
																<option value="${estado.cod_estados }"<c:if test="${usuario.estado == estado.cod_estados}">selected="selected"</c:if>  >${estado.nome}</option> 																			 
														</c:when>
												  		  <c:otherwise>
												     		 	<option value="${estado.cod_estados }">${estado.nome}</option> 																			 
												   		 </c:otherwise>
														</c:choose>
																									
												</c:forEach> 
											</select>
										
										</div>	
											<!-- pegar depois no olx as regioes de acordo com a cidade-->
											
											<div class="btn-group" id="cidade">
												<!-- pegar depois no olx as regioes de acordo com a cidade-->
													
												<select class="btn btn-theme dropdown-toggle" name="cidade" id="combo_cidade" >
													<option value="">Selecione</option>
													<c:forEach  items="${listaCidades}" var="cidade" >
	
														<option value="${cidade.cod_cidades }"<c:if test="${usuario.cidade == cidade.cod_cidades}">selected="selected"</c:if> >${cidade.nome}</option> 
													</c:forEach> 
												</select>
											</div>
										
									</div>
								<div style="margin-left: 20px;">
								 	 <button type="submit" class="btn btn-round btn-success">Alterar</button>
								 	 <a href="minhaconta" class="btn btn-round btn-danger">Cancelar</a>
									
								</div>	
							</form>		
						</div>
					</div>
						
						
					</div>  
				
			</div>
			
<jsp:include page="footer.jsp" />		
			
       	  
		


