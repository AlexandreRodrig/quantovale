/**
 * 
 */
package com.quantovale.dao;

import java.util.List;

import com.quantovale.entities.User;

/**
 * @author katsi02
 *
 */
public interface UserDao {

	public List<User> findAll();
	
	public User create(User user);
	
	public User findUserById(int id);

	public User login(String email, String password);
	
}
