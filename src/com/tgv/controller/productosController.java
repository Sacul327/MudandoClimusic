package com.tgv.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.tgv.pojo.Empleado;
import org.tgv.pojo.Productos;

import com.tgv.service.ProductosService;

@Controller
public class productosController {

	@Autowired
	private ProductosService productosService;
	
	
	@RequestMapping("/guitar")
	public String Empleados(Model model, @ModelAttribute("resultado") String resultado) {
		
		List<Productos> listaFiltrada = new ArrayList();
		List<Productos> productos = productosService.buscarTodos();
		for(Productos prod: productos) {
			if(prod.getTipo().equals("guitar")) {
				listaFiltrada.add(prod);
			}
		}
		System.out.println(listaFiltrada);
		
		Productos producto = new Productos();
		model.addAttribute("producto", producto);
		model.addAttribute("resultado", resultado);
		model.addAttribute("productos", productos);
		return "guitarras";
	}
	
	
}
