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
	public String preLogin(HttpServletRequest request) {

		request.getSession().removeAttribute("usuario");

		return "index";

	}

}
