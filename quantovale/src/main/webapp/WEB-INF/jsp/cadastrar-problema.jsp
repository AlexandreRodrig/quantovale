<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page contentType="text/html; charset=UTF-8" %>
 <jsp:include page="header.jsp" />
 
 <script>
 $(document).on('change', '#option_estado', function() { 
	    //$('#opt-lessons').change(function(event) {
	        var _estadoselected = $("#option_estado option:selected").val();
	        
	         $.ajax({
      	url: '${pageContext.request.contextPath}/carregacombocidadenovoproblema',
      	data: {estado: _estadoselected},
      	type: "GET",            	
      	contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success: function(response) {					
					$('#grupo-cidade').html($(response).find('#grupo-cidade'));		    	
		        	$('#grupo-cidade').fadeOut(200).fadeIn(200);		        				        	
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
						<h2>Anunciar Problema</h2>
					         <!-- USERS ONLINE SECTION -->
							 
							 
						<div class="form-panel">
						  <form  role="form">
							<h5></i>Categoria:</h5>
							<div class="btn-group">
								<select class="btn btn-theme dropdown-toggle" >
									<option value="#">Selecione</option>
									<c:forEach  items="${listaCategorias}" var="categorias" > 
													
										  <option value="${categorias.codCategoria }">${categorias.nome}</option>				
																									
									</c:forEach> 
								
								</select>
							</div>
								<br /> <br />
							
							<div class="form-inline">
								
								<div class="btn-group" id="grupo-estado">
										
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
									
									<div class="btn-group" id="grupo-cidade">
										<!-- pegar depois no olx as regioes de acordo com a cidade-->
											
												<select class="btn btn-theme dropdown-toggle" name="cidade" id="combo_cidade" >
													<option value="">Selecione</option>
													<c:forEach  items="${listaCidades}" var="cidade" >
	
														<option value="${cidade.cod_cidades }"<c:if test="${usuario.cidade == cidade.cod_cidades}">selected="selected"</c:if> >${cidade.nome}</option> 
													</c:forEach> 
												</select>
									</div>
								
							</div>
							
							  <div class="form-group">
								<BR /> 
									<label>Titulo</label><br />
									<input type="text" class="formcontrol2" id="exampleInputPassword2" placeholder="Titulo">
									<br />
									<label>Descrição</label>
								    <input type="text" class="formcontrol2" id="exampleInputPassword2" placeholder="Começa com ..">
									<br />
									<label>Adicionar uma imagem</label>
								    <input type="file" class="formcontrol2" id="exampleInputPassword2" placeholder="Começa com ..">
									<br />
									<label>Uma breve descrição</label>
									<textarea rows="4" cols="50" class="form-control" style="width:50%"></textarea>
									<br />
									
									<label>Telefone para contato</label>
										<input type="text" class="formcontrol2" id="exampleInputPassword2" placeholder="DD + 999999 ..">

									<br />
									<label>Eu disponibilizo de ?</label>
									<input type="text" class="formcontrol2" id="exampleInputPassword2" placeholder="valor em reais">

							  </div>
							  
							  
							  <div class="form-inline">
								<button type="submit" class="btn btn-round btn-success">Publicar</button>
								<button type="submit" class="btn btn-round btn-primary">Preview</button>
								<button type="submit" class="btn btn-round btn-danger">Cacelar</button>
							  </div>
						  </form>
						</div><!-- /form-panel -->	 
					 
						
						
						
					</div>  
				
			</div>
			
		</section><! --/wrapper -->
			
       	  
		</div>
     <jsp:include page="footer.jsp" />		