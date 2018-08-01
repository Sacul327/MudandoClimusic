
package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.tgv.pojo.Empleado;

import com.tgv.service.EmpleadoService;


@Controller
public class UserController {
	
//	@Autowired
//	private AdminService adminService;
	
	@Autowired
	private EmpleadoService empleadoService;

//	@RequestMapping("/admin")
	/*
	 * Model es una interface que usaremos para poder ingresar
	 * parametros, es valido solo para este metodo, no podremos enviar estos 
	 * a otro metodo, por ejemplo about
	 */
//	public String Administrador(Model model, @ModelAttribute("resultado") String resultado) {
//		List<Admin> admins = adminService.buscarTodos();
//		Admin admin = new Admin();
//		model.addAttribute("admin", admin);
//		model.addAttribute("resultado", resultado);
//		model.addAttribute("admins", admins);
//		return "administrador";
//	}
	
	@RequestMapping("/usuarios")
	public String Empleados(Model model, @ModelAttribute("resultado") String resultado) {
		List<Empleado> empleados = empleadoService.buscarTodos();
		Empleado empleado = new Empleado();
		model.addAttribute("empleado", empleado);
		model.addAttribute("resultado", resultado);
		model.addAttribute("empleados", empleados);
		return "usuarios";
	}
	
//	@RequestMapping(value="/admin/save",method=RequestMethod.POST)
//	public String handlAdmin(@ModelAttribute("admin") Admin adminForm, 
//			Model model, RedirectAttributes ra) {
//		
//		adminService.saveOrUpdate(adminForm);
//		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");
//		
//		
//		return "redirect:/admin";
//	}
	
	// /admin/${admin.idAd}/actualizar
//	@RequestMapping(value="/admin/{idAd}/actualizar")
//	public String mostrarActualizar(Model model, @PathVariable("idAd") int id) {
//		
//		Admin admin = adminService.buscarXId(id);
//		
//		model.addAttribute("admin", admin);
//		//System.out.println(model.);
//		return "administrador";
//	}
//	
//	@RequestMapping("/admin/{idAd}/delete")
//	public String delete(@PathVariable("idAd") int idAd, RedirectAttributes ra) {
//		
//		adminService.delete(idAd);
//		ra.addFlashAttribute("resultado", "Cambios realizados con éxito");
//
//		return "redirect:/admin";
//	}
	
}
