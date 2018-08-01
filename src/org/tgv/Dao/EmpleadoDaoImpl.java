package org.tgv.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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
	
	
	public Empleado buscoUsuario(String email) {
		
		Empleado emp = new Empleado();
		Criteria cri = getSession().createCriteria(Empleado.class);
        // Propiedad de la clase, no de la BD en el metodo de eq de Restrictions
        // Colocamos el nombre del atributo de la clase recordar esto
        cri.add(Restrictions.eq("email", email));
        emp=(Empleado) cri.uniqueResult();
        
        return emp;
	}
//	
	public boolean datosCorrectos(String email, String pass) {
		Empleado emp = new Empleado();
		boolean existe=false;
		emp=buscoUsuario(email);
		System.out.println("ESTOY EN DATOS CORRECTOS IMPRIMO TODO EL OBJETO"+emp);
		if(emp.getEmail().equals(email) && emp.getPassword().equals(pass)) {
        	existe = true;
        }
		return existe;
	}
	
	public boolean comprueboAdmin(String email) {
		Empleado emp = new Empleado();
		boolean existe=false;
		emp=buscoUsuario(email);
		System.out.println("ESTOY EN COMPRUEBO ADMIN GETPERMISO"+emp.getPermiso());
		if(emp.getPermiso()==1) {
        	existe = true;
        }
		return existe;
	}
	
	
	
//	public void buscarXEmail(String email) {
//		
//	}

}
