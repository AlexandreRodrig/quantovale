package com.quantovale.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quantovale.entities.Categoria;
import com.quantovale.entities.Cidades;
import com.quantovale.entities.Estados;
import com.quantovale.entities.Problema;
import com.quantovale.entities.Usuario;
import com.quantovale.services.CarregaCategoriaService;
import com.quantovale.services.CarregaComboService;
import com.quantovale.services.ProblemaService;

@Controller
public class CadastrarProblemaController {
	
	@Autowired
	private CarregaComboService carregaComboService;
	
	@Autowired
	private CarregaCategoriaService carregaCategoriaService;
	
	@Autowired
	private ProblemaService problemaservice; 
	
	private Problema problema;
	
	private Categoria categoria;
	
	private List<Categoria> listaCategorias;
	
	private List<String>erros = new ArrayList<String>();

	@RequestMapping(value = "/novo-problema", method = RequestMethod.GET)
	public String carregarCombo(HttpServletRequest request){ 
		List<Estados> listaEstados = carregaComboService.carregaEstados();
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
		if(usuario!=null && !usuario.getEstado().equals("")){
			List<Cidades> listaCidades = carregaComboService.carregaCidades(Integer.parseInt(usuario.getEstado()));
			request.setAttribute("listaCidades", listaCidades);			
		}
		
		listaCategorias = carregaCategoriaService.carregaCategorias();
		if(listaCategorias.size()<=0){
			erros.add("categorias não encontrada");
			request.setAttribute("erros", erros);
		}else{
			request.setAttribute("listaCategorias", listaCategorias);
		}
		
		request.getSession().setAttribute("listaEstados", listaEstados);
		request.setAttribute("listaEstados", listaEstados);
		return "cadastrar-problema";

	}

	@RequestMapping(value = "/carregacombocidadenovoproblema", method = RequestMethod.GET)
	public String carregarComboCidade(HttpServletRequest request,@RequestParam("estado") String estado){ 

		if(!estado.trim().equals("")){
			int est = Integer.parseInt(estado);
			List<Cidades> listaCidades = carregaComboService.carregaCidades(est);
			request.setAttribute("listaCidades", listaCidades);	
			request.setAttribute("estadoselecionado", estado);
		}

		return "cadastrar-problema";

	}
	
	@RequestMapping(value = "/addproblema", method = RequestMethod.POST)
	public String addproblema(HttpServletRequest request,@RequestParam("categoria") String idcategoria, 
			@RequestParam("estado") String estado,
			@RequestParam("cidade") String cidade,
			@RequestParam("titulo")String titulo,
			@RequestParam(required = false)String imagem ,
			@RequestParam("descricao")String descricao,
			@RequestParam("telefone")String telefone,
			@RequestParam("valor")String valor			
			){ 
		
			problema = new Problema();
			categoria = new Categoria();
			categoria.setCodCategoria(Integer.parseInt(idcategoria));
			problema.setCategoria(categoria);
			problema.setEstado(Integer.parseInt(estado));
			problema.setCidade(Integer.parseInt(cidade));
			problema.setTitulo(titulo);
			problema.setDescricao(descricao);
			problema.setTelefone(telefone);
			problema.setValor(Double.parseDouble(valor));
			//problema.setImagem(Byte.parseByte(imagem));
		
			problemaservice.addProblema(problema);


		return "cadastrar-problema";

	}

}
