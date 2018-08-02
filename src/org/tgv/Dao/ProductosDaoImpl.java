package org.tgv.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.tgv.pojo.Empleado;
import org.tgv.pojo.Productos;


@Transactional
@Repository
public class ProductosDaoImpl implements ProductosDao {
	

	@Autowired
	private SessionFactory sessionFactory;

	
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(Productos productos) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Productos> buscarTodos() {
		return getSession().createCriteria(Productos.class).list();
	}

	@Override
	public Productos buscoProducto(String producto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void actualizar(Productos productos) {
		// TODO Auto-generated method stub
		
	}

}