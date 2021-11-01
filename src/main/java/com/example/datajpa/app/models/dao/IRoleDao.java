package com.example.datajpa.app.models.dao;

import com.example.datajpa.app.models.entity.Role;
import org.springframework.data.repository.CrudRepository;

public interface IRoleDao extends CrudRepository<Role, Long> {

}
