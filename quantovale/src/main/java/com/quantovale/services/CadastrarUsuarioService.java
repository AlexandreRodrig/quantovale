package com.quantovale.services;

import com.quantovale.entities.Usuario;

public interface CadastrarUsuarioService {
	
	public Usuario cadastrarUsuario(Usuario usuario);
	// valida se ja existe email na base
	public boolean validaEmailexistente(Usuario usuario);

}
