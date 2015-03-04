package com.quantovale.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quantovale.dao.CarregaCategoriaDao;
import com.quantovale.entities.Categoria;
import com.quantovale.services.CarregaCategoriaService;

@Service
@Transactional
public class CarregaCategoriaServiceImpl implements CarregaCategoriaService {

	@Autowired
	private  CarregaCategoriaDao carregaCategoriaDao;
	@Override
	public List<Categoria> carregaCategorias() {
		
		List<Categoria>listaCategorias = carregaCategoriaDao.carregaCategorias();
		
		return listaCategorias;
	}
	

}
