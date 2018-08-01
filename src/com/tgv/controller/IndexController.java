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

import org.tgv.pojo.Empleado;
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
	
//	@RequestMapping("/about")
//	public String showAbout(SessionStatus sessionStatus) {
//		// Limpia las sesiones que se tengan
//		sessionStatus.setComplete();
//		return "acercade";
//	}
	
	@RequestMapping("/Productos")
	public String showShopItems() {
		return "shop_items";
	}
	
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping("/pantallaVentas")
	public String showPantallaVentas() {
		return "pantalla_ventas";
	}
	
	@RequestMapping("/bajos")
	public String showBajos(){
		return "bajos";
	}
	@RequestMapping("/guitarras")
	public String showGuitarras() {
		return "guitarras";
	}
	@RequestMapping("/location")
	public String showLocation() {
		return "location";
	}
//	@RequestMapping("/usuarios")
//	public String showUsuarios() {
//		return "usuarios";
//	}
	@RequestMapping("/springLog")
	public String ShowSpringlog(Model model) {
		Empleado empleado= new Empleado();
		model.addAttribute("empleado", empleado);
		return "loginSpring";
	}
	
	
	
}
