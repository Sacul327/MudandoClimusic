package org.tgv.Dao;

import java.util.List;

import org.tgv.pojo.Carro;

public interface CarroDao {
	
	public void save(Carro carro);
	public List<Carro> buscarTodos();

}
