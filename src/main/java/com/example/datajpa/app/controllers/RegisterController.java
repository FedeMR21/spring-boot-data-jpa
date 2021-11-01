package com.example.datajpa.app.controllers;

import com.example.datajpa.app.models.entity.Role;
import com.example.datajpa.app.models.entity.Usuario;
import com.example.datajpa.app.models.service.IUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Locale;

@Controller
@SessionAttributes("usuario")
public class RegisterController {

    @Autowired
    private IUsuarioService usuarioService;

    @Autowired
    private MessageSource messageSource;

    @GetMapping("/registrar")
    public String registrar(Model model, Locale locale) {

        Usuario usuario = new Usuario();

        model.addAttribute("usuario", usuario);
        model.addAttribute("titulo", messageSource.getMessage("text.usuario.registrar.titulo", null, locale));
        return "registrar";
    }

    @PostMapping("/registrar")
    public String procesarRegistro(@Valid Usuario usuario,
                                   BindingResult result,
                                   Model model,
                                   RedirectAttributes flash,
                                   SessionStatus status, Locale locale) {

        if (result.hasErrors()) {
            model.addAttribute("titulo", messageSource.getMessage("text.usuario.registrar.titulo", null, locale));
            return "/registrar";
        }

        usuarioService.save(usuario);
        status.setComplete();
        model.addAttribute("success", messageSource.getMessage("text.usuario.registrar.success", null, locale));
        return "redirect:/login";
    }
}
