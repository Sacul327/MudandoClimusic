package org.tgv.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.tgv.pojo.Carro;
import org.tgv.pojo.Empleado;

@Transactional
@Repository
public class CarroDaoImpl implements CarroDao{

	
	@Autowired
	private SessionFactory sessionFactory;

	
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	
	public void save(Carro carro) {
		getSession().save(carro);
	}

	
	public List<Carro> buscarTodos() {
		return getSession().createCriteria(Carro.class).list();
	}
	
	
	public void delete(Carro carro) {
		getSession().delete(carro);
	}
	
	
	public Carro buscarXId(int id) {
		return getSession().get(Carro.class, id);
	}

}
