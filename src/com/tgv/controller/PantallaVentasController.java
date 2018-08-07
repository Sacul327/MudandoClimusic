package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.tgv.pojo.Carro;
import org.tgv.pojo.Factura_base;
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
	public String productos(Model model, @ModelAttribute("resultado") String resultado) {
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
		model.addAttribute("carros", carros);
		
		return "pantalla_ventas_admin";
	}
	
	@RequestMapping(value="/carro/{numprod}/save",method=RequestMethod.GET)
	public String carroMostrar(Model model,@PathVariable("numprod") int id_instrumento) {
		System.out.println("Estoy EN CARRO SAVE!");
		Carro carro=new Carro();
		Factura_base facbas=new Factura_base();
		facbas.setId_factura(1);
		Productos productos=productosService.buscarXId(id_instrumento);
		facbas.setId_factura(1);
		carro.setFacturaBase(facbas);
		carro.setProductos(productos);
		carroService.save(carro);
		System.out.println(carro.toString());
		
		return "redirect:/pantallaVentasAdmin";
	}

}
