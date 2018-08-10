package com.tgv.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.tgv.pojo.Carro;
import org.tgv.pojo.Empleado;
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
	
	
	@RequestMapping("/Ventas")
	public String productos(Model model, @ModelAttribute("resultado") String resultado,HttpSession session) {
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
		
		Empleado emp= (Empleado) session.getAttribute("empleadoSession");
		String ventas;
		if(emp.getSysPermiso().getId_permiso()==1) {
			ventas="Ventas";
		}else {
			ventas="Ventas2";
		}
		
//		return "pantallaVentasAdmin";
		return ventas;
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
		
//		return "redirect:/pantallaVentasAdmin";
		return "redirect:/Ventas";
	}
	@RequestMapping(value="/carro/{numcarro}/delete",method=RequestMethod.GET)
	public String carroBorrar(Model model,@PathVariable("numcarro") int id_carro) {
		
		Carro carro= carroService.buscarXId(id_carro);
		carroService.delete(carro);
		
		return "redirect:/Ventas";
//		return "redirect:/pantallaVentasAdmin";
	}

}
