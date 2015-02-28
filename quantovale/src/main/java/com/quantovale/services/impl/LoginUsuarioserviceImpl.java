package com.quantovale.services.impl;

import java.util.Random;

import org.apache.commons.mail.EmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantovale.dao.UsuarioDao;
import com.quantovale.entities.Usuario;
import com.quantovale.services.LoginService;
import com.quantovale.utius.EnviarEmail;

@Service
public class LoginUsuarioserviceImpl implements LoginService {

	@Autowired
	private UsuarioDao usuarioDao;

	public Usuario logarUsuario(Usuario usuario) {

		usuario = usuarioDao.validaUsuario(usuario);

		return usuario;
	}

	@Override
	public Usuario sendEmailAlteracaoSenha(Usuario usuario) {

		usuario = usuarioDao.validaEmailExistente(usuario);
		EnviarEmail enviarEmail = new EnviarEmail();

		if (usuario != null) {
			// envia email usuario
			Random gerador = new Random();

			// limpa hash
			usuario.setHash("");
			usuario = usuarioDao.addUsuario(usuario);

			// add hash no ususario
			usuario.setHash(String.valueOf(gerador.nextInt()));
			usuario = usuarioDao.addUsuario(usuario);

			if (usuario != null) {

				String link = "http://localhost:8080/quantovale/redirectalterarSenha?email="
						+ usuario.getEmail() + "&hash=" + usuario.getHash();
				String msg = "Clique neste link " + link
						+ " para alterar a sua senha ";

				try {
					enviarEmail.sendEmail(usuario.getEmail(), msg,
							"Alteração de senha");
				} catch (EmailException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}
		return usuario;
	}

	@Override
	public Usuario validaEmaileHash(Usuario usuario) {

		usuario = usuarioDao.validaEmaileHash(usuario);

		return usuario;
	}

	@Override
	public Usuario alterarSenha(Usuario usuario, String password) {
		usuario = usuarioDao.findbyId(usuario.getId());
		usuario.setPassword(password);
		usuario = usuarioDao.addUsuario(usuario);
		return usuario;
	}
}
