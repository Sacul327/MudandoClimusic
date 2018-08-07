package org.tgv.Dao;

import java.util.List;

import org.tgv.pojo.Productos;

public interface ProductosDao {

	
	public void save(Productos productos);
	public List<Productos> buscarTodos();
	public Productos buscoProducto(String producto);
	public void actualizar(Productos productos);
	public List<Productos> buscarGuitar();
	public List<Productos> buscarBass();
	public Productos buscarXId(int id); 
}
