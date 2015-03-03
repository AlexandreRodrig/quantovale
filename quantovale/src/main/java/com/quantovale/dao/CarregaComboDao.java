package com.quantovale.dao;

import java.util.List;

import com.quantovale.entities.Cidades;
import com.quantovale.entities.Estados;

public interface CarregaComboDao {

	public List<Estados> carregaEstados();

	public List<Cidades> carregaCidades(int estado);
}
