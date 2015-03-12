<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page contentType="text/html; charset=UTF-8" %>
 <jsp:include page="header.jsp" />		      	
     <div class="main" id="container">
	 	<div class="content">	
		
			        <section class="wrapper site-min-height">
        
                      <div class="showback">
						<h2>Problemas</h2>
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
						  <form  role="form">
							<h5></i>Filtrar por:</h5>
							<div class="btn-group">
								<select class="btn btn-theme dropdown-toggle" >
									  <option value="#">Categoria</option>
									  <option value="#">Serviço</option>
									  <option value="#">Compras</option>
									  <option value="#">Vendas</option>
								</select>
							</div>
								<br /> <br />
							
							<div class="form-inline">
								<label></label>	
								<div class="btn-group">
										
										<select class="btn btn-theme dropdown-toggle" >
										<option value="0">Estado</option>
										<option value="16">Alagoas</option>
										<option value="26">AmapÃ¡</option>
										<option value="15">Amazonas</option>
										<option value="4">Bahia</option>
										<option value="8">CearÃ¡</option>
										<option value="20">Distrito Federal</option>
										<option value="14">EspÃ­rito Santo</option>
										<option value="12">GoiÃ¡s</option>
										<option value="10">MaranhÃ£o</option>
										<option value="19">Mato Grosso</option>
										<option value="21">Mato Grosso do Sul</option>
										<option value="2">Minas Gerais</option>
										<option value="9">ParÃ¡</option>
										<option value="13">ParaÃ­ba</option>
										<option value="6">ParanÃ¡</option>
										<option value="7">Pernambuco</option>
										<option value="17">PiauÃ­</option>
										<option value="3">Rio de Janeiro</option>
										<option value="18">Rio Grande do Norte</option>
										<option value="5">Rio Grande do Sul</option>
										<option value="23">RondÃ´nia</option>
										<option value="27">Roraima</option>
										<option value="11">Santa Catarina</option>
										<option value="1">SÃ£o Paulo</option>
										<option value="22">Sergipe</option>
										<option value="24">Tocantins</option>
									</select>
								
								</div>	
									<!-- pegar depois no olx as regioes de acordo com a cidade-->
									
									<div class="btn-group">
										<!-- pegar depois no olx as regioes de acordo com a cidade-->
											
											<select class="btn btn-theme dropdown-toggle" >
											<option value="0">RegiÃ£o</option>
											<option value="16">Grande Campinas</option>
											<option value="26">SÃ£o paulo e Regiao</option>
											
										</select>
									</div>
								
							</div>
							
							  <div class="form-group">
								<BR /> 
									<label>Titulo</label><br />
									<input type="text" class="formcontrol2" id="exampleInputPassword2" placeholder="Titulo">
									<br />
									<label>DescriÃ§Ã£o</label>
								    <input type="text" class="formcontrol2" id="exampleInputPassword2" placeholder="ComeÃ§a com ..">
							  </div>
							  <button type="submit" class="btn btn-theme">Buscar</button>
						  </form>
						  <br /> <br />
						  <a href="novo-problema" class="btn btn-round btn-danger">Quero cadastrar o meu problema</a>
						

						</div><!-- /form-panel -->	 
					  <!--FALTA A PAGINAÃÃO -->
					    <table class="table table-bordered table-striped table-condensed">
                              <thead>
							  
                              <tr>
								  
									  <th>Imagen</th>
									  <th>Titulo</th>
									  <th class="numeric">DescriÃ§Ã£o</th>
									  <th class="numeric">Estado/cidade</th>
									  <th class="numeric">Valor disponÃ­vel</th>
									  <th class="numeric">Enviar proposta </th>
								  
                              </tr>
							  
                              </thead>
                              <tbody>
							  
                               <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garÃ§om urgente.</td>
                                  <td class="numeric">Auxiliar de produÃ§Ã£o</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  <td class="numeric"><button class="btn btn-round btn-success" data-toggle="modal" data-target="#myModal">
									Enviar proposta
								  </button></td>                                  
                              </tr>
							  
							  
							     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garÃ§om urgente.</td>
                                  <td class="numeric">Auxiliar de produÃ§Ã£o</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								  <td class="numeric"><button class="btn btn-round btn-success" data-toggle="modal" data-target="#myModal">
									Enviar proposta
								  </button></td>                                  
                              </tr>
							  
							     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>Preciso de um garÃ§om urgente.</td>								  
                                  <td class="numeric">Auxiliar de produÃ§Ã£o</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								   <td class="numeric"><button class="btn btn-round btn-success" data-toggle="modal" data-target="#myModal">
									Enviar proposta
								  </button></td>
                                 
                              </tr>
							  
							     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>RODRIGO MENDES.</td>								 
                                  <td class="numeric">Auxiliar de produÃ§Ã£o</td>
								   <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								    <td class="numeric"><button class="btn btn-round btn-success" data-toggle="modal" data-target="#myModal">
									Enviar proposta
								  </button></td>
                                  
                              </tr>
							  
							     <tr>
                                  <td><a href="participante.html"><img class="img-circle" src="assets/img/ui-sherman.jpg" width="50px" height="50px" align=""></a></td>
                                  <td>RODRIGO MENDES.</td>								  
                                  <td class="numeric">Auxiliar de produÃ§Ã£o</td>
								  <td>SP/Campinas.</td>
                                  <td class="numeric">0,00</td>
								    <td class="numeric"><button class="btn btn-round btn-danger" data-toggle="modal" data-target="#myModalreeviada">
									Proposta enviada
								  </button></td>
                            
                              </tr>
                        
                        
                              </tbody>
                        </table>
						
								<!-- Modal  enviar proposta-->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">Proposta</h4>
						      </div>
						      <div class="modal-body">
						       <form>
							   <label>Telefone para contato </label>
							   <input type="text" class="form-control" id="exampleInputPassword2" placeholder="Telefone para contato">
							   <br />
							   <label>Descreva a sua proposta (Texto sera enviado por email...) </label>
								<textarea rows="4" cols="50" class="form-control"></textarea>	
							  
							   </form>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						        <button type="button" class="btn btn-primary">Enviar</button>
						      </div>
						    </div>
						  </div>
						</div>
						
									<!-- Modal proposta reenviada-->
						<div class="modal fade" id="myModalreeviada" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">resumo da proposta</h4>
						      </div>
						      <div class="modal-body">
						       <form>
							   <label>Telefone para contato </label>
							   <input type="text" class="form-control" id="exampleInputPassword2" placeholder="Telefone para contato">
							   <br />
							   
							    <label>Email </label>
							   <input type="text" class="form-control" id="exampleInputPassword2" placeholder="Telefone para contato">
							   <br />
							   <label>DescriÃ§Ã£o do problema </label>
								<textarea rows="4" cols="50" class="form-control"></textarea>	  
							   </form>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
						      </div>
						    </div>
						  </div>
						</div>
						
						
						
					</div>  
				
			</div>
			
		</section><! --/wrapper -->
			
       	  
		</div>


<jsp:include page="footer.jsp" />	