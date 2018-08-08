//package com.tgv.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.tgv.pojo.Productos;
//
//import com.tgv.service.ProductosService;
//
//@Controller
//public class itemController {
//
//	
//	@Autowired
//	private ProductosService productosService;
//	
//	
//	
//	@RequestMapping(value="select/{id}/item")
//	public String mostrarItem(Model model, @PathVariable("id") int id) {
//		
//		Productos producto = productosService.buscarXId(id);
//		
//		model.addAttribute("producto", producto);
//		//System.out.println(model.);
//		return "item";
//	}
//	
//}
