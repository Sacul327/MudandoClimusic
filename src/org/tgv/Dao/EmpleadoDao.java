package org.tgv.Dao;

import java.util.List;

import org.tgv.pojo.Empleado;


public interface EmpleadoDao {
	
	public void save(Empleado empleado);
	public List<Empleado> buscarTodos();
	public Empleado buscoUsuario(String email);
	public boolean comprueboAdmin(String email);
	public boolean datosCorrectos(String email, String pass);
	
	public Empleado buscarXId(int id);
//	public List<Empleado> buscarXNombre(String nombre);
	public void actualizar(Empleado empleado);
	public void borrar(Empleado empleado);

}
