package com.quantovale.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cidades")
public class Cidades {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	@Column (name="cod_cidades")
	private int cod_cidades;
	
	@Column (name="nome")
	private String nome;
	
	@Column (name ="cep")
	private String cep;
	
	@Column (name="estados_cod_estados")
	private  int estados_cod_estados;
	/**
	 * @return the cod_cidades
	 */
	public int getCod_cidades() {
		return cod_cidades;
	}
	/**
	 * @param cod_cidades the cod_cidades to set
	 */
	public void setCod_cidades(int cod_cidades) {
		this.cod_cidades = cod_cidades;
	}
	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}
	/**
	 * @param nome the nome to set
	 */
	public void setNome(String nome) {
		this.nome = nome;
	}
	/**
	 * @return the cep
	 */
	public String getCep() {
		return cep;
	}
	/**
	 * @param cep the cep to set
	 */
	public void setCep(String cep) {
		this.cep = cep;
	}
	/**
	 * @return the estados_cod_estados
	 */
	public int getEstados_cod_estados() {
		return estados_cod_estados;
	}
	/**
	 * @param estados_cod_estados the estados_cod_estados to set
	 */
	public void setEstados_cod_estados(int estados_cod_estados) {
		this.estados_cod_estados = estados_cod_estados;
	}
}
