package org.tgv.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.tgv.pojo.Empleado;

@Transactional
@Repository
public class EmpleadoDaoImpl implements EmpleadoDao {

	// Definimos una variable para las sesiones de Hibernate
		@Autowired
		private SessionFactory sessionFactory;
		

		
		/*
		 * (non-Javadoc)
		 * @see org.tgv.Dao.AdminDao#save(org.tgv.pojo.Admin)
		 * Creamos un metodo para obtener las sesiones
		 */
		public Session getSession(){
			return sessionFactory.getCurrentSession();
		}
		
	
	@SuppressWarnings("unchecked")
	public List<Empleado> buscarTodos() {
//		// TODO Auto-generated method stub
//		Query query = getSession().createQuery("select * from empleado");
//		
//		return query.list();
		return getSession().createCriteria(Empleado.class).list();
	}

}
