package com.example.datajpa.app.models.service;

import com.example.datajpa.app.models.entity.Usuario;

public interface IUsuarioService {

    public void save(Usuario usuario);

    public Usuario findByUsername(String username);
}
