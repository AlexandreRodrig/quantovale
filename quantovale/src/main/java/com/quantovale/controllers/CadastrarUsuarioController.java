package com.quantovale.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.management.InvalidAttributeValueException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quantovale.entities.Usuario;
import com.quantovale.services.CadastrarUsuarioService;
import com.quantovale.utius.ValidarEmail;

@Controller
public class CadastrarUsuarioController {

	@Autowired
	private CadastrarUsuarioService cadastrarUsuarioService;
	private ValidarEmail validarEmail;
	private Usuario usuario = new Usuario();
	private List<String> erros = new ArrayList<String>();
	private List<String> sucesso = new ArrayList<String>();


	@RequestMapping(value = "/cadastrar-usuario", method = RequestMethod.POST)
	public String preLogin(@RequestParam("nome") String nome,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("confirmpassword") String confirmpassword,
			HttpServletRequest request, ModelMap modelMap, String errorStatus,
			String message) throws InvalidAttributeValueException {

		

		if (nome.trim().equals("")) {
			erros.add("*Preencha  nome corretamente");
		}

		if (!validarEmail.isEmailValid(email)) {
			erros.add("*Preencha email corretamente");
		}

		if (password.length() > 5 && !password.equals(confirmpassword)) {
			erros.add("*Preencha senha incorreta");
		}

		usuario.setEmail(email);
		if (cadastrarUsuarioService.validaEmailexistente(usuario)) {
			erros.add("Email ja cadastrado");
		}

		if (erros.size() > 0) {
			request.setAttribute("erros", erros);

		}

		else {
			usuario.setNome(nome);
			usuario.setEmail(email);
			usuario.setData(new Date());
			usuario.setPassword(password);
			usuario.setHash("");
			usuario = cadastrarUsuarioService.alterarUsuario(usuario);
			
			if(usuario!=null){
				sucesso.add("Alteração efetuada com sucesso");
				
			}else{
				erros.add("Falha ao executar  alteração");
			}
			
		}

		return "minhaconta";

	}
	
	@RequestMapping(value = "/alterar-usuario", method = RequestMethod.POST)
	public String alterarUsuario(@RequestParam("nome") String nome,
			@RequestParam("email") String email,
			@RequestParam("sexo") String sexo,
			@RequestParam("telefone") String telefone,
			@RequestParam("endereco") String endereco,
			@RequestParam("bairro") String bairro,
			@RequestParam("complemento") String complemento,
			@RequestParam("estado") String estado,
			@RequestParam("cidade") String cidade,
					
			HttpServletRequest request, ModelMap modelMap, String errorStatus,
			String message) throws InvalidAttributeValueException {

		List<String> erros = new ArrayList<String>();

		if (nome.trim().equals("")) {
			erros.add("*Preencha  nome corretamente");
		}

		if (!validarEmail.isEmailValid(email)) {
			erros.add("*Preencha email corretamente");
		}
		
		if (telefone.trim().equals("")) {
			erros.add("*Preencha  telefone corretamente");
		}

		if (endereco.trim().equals("")) {
			erros.add("*Preencha  endereço corretamente");
		}
		
		if (bairro.trim().equals("")) {
			erros.add("*Preencha  bairro corretamente");
		}
		
		if (complemento.trim().equals("")) {
			erros.add("*Preencha  complemento corretamente");
		}
		
		if (cidade.trim().equals("")) {
			erros.add("*Preencha  cidade corretamente");
		}
		if (estado.trim().equals("")) {
			erros.add("*Preencha  estado corretamente");
		}
		
		if (erros.size() > 0) {
			request.setAttribute("erros", erros);

		}

		else {
			usuario = new Usuario();
			usuario = (Usuario) request.getSession().getAttribute("usuario");
			usuario.setNome(nome);
			usuario.setEmail(email);
			usuario.setTelefone(telefone);
			usuario.setEndereco(endereco);
			usuario.setBairro(bairro);
			usuario.setSexo(sexo);
			usuario.setComplemento(complemento);
			usuario.setEstado(estado);
			usuario.setCidade(cidade);
			usuario = cadastrarUsuarioService.alterarUsuario(usuario);
			if(usuario!=null){
				sucesso.clear();
				sucesso.add("Alteração efetuada com sucesso");
				request.setAttribute("sucesso", sucesso);
			}else{
				erros.clear();
				erros.add("Erro ao efetuar alteração, por favor tente novamente");
				request.setAttribute("erros", erros);
			}
			

			
		}

		return "minhaconta";

	}
}
