package org.tgv.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.tgv.pojo.Productos;


@Transactional
@Repository
public class ProductosDaoImpl implements ProductosDao {
	

	@Autowired
	private SessionFactory sessionFactory;

	
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	
	public void save(Productos productos) {
		// TODO Auto-generated method stub
		
	}

	
	public List<Productos> buscarTodos() {
		return getSession().createCriteria(Productos.class).list();
	}

	
	public Productos buscoProducto(String producto) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public void actualizar(Productos productos) {
		// TODO Auto-generated method stub
		
	}

	
	public List<Productos> buscarGuitar() {
			String guitarra="guitar";
			
			List<Productos> prod= new ArrayList();
			Criteria cri = getSession().createCriteria(Productos.class);
	        // Propiedad de la clase, no de la BD en el metodo de eq de Restrictions
	        // Colocamos el nombre del atributo de la clase recordar esto
	        cri.add(Restrictions.eq("tipo", guitarra));
	        prod= cri.list();
	        System.out.println(prod);
	        return prod;
		
	}
	
	public List<Productos> buscarBass() {
			String bajo="bass";
			
			List<Productos> prod= new ArrayList();
			Criteria cri = getSession().createCriteria(Productos.class);
	        // Propiedad de la clase, no de la BD en el metodo de eq de Restrictions
	        // Colocamos el nombre del atributo de la clase recordar esto
	        cri.add(Restrictions.eq("tipo", bajo));
	        prod= cri.list();
	        return prod;
		
	}
	public Productos buscarXId(int id) {
		return getSession().get(Productos.class, id);
	}

}
