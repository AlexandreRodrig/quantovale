package com.quantovale.services;

import com.quantovale.entities.Usuario;

public interface LoginService {

	public Usuario logarUsuario(Usuario usuario);

	public Usuario sendEmailAlteracaoSenha(Usuario usuario);

	public Usuario validaEmaileHash(Usuario usuario);

	public Usuario alterarSenha(Usuario usuario, String password);

}
