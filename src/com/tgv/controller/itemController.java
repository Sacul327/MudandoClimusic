package com.tgv.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.tgv.pojo.Productos;

import com.tgv.service.ProductosService;

@Controller
public class itemController {

	
	@Autowired
	private ProductosService productosService;
	
	
	@RequestMapping(value="select/{id}/item", method=RequestMethod.GET)
	public String mostrarItem(Model model, @PathVariable("id") int id) {
		
		Productos producto = productosService.buscarXId(id);
		List<Productos> productos= productosService.buscarTodos();
		Random rand = new Random();
		List<Productos> listFiltrada = new ArrayList();
		
		
		for(int i=1;i<4;i++) {
			int  n = rand.nextInt(productos.size()) + 1;
			listFiltrada.add(productos.get(n));
		}
		model.addAttribute("listFiltrada", listFiltrada);
		model.addAttribute("producto", producto);
		//System.out.println(model.);
		return "item";
	}
	
	
	
}
