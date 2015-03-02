package com.quantovale.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.UsuarioDao;
import com.quantovale.entities.Usuario;
import com.quantovale.repositories.UserRepository;
import com.quantovale.services.CadastrarUsuarioService;

@Service
@Transactional
public class CadastrarUsuarioServiceImpl implements CadastrarUsuarioService {

	@Autowired
	private UsuarioDao usuarioDao;

	public Usuario cadastrarUsuario(Usuario usuario){

		return usuarioDao.addUsuario(usuario);

	}

	public boolean validaEmailexistente(Usuario usuario) {

		boolean jaexisteemail = false;
		usuario = usuarioDao.validaEmailExistente(usuario);
		if(usuario != null){
			jaexisteemail = true;
		}

		return jaexisteemail;


	}

	@Override
	public Usuario alterarUsuario(Usuario usuario) 
	{
		return usuarioDao.addUsuario(usuario);
	}

}
