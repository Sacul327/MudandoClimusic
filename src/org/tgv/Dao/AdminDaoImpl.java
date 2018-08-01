//package org.tgv.Dao;
//
//
//import java.util.List;
//
//import org.hibernate.Criteria;
//import org.hibernate.Query;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.criterion.Restrictions;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
//import org.tgv.pojo.Admin;
//
//
//@Transactional
//@Repository
//public class AdminDaoImpl implements AdminDao {
//	
//	// Definimos una variable para las sesiones de Hibernate
//	@Autowired
//	private SessionFactory sessionFactory;
//	
//
//	
//	/*
//	 * (non-Javadoc)
//	 * @see org.tgv.Dao.AdminDao#save(org.tgv.pojo.Admin)
//	 * Creamos un metodo para obtener las sesiones
//	 */
//	public Session getSession(){
//		return sessionFactory.getCurrentSession();
//	}
//	
//	@Override
//	public void save(Admin admin) {
//		// TODO Auto-generated method stub
//		getSession().save(admin);
//	}
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<Admin> buscarTodos() {
//		// TODO Auto-generated method stub
//		Query query = getSession().createQuery("from Admin");
//		return query.list();
//	}
//
//	@Override
//	public Admin buscarXId(int id) {
//		// TODO Auto-generated method stub
//		Criteria cri = getSession().createCriteria(Admin.class);
//		// Propiedad de la clase, no de la BD en el metodo de eq de Restrictions
//		// Colocamos el nombre del atributo de la clase recordar esto
//		
//		cri.add(Restrictions.eq("idAd", id));
//		/*
//		System.out.println("Con Criteria: "+ cri.uniqueResult());
//		Admin p = (Admin) getSession().load(Admin.class, id);
//		System.out.println("Tengo mi persona: "+ p);
//	    */ 
//		return (Admin) cri.uniqueResult();
//	}
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<Admin> buscarXNombre(String nombre) {
//		// TODO Auto-generated method stub
//		Criteria cri = getSession().createCriteria(Admin.class);
//		cri.add(Restrictions.like("nombre", "%" + nombre + "%"));
//		return cri.list();
//	}
//
//	@Override
//	public void actualizar(Admin admin) {
//		// TODO Auto-generated method stub
//		getSession().update(admin);
//	}
//
//
//	@Override
//	public void borrar(Admin admin) {
//		// TODO Auto-generated method stub
//		getSession().delete(admin);
//	}
//	
//	
//
//}
