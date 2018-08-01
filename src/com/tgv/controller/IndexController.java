/**
 * 
 */
package com.tgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.tgv.service.EmpleadoService;

/**
 * @author Soporte
 *
 */
@Controller
@SessionAttributes("resultado")
public class IndexController {
	
	@Autowired
	private EmpleadoService empleadoService;

	@RequestMapping("/")
	public String showIndex(Model model) {
		model.addAttribute("resultado", "Resultado desde Sesion");
		System.out.println(empleadoService.buscarTodos());
		return "index";
	}
	
	@RequestMapping("/about")
	public String showAbout(SessionStatus sessionStatus) {
		// Limpia las sesiones que se tengan
		sessionStatus.setComplete();
		return "acercade";
	}
	
	
}
