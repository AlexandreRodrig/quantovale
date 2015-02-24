<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:include page="header.jsp" />	      	
     <div class="main" id="container">
	 	<div class="content">	
		
			        <section class="wrapper site-min-height">
        
                      <div class="showback">
						<h2>Anunciar Problema</h2>
					         <!-- USERS ONLINE SECTION -->
							 
							 
						<div class="form-panel">
						  <form  role="form">
							<h5></i>Categoria:</h5>
							<div class="btn-group">
								<select class="btn btn-theme dropdown-toggle" >
									  <option value="#">Selecione</option>
									  <option value="#">Serviço</option>
									  <option value="#">Compras</option>
									  <option value="#">Vendas</option>
								</select>
							</div>
								<br /> <br />
							
							<div class="form-inline">
								
								<div class="btn-group">
										
										<select class="btn btn-theme dropdown-toggle" >
										<option value="0">Estado</option>
										<option value="16">Alagoas</option>
										<option value="26">Amapá</option>
										<option value="15">Amazonas</option>
										<option value="4">Bahia</option>
										<option value="8">Ceará</option>
										<option value="20">Distrito Federal</option>
										<option value="14">Espírito Santo</option>
										<option value="12">Goiás</option>
										<option value="10">Maranhão</option>
										<option value="19">Mato Grosso</option>
										<option value="21">Mato Grosso do Sul</option>
										<option value="2">Minas Gerais</option>
										<option value="9">Pará</option>
										<option value="13">Paraíba</option>
										<option value="6">Paraná</option>
										<option value="7">Pernambuco</option>
										<option value="17">Piauí</option>
										<option value="3">Rio de Janeiro</option>
										<option value="18">Rio Grande do Norte</option>
										<option value="5">Rio Grande do Sul</option>
										<option value="23">Rondônia</option>
										<option value="27">Roraima</option>
										<option value="11">Santa Catarina</option>
										<option value="1">São Paulo</option>
										<option value="22">Sergipe</option>
										<option value="24">Tocantins</option>
									</select>
								
								</div>	
									<!-- pegar depois no olx as regioes de acordo com a cidade-->
									
									<div class="btn-group">
										<!-- pegar depois no olx as regioes de acordo com a cidade-->
											
											<select class="btn btn-theme dropdown-toggle" >
											<option value="0">Região</option>
											<option value="16">Grande Campinas</option>
											<option value="26">São paulo e Regiao</option>
											
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