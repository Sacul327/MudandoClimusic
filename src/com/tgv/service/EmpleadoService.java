package com.tgv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.tgv.Dao.EmpleadoDao;
import org.tgv.pojo.Empleado;

@Service
public class EmpleadoService {
	
	@Autowired
	private EmpleadoDao empleadoDao;
	
	
	public List<Empleado> buscarTodos() {
		return empleadoDao.buscarTodos();
	}

}
