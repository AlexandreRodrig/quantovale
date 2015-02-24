/**
 * 
 */
package com.quantovale.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.quantovale.entities.User;
import com.quantovale.services.UserService;
import com.quantovale.web.config.SecurityUser;

/**
 * @author Siva
 *
 */
@Component
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserService userService;

	public UserDetails loadUserByUsername(String userName)
			throws UsernameNotFoundException {
		User user = userService.findUserByEmail(userName);
		if (user == null) {
			throw new UsernameNotFoundException("UserName " + userName
					+ " not found");
		}
		return new SecurityUser(user);
	}

}
