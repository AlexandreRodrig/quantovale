package com.quantovale.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.UsuarioDao;
import com.quantovale.entities.Usuario;

@Repository
@Transactional
public class UsuarioDaoImpl implements UsuarioDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Usuario addUsuario(Usuario usuario) {

		if (usuario.getId() <= 0) {
			em.persist(usuario);
		} else {
			usuario = em.merge(usuario);
		}
		return usuario;

	}

	@Override
	public Usuario validaEmailExistente(Usuario usuario) {

		TypedQuery<Usuario> query = em.createQuery(
				"select u from Usuario u where u.email=?1", Usuario.class);
		query.setParameter(1, usuario.getEmail());
		try {
			usuario = query.getSingleResult();
		} catch (NonUniqueResultException | NoResultException e) {
			usuario = null;
		}

		return usuario;
	}

	@Override
	public Usuario validaUsuario(Usuario usuario) {
		TypedQuery<Usuario> query = em.createQuery(
				"select u from Usuario u where u.email=?1 and u.password=?2",
				Usuario.class);
		query.setParameter(1, usuario.getEmail());
		query.setParameter(2, usuario.getPassword());
		try {
			usuario = query.getSingleResult();
		} catch (NonUniqueResultException | NoResultException e) {
			usuario = null;
		}
		return usuario;

	}

	@Override
	public Usuario validaEmaileHash(Usuario usuario) {
		TypedQuery<Usuario> query = em.createQuery(
				"select u from Usuario u where u.email=?1 and u.hash=?2",
				Usuario.class);
		query.setParameter(1, usuario.getEmail());
		query.setParameter(2, usuario.getHash());
		try {
			usuario = query.getSingleResult();
		} catch (NonUniqueResultException | NoResultException e) {
			usuario = null;
		}
		return usuario;
	}

	@Override
	public Usuario findbyId(int id) {
		Usuario usuario = new Usuario();
		TypedQuery<Usuario> query = em.createQuery(
				"select u from Usuario u where u.id=?1", Usuario.class);
		usuario.setId(id);
		query.setParameter(1, usuario.getId());
		try {
			usuario = query.getSingleResult();
		} catch (NonUniqueResultException | NoResultException e) {
			usuario = null;
		}
		return usuario;
	}

}
