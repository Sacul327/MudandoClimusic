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
//	public boolean listaEmpleados(String email, String password) {
//		return empleadoDao.listaEmpleados(email, password);
//	}
	
	public boolean datosCorrectos(String email, String pass) {
		return empleadoDao.datosCorrectos(email, pass);
	}
	
	
	public boolean comprueboAdmin(String user) {
		return empleadoDao.comprueboAdmin(user);
	}
//	
//	public void buscarXEmail(String email) {
//		empleadoDao.buscarXEmail(email);
//	}

}
