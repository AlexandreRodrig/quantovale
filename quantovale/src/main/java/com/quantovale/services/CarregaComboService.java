package com.quantovale.services;

import java.util.List;

import com.quantovale.entities.Cidades;
import com.quantovale.entities.Estados;

public interface CarregaComboService {
	
	public List<Estados> carregaEstados();

	public List<Cidades> carregaCidades(int estado);

}
