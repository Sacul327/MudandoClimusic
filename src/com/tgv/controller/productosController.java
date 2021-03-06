package com.tgv.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.tgv.pojo.Empleado;
import org.tgv.pojo.Productos;

import com.tgv.service.ProductosService;

@Controller
public class productosController {

	@Autowired
	private ProductosService productosService;
	
	
//	@RequestMapping("/guitarras")
//	public String showGuitarras(Model model, @ModelAttribute("resultado") String resultado) {
//		
//		List<Productos> listaFiltrada = new ArrayList();
//		List<Productos> productos = productosService.buscarTodos();
//		for(Productos prod: productos) {
//			System.out.println(prod);
//			if(prod.getTipo().equals("guitar")) {
//				
//			}
////			if(prod.getTipo().equals("guitar")) {
////				System.out.println(prod);
////			}
//		}
//		
//		System.out.println("SOY LISTA FILTRADA************************************************"+listaFiltrada);
//		
//		Productos producto = new Productos();
//		model.addAttribute("producto", producto);
//		model.addAttribute("resultado", resultado);
//		model.addAttribute("listaFiltrada", listaFiltrada);
//		return "guitarras";
//	}
	
	@RequestMapping("/guitarras")
	public String showGuitarras(Model model, @ModelAttribute("resultado") String resultado) {
		
		Productos producto = new Productos();
		List<Productos> productos = productosService.buscarGuitar();
		model.addAttribute("producto", producto);
		model.addAttribute("resultado", resultado);
		model.addAttribute("productos", productos);
		return "guitarras";
	}
	
	@RequestMapping("/bajos")
	public String showBajos(Model model, @ModelAttribute("resultado") String resultado) {
		Productos producto = new Productos();
		List<Productos> productos = productosService.buscarBass();
		model.addAttribute("producto", producto);
		model.addAttribute("resultado", resultado);
		model.addAttribute("productos", productos);
		return "bajos";
	}
	
//	@RequestMapping(value="select/{id}/item", method=RequestMethod.GET)
//	public String mostrarItem(Model model, @PathVariable("id") int id) {
//		
//		Productos producto = productosService.buscarXId(id);
//		
//		model.addAttribute("producto", producto);
//		//System.out.println(model.);
//		return "item";
//	}
	
}
