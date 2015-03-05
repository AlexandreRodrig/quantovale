package com.quantovale.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.ProblemaDao;
import com.quantovale.entities.Problema;
import com.quantovale.services.ProblemaService;

@Service
@Transactional
public class ProblemaserviceImpl implements ProblemaService {

	@Autowired
	private ProblemaDao problemaDao;
	
	@Override
	public Problema addProblema(Problema problema) {
		
		return problemaDao.addProblema(problema);
		
	}

}
