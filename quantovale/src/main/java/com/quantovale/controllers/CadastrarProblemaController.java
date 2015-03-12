package com.quantovale.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
	public String addproblema(HttpServletRequest request ){ 

		problema = new Problema();
		categoria = new Categoria();


		DiskFileItemFactory dfif = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(dfif);


		try {
			List items = sfu.parseRequest(request);
			//a posicao 0 corresponde ao primeiro campo input do formulario (descricao)
			FileItem categ = (FileItem) items.get(0);
			
			String codCateg = categ.getString();
			categoria.setCodCategoria(Integer.parseInt(codCateg));
			problema.setCategoria(categoria);

			FileItem estado = (FileItem) items.get(1);
			problema.setEstado(Integer.parseInt( estado.getString()));
			
			FileItem cidade = (FileItem) items.get(2);
			problema.setCidade(Integer.parseInt(cidade.getString()));
			
			FileItem titulo = (FileItem) items.get(3);
			problema.setTitulo(titulo.getString());
						
			FileItem img = (FileItem) items.get(4);
			try {
				byte[] bytes = read(img);
				problema.setImagem(bytes);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			FileItem desc = (FileItem) items.get(5);
			problema.setDescricao(desc.getString());
			
			FileItem tel = (FileItem) items.get(6);
			problema.setTelefone(tel.getString());
			
			FileItem val = (FileItem) items.get(7);
			problema.setValor(Double.parseDouble(val.getString()));


			/*Falta validar o tamanho da imagem
			 * 
			 * 
			 * 
			 */

		} catch (FileUploadException e) {
			// tratar erro
		}


		problemaservice.addProblema(problema);


		return "cadastrar-problema";

	}
	
	private byte[] read(FileItem fi) throws IOException{
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        InputStream is = fi.getInputStream();
        int read = 0;
        final byte[] b = new byte[1024];

        while ((read = is.read(b)) != -1) {
            out.write(b, 0, read);
        }
        return out.toByteArray();
    }

}
