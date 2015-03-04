package com.quantovale.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.ProblemaDao;
import com.quantovale.entities.Problema;

@Repository
@Transactional
public class ProblermaDaoImpl implements ProblemaDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Problema addProblema(Problema problema) {
		
		if (problema.getIdProblema() <= 0) {
			em.persist(problema);
		} else {
			problema = em.merge(problema);
		}
		return problema;
		
		
	}

}
