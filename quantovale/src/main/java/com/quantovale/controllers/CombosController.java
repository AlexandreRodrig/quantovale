package com.quantovale.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quantovale.entities.Cidades;
import com.quantovale.entities.Estados;
import com.quantovale.entities.Usuario;
import com.quantovale.services.CarregaComboService;

@Controller
public class CombosController {

	@Autowired
	private CarregaComboService carregaComboService;

	@RequestMapping(value = "/carregaEstado", method = RequestMethod.GET)
	public String carregarCombo(HttpServletRequest request) {
		List<Estados> listaEstados = carregaComboService.carregaEstados();
		Usuario usuario = (Usuario) request.getSession()
				.getAttribute("usuario");
		if (usuario != null && usuario.getEstado() != null
				&& !usuario.getEstado().equals("")) {
			List<Cidades> listaCidades = carregaComboService
					.carregaCidades(Integer.parseInt(usuario.getEstado()));
			request.setAttribute("listaCidades", listaCidades);
		}
		request.getSession().setAttribute("listaEstados", listaEstados);
		request.setAttribute("listaEstados", listaEstados);
		return "minhaconta";

	}

	@RequestMapping(value = "/carregaCidade", method = RequestMethod.GET)
	public String carregarComboCidade(HttpServletRequest request,
			@RequestParam("estado") String estado) {

		if (!estado.trim().equals("")) {
			int est = Integer.parseInt(estado);
			List<Cidades> listaCidades = carregaComboService
					.carregaCidades(est);
			request.setAttribute("listaCidades", listaCidades);
			request.setAttribute("estadoselecionado", estado);
		}

		return "minhaconta";

	}
}
