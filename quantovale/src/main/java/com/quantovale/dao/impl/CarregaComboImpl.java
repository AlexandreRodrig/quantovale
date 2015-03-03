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

import com.quantovale.dao.CarregaComboDao;
import com.quantovale.entities.Cidades;
import com.quantovale.entities.Estados;
import com.quantovale.entities.Usuario;

@Repository
@Transactional
public class CarregaComboImpl implements CarregaComboDao{

	@PersistenceContext
	private EntityManager em;


	@Override
	public List<Estados> carregaEstados() {
		List<Estados> listestados = new ArrayList<Estados>();
		
		TypedQuery<Estados> query = em.createQuery("from Estados",Estados.class);
		try {
			listestados = query.getResultList();
		} catch (NonUniqueResultException | NoResultException e) {
			listestados = null;
		}
		return listestados;
	}


	@Override
	public List<Cidades> carregaCidades(int estado) {
		List<Cidades> listaCidades= new ArrayList<Cidades>();
		TypedQuery<Cidades> query = em.createQuery("from Cidades c where c.estados_cod_estados =?1 ",Cidades.class);
		query.setParameter(1, estado);	
		try {
			listaCidades = query.getResultList();
		} catch (NonUniqueResultException | NoResultException e) {
			listaCidades = null;
		}
		return listaCidades;
	}
	

}
