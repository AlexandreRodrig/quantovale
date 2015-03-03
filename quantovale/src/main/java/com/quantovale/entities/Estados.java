package com.quantovale.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "estados")
public class Estados {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	@Column( name ="cod_estados")
	private int cod_estados;
	
	@Column (name ="sigla")
	private String sigla;
	
	@Column(name="nome")
	private String nome;
	/**
	 * @return the cod_estados
	 */
	public int getCod_estados() {
		return cod_estados;
	}
	/**
	 * @param cod_estados the cod_estados to set
	 */
	public void setCod_estados(int cod_estados) {
		this.cod_estados = cod_estados;
	}
	/**
	 * @return the sigla
	 */
	public String getSigla() {
		return sigla;
	}
	/**
	 * @param sigla the sigla to set
	 */
	public void setSigla(String sigla) {
		this.sigla = sigla;
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
	

}
