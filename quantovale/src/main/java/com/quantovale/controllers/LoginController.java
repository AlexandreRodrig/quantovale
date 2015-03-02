package com.quantovale.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quantovale.config.AuthenticationQuantovale;
import com.quantovale.entities.Usuario;
import com.quantovale.services.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	private Usuario usuario;
	private List<String> erros = new ArrayList<String>();
	private List<String> sucesso = new ArrayList<String>();

	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public String preLogin(@RequestParam("email") String email,
			@RequestParam("password") String password,
			HttpServletRequest request, ModelMap modelMap) {
		List<String> erros = new ArrayList<String>();

		if (email.trim().equals("")) {
			erros.add("email não informado");
		}
		if (password.trim().equals("")) {
			erros.add("senha não informado");
		}
		usuario = new Usuario();
		usuario.setEmail(email);
		usuario.setPassword(password);
		usuario = loginService.logarUsuario(usuario);
		if (erros.size() == 0) {
			if (usuario != null) {

				request.getSession().setAttribute("usuario", usuario);
				// create new authenticaton
				Authentication authentication = new AuthenticationQuantovale(
						usuario);
				// set in context spring
				SecurityContextHolder.getContext().setAuthentication(
						authentication);
				return "grid_problemas";

			} else {
				erros.add("usúario ou senha incorretos");
				request.setAttribute("erros", erros);
			}
		}
		return "login";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {

		request.getSession().removeAttribute("usuario");

		return "index";

	}

	@RequestMapping(value = "/sendEmailHash", method = RequestMethod.POST)
	public String enviaHashParaEmail(HttpServletRequest request,
			@RequestParam("email") String email) {

		usuario = new Usuario();
		usuario.setEmail(email);
		usuario = loginService.sendEmailAlteracaoSenha(usuario);
		if (usuario == null) {
			erros.clear();
			erros.add("Email não encontrado, por favor tente novamente");
			request.setAttribute("erros", erros);
			return "login";
		} else {
			sucesso.clear();
			sucesso.add("Email enviado com sucesso, verifique sua caixa de email para alterar sua senha. ");
			request.setAttribute("sucesso", sucesso);
			return "login";
		}

	}

	@RequestMapping(value = "/redirectalterarSenha", method = RequestMethod.GET)
	public String redirectalterarSenha(HttpServletRequest request,
			@RequestParam("email") String email,
			@RequestParam("hash") String hash) {

		usuario = new Usuario();
		usuario.setEmail(email);
		usuario.setHash(hash);

		usuario = loginService.validaEmaileHash(usuario);

		if (usuario != null) {
			request.setAttribute("usuario", usuario);
			return "alterarsenha";
		} else {
			erros.clear();
			erros.add("Email não encontrado, por favor tente novamente");
			request.setAttribute("erros", erros);
			return "alterarsenha";
		}

	}

	@RequestMapping(value = "/alterarSenha", method = RequestMethod.POST)
	public String alterarSenha(HttpServletRequest request,
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			@RequestParam("confirmpassword") String confirmpassword) {
		List<String> erros = new ArrayList<String>();
		List<String> sucesso = new ArrayList<String>();
		usuario = new Usuario();

		if (password.trim().equals("")) {
			erros.add("senha não informada");
		} else if (!password.trim().equals(confirmpassword.trim())) {
			erros.add("senha informada esta diferente de confirmar senha");
		}

		if (erros.size() > 0) {
			request.setAttribute("erros", erros);
		} else {
			usuario.setPassword(password);
			usuario.setId(Integer.parseInt(id));
			usuario = loginService.alterarSenha(usuario, password);

			if (usuario == null) {
				erros.clear();
				erros.add("Houve um erro ao alterar usuário por favor tente novamente");
			} else {
				sucesso.add("Senha alterada com sucesso");
				request.setAttribute("sucesso", sucesso);
			}

		}

		return "alterarsenha";

	}

}
