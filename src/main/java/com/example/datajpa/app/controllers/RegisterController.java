package com.example.datajpa.app.controllers;

import com.example.datajpa.app.models.entity.Role;
import com.example.datajpa.app.models.entity.Usuario;
import com.example.datajpa.app.models.service.IUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@SessionAttributes("usuario")
public class RegisterController {

    @Autowired
    private IUsuarioService usuarioService;

    @GetMapping("/registrar")
    public String registrar(Model model) {

        Usuario usuario = new Usuario();

        model.addAttribute("usuario", usuario);
        model.addAttribute("titulo", "Registro de Usuarios");
        return "registrar";
    }

    @PostMapping("/registrar")
    public String procesarRegistro(@Valid Usuario usuario,
                                   BindingResult result,
                                   Model model,
                                   RedirectAttributes flash,
                                   SessionStatus status) {

        if (result.hasErrors()) {
            model.addAttribute("titulo", "Registro de Usuarios");
            return "/registrar";
        }

        usuarioService.save(usuario);
        status.setComplete();
        flash.addFlashAttribute("success", "Usuario registrado con éxito!");
        return "redirect:/login";
    }
}
