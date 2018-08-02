package com.tgv.service;

import java.sql.Timestamp;
import java.util.Date;
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
	
	public void saveOrUpdate(Empleado empleado) {
		// TODO Auto-generated method stub
		
		if (empleado.getId_empleado() == 0) {
			// insertamos los datos
			 empleadoDao.save(empleado);
		}
		else {
			 empleadoDao.actualizar(empleado);
		}
		
	}
	public Empleado buscarXId(int id){
		return empleadoDao.buscarXId(id);
	}
	
	public void delete(int idAd) {
		Empleado empleado = empleadoDao.buscarXId(idAd);
		empleadoDao.borrar(empleado);
	}
//	
//	public void buscarXEmail(String email) {
//		empleadoDao.buscarXEmail(email);
//	}

}
