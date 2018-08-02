package org.tgv.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.tgv.pojo.Carro;

@Transactional
@Repository
public class CarroDaoImpl implements CarroDao{

	
	@Autowired
	private SessionFactory sessionFactory;

	
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void save(Carro carro) {
		getSession().save(carro);
	}

	@Override
	public List<Carro> buscarTodos() {
		return getSession().createCriteria(Carro.class).list();
	}

}
