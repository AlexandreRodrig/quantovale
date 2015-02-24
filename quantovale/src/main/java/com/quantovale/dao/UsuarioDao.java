package com.quantovale.dao;

import com.quantovale.entities.Usuario;

public interface UsuarioDao {
	
	public Usuario addUsuario (Usuario usuario);
	
	Usuario validaEmailExistente(Usuario usuario);
}
