package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.tgv.pojo.Empleado;
//import com.Climusic.Modelos.Productos;
//import com.Climusic.Service.LoginService;
//import com.Climusic.Service.PantVentaService;
import com.tgv.service.EmpleadoService;

@Controller
public class LoginController {
	
//	@Autowired
//	private PantVentaService pantVentasService;
//	@Autowired
//	private LoginService loginService;
	
	@Autowired
	private EmpleadoService empleadoService;
	
	
	@RequestMapping("/PantallaVentasAdmin")
	public String showPantallaVentasAdm() {
		return "pantalla_ventas_admin";
	}
	@RequestMapping("/pantalla_prueba")
	public String showPantallaprueba(){
		return "pantalla_ventas_prueba";
	}
	
//	@RequestMapping("/mostrarProductos")
//	public String mostrarListaprod(Model model){
//		System.out.println("asddddddddddddddddddddddddddddDDDDDDDDDDDDDDDDDDd");
//		List<Productos> productos= pantVentasService.buscarTodosPro();
//		model.addAttribute("productos", productos);
//		System.out.println("SOY LA LISTA MODELO!!!!!!!!"+model+"   SOY LA LISTA MODELO!!!!!!!!");
//		
//		System.out.println("SOY LISTA PRDUCTOS!!!!!!!!!!!!!"+productos+ "SOY SHOOOOOOOasdasdasd!!!");
//		return "/pantalla_ventas_prueba";
//	}
	
	@RequestMapping(value="/empleado/ingreso",method=RequestMethod.POST)
	public String handlAdmin(@ModelAttribute("empleado") Empleado empleadoForm, Model model/*,RedirectAttributes ra
			,@RequestParam("fuera") String fuera*/) {
		model.addAttribute("empleadoForm", empleadoForm);
		if(empleadoForm.getEmail()!=null) {
			if(empleadoService.datosCorrectos(empleadoForm.getEmail(), empleadoForm.getPassword())){
					System.out.println("Estoy dentro del primer if ChECK USER");
				if(empleadoService.comprueboAdmin(empleadoForm.getEmail())){
					return "redirect:/usuarios";
				}else {
					return "mostrarProductos";
				}
				
			}else {
				return "redirect:/";
			}
		}
		return null; //Redirect/: envia parametros a otro metodo
	}
}
