package com.quantovale.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

		usuario = new Usuario();
		usuario.setEmail(email);
		usuario.setPassword(password);
		usuario = loginService.logarUsuario(usuario);
		if (usuario != null) {
			request.getSession().setAttribute("usuario", usuario);
			return "grid_problemas";
		}

		return "index";

	}

}
