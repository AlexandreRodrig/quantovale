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

	@RequestMapping(value = "/cadastrar-usuario", method = RequestMethod.POST)
	public String preLogin(@RequestParam("nome") String nome,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("confirmpassword") String confirmpassword,
			HttpServletRequest request, ModelMap modelMap, String errorStatus,
			String message) throws InvalidAttributeValueException {

		List<String> erros = new ArrayList<String>();

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
			cadastrarUsuarioService.cadastrarUsuario(usuario);

			return "minhaconta";
		}

		return "cadastrar";

	}
}
