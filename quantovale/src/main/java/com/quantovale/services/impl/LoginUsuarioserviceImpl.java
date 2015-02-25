package com.quantovale.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantovale.dao.UsuarioDao;
import com.quantovale.entities.Usuario;
import com.quantovale.services.LoginService;

@Service
public class LoginUsuarioserviceImpl implements LoginService {

	@Autowired
	private UsuarioDao usuarioDao;

	public Usuario logarUsuario(Usuario usuario) {

		usuario = usuarioDao.validaUsuario(usuario);

		return usuario;
	}

}
