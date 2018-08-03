
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
	

	
	@Autowired
	private EmpleadoService empleadoService;

	/*
	 * Model es una interface que usaremos para poder ingresar
	 * parametros, es valido solo para este metodo, no podremos enviar estos 
	 * a otro metodo, por ejemplo about
	 */

	
	@RequestMapping("/usuarios")
	public String Empleados(Model model, @ModelAttribute("resultado") String resultado) {
		List<Empleado> empleados = empleadoService.buscarTodos();
		Empleado empleado = new Empleado();
		model.addAttribute("empleado", empleado);
		model.addAttribute("resultado", resultado);
		model.addAttribute("empleados", empleados);
		return "usuarios";
	}
	
	@RequestMapping(value="/empleado/save",method=RequestMethod.POST)
	public String handlAdmin(@ModelAttribute("empleado") Empleado empleadoForm, 
			Model model, RedirectAttributes ra) {
		
		empleadoService.saveOrUpdate(empleadoForm);
		ra.addFlashAttribute("resultado", "Cambios realizados con exito");
		
		
		return "redirect:/adduser";
	}
	
	@RequestMapping(value="list/{idAd}/borrar")
	public String borrar(Model model,@PathVariable("idAd") int idAd){
		Empleado empleado =empleadoService.buscarXId(idAd);
		model.addAttribute("empleado", empleado);
		empleadoService.delete(idAd);
		return "redirect:/usuarios";
	}
	@RequestMapping(value="list/{idAd}/borraradd")
	public String borraradd(Model model,@PathVariable("idAd") int idAd){
		Empleado empleado =empleadoService.buscarXId(idAd);
		model.addAttribute("empleado", empleado);
		empleadoService.delete(idAd);
		return "redirect:/adduser";
	}
	
	@RequestMapping("/adduser")
	public String showAddUser(Model model,@ModelAttribute("resultado") String resultado) {
		List<Empleado> empleados = empleadoService.buscarTodos();
		Empleado empleado = new Empleado();
		model.addAttribute("empleado", empleado);
		model.addAttribute("resultado", resultado);
		model.addAttribute("empleados", empleados);
		return "adduser";
	}
	
	@RequestMapping(value="list/{idAd}/actualizar")
	public String mostrarActualizar(Model model, @PathVariable("idAd") int id) {
		
		Empleado empleado = empleadoService.buscarXId(id);
		
		model.addAttribute("empleado", empleado);
		//System.out.println(model.);
		return "adduser";
	}

	
}
