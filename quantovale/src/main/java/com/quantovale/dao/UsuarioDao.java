package com.quantovale.dao;

import com.quantovale.entities.Usuario;

public interface UsuarioDao {

	public Usuario addUsuario(Usuario usuario);

	Usuario validaEmailExistente(Usuario usuario);

	Usuario validaUsuario(Usuario usuario);

	Usuario validaEmaileHash(Usuario usuario);

	public Usuario findbyId(int id);

}
