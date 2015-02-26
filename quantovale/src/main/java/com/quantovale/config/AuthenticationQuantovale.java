package com.quantovale.config;

import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

import com.quantovale.entities.Usuario;

public class AuthenticationQuantovale implements Authentication {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 808623963548952324L;

	/** The customer. */
	private Usuario user;

	/**
	 * Instantiates a new vivo desafio pele authentication.
	 * 
	 * @param customer
	 *            the customer
	 */
	public AuthenticationQuantovale(Usuario user) {
		this.user = user;
	}

	/**
	 * Return the name.
	 * 
	 * @return name
	 */

	/**
	 * Return the Authorities.
	 * 
	 * @return the Authorities
	 */
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return AuthorityUtils.createAuthorityList("ROLE_USER");
	}

	/**
	 * Return the Credentials.
	 * 
	 * @return the Credentials
	 */
	@Override
	public Object getCredentials() {
		return null;
	}

	/**
	 * Return the Details.
	 * 
	 * @return the Details
	 */
	@Override
	public Object getDetails() {
		return null;
	}

	/**
	 * Return the Principal.
	 * 
	 * @return the Principal
	 */
	@Override
	public Object getPrincipal() {
		return this.user;
	}

	/**
	 * Return the if is Authenticated.
	 * 
	 * @return the Authenticated
	 */
	@Override
	public boolean isAuthenticated() {
		return true;
	}

	/**
	 * Set the Authenticated.
	 * 
	 * @param isAuthenticated
	 *            the new authenticated
	 * @throws IllegalArgumentException
	 *             the illegal argument exception
	 */
	@Override
	public void setAuthenticated(boolean isAuthenticated)
			throws IllegalArgumentException {
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

}