package com.quantovale.services.impl;

import com.quantovale.dao.ProblemaDao;
import com.quantovale.entities.Problema;
import com.quantovale.services.ProblemaService;

public class ProblemaserviceImpl implements ProblemaService {

	private ProblemaDao problemaDao;
	
	@Override
	public Problema addProblema(Problema problema) {
		
		return problemaDao.addProblema(problema);
		
	}

}
