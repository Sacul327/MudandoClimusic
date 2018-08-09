package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.tgv.pojo.Empleado;
//import com.Climusic.Modelos.Productos;
//import com.Climusic.Service.LoginService;
//import com.Climusic.Service.PantVentaService;
import com.tgv.service.EmpleadoService;

@Controller
@SessionAttributes("empleado")
public class LoginController {
	
//	@Autowired
//	private PantVentaService pantVentasService;
//	@Autowired
//	private LoginService loginService;
	
	@Autowired
	private EmpleadoService empleadoService;
	
	
	
	
	@RequestMapping(value="/empleado/ingreso",method=RequestMethod.POST)
	public String handlAdmin(@ModelAttribute("empleado") Empleado empleadoForm, Model model/*,RedirectAttributes ra
			,@RequestParam("fuera") String fuera*/) {
		model.addAttribute("empleadoForm", empleadoForm);
		if(empleadoForm.getEmail()!=null) {
			if(empleadoService.datosCorrectos(empleadoForm.getEmail(), empleadoForm.getPassword())){
					model.addAttribute("empleado", empleadoForm);
				if(empleadoService.comprueboAdmin(empleadoForm.getEmail())){
					return "redirect:/usuarios";
				}else {
					return "redirect:/usuarios";
				}
				
			}else {
				return "redirect:/springLogError";
			}
		}
		return "redirect:/springLogError"; //Redirect/: envia parametros a otro metodo
	}
}
