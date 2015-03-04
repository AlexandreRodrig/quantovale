package com.quantovale.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.hibernate.NonUniqueResultException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.CarregaCategoriaDao;
import com.quantovale.dao.CarregaComboDao;
import com.quantovale.entities.Categoria;
import com.quantovale.entities.Estados;

@Repository
@Transactional
public class CarregaCategoriaDaoImpl implements CarregaCategoriaDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Categoria> carregaCategorias() {
		List<Categoria> listaCategorias = new ArrayList<Categoria>();
		
		TypedQuery<Categoria> query = em.createQuery("from Categoria",Categoria.class);
		try {
			listaCategorias = query.getResultList();
		} catch (NonUniqueResultException | NoResultException e) {
			listaCategorias = null;
		}
		return listaCategorias;
		
	}

}
