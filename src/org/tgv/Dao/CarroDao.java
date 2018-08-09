package org.tgv.Dao;

import java.util.List;

import org.tgv.pojo.Carro;
import org.tgv.pojo.Empleado;

public interface CarroDao {
	
	public void save(Carro carro);
	public List<Carro> buscarTodos();
	public void delete(Carro carro);
	public Carro buscarXId(int id);
	


}
