package com.quantovale.repositories;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quantovale.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Serializable>
{

}
