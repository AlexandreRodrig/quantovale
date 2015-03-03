package com.quantovale.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.CarregaComboDao;
import com.quantovale.entities.Cidades;
import com.quantovale.entities.Estados;
import com.quantovale.services.CarregaComboService;

@Service
@Transactional
public class CarregaComboServiceImpl implements CarregaComboService {

	@Autowired
	private CarregaComboDao carregaComboDao;
	@Override
	public List<Estados> carregaEstados() {
		
		List<Estados>listEstados = carregaComboDao.carregaEstados();
		return listEstados;
		
		
	}
	@Override
	public List<Cidades> carregaCidades(int estado) {
		
		List<Cidades>listCidades = carregaComboDao.carregaCidades(estado);
		return listCidades;
	}

}
