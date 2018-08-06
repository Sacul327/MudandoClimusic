package com.tgv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.tgv.Dao.ProductosDao;
import org.tgv.pojo.Productos;

@Service
public class ProductosService {
	
	@Autowired
	private ProductosDao productosDao;
	
	
	public List<Productos> buscarTodos() {
		// TODO Auto-generated method stub
		return productosDao.buscarTodos();
	}
	
	public List<Productos> buscarGuitar(){
		return productosDao.buscarGuitar();
	}
	public List<Productos> buscarBass(){
		return productosDao.buscarBass();
	}
	
}
