package com.quantovale.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "categorias")
public class Categoria {
	
	@Id
	@GeneratedValue
	@Column( name = "cod_categorias")
	private int codCategoria;
	
	@Column(name = "nome")
	private String nome;
	
	/**
	 * @return the codCategoria
	 */
	public int getCodCategoria() {
		return codCategoria;
	}
	/**
	 * @param codCategoria the codCategoria to set
	 */
	public void setCodCategoria(int codCategoria) {
		this.codCategoria = codCategoria;
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
