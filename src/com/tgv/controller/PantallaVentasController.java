package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.tgv.pojo.Carro;
import org.tgv.pojo.Productos;

import com.tgv.service.CarroService;
import com.tgv.service.ProductosService;

@Controller
public class PantallaVentasController {
	
	@Autowired
	private ProductosService productosService;
	
	@Autowired
	private CarroService carroService;
	
	
	@RequestMapping("/pantallaVentasAdmin")
	public String Productos(Model model, @ModelAttribute("resultado") String resultado) {
		//producto LISTA
		List<Productos> productos = productosService.buscarTodos();
		Productos producto = new Productos();
		model.addAttribute("producto", producto);
		model.addAttribute("resultado", resultado);
		model.addAttribute("productos", productos);
		
		//carro lista
		List<Carro> carros = carroService.buscarTodos();
		Carro carro = new Carro();
		model.addAttribute("carro", carro);
		model.addAttribute("resultado", resultado);
		model.addAttribute("Carros", carros);
		
		return "pantalla_ventas_admin";
	}

}
