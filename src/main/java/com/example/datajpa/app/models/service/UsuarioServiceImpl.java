package com.example.datajpa.app.models.service;


import com.example.datajpa.app.models.dao.IRoleDao;
import com.example.datajpa.app.models.dao.IUsuarioDao;
import com.example.datajpa.app.models.entity.Role;
import com.example.datajpa.app.models.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;

@Service
public class UsuarioServiceImpl implements IUsuarioService {

    @Autowired
    private IUsuarioDao usuarioDao;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Autowired
    private IRoleDao roleDao;

    @Override
    public void save(Usuario usuario) {

        String password = usuario.getPassword();
        String encodedPassword = passwordEncoder.encode(password);

        usuario.setPassword(encodedPassword);

        usuario.setEnabled(true);

        Role role = new Role("ROLE_USER");

        usuario.setRoles(Arrays.asList(role));

        roleDao.save(role);
        usuarioDao.save(usuario);
    }

    @Override
    public Usuario findByUsername(String username) {
        return usuarioDao.findByUsername(username);
    }
}
