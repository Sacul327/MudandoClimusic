//package com.tgv.service;
//
//import java.sql.Timestamp;
//import java.util.Date;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.tgv.Dao.AdminDao;
//import org.tgv.pojo.Admin;
//
//
//
//@Service
//public class AdminService {
//
//	@Autowired
//	private AdminDao adminDao;
//	
//	/*
//	 * Creamos el metodo para utilizar los dao
//	 */
//	
//	public void save(Admin admin) {
//		admin.setFechaCreacion(new Timestamp(new Date().getTime()));
//		 adminDao.save(admin);
//	}
//
//	public List<Admin> buscarTodos() {
//		// TODO Auto-generated method stub
//		return adminDao.buscarTodos();
//	}
//
//	public Admin buscarXId(int id) {
//		// TODO Auto-generated method stub
//		return adminDao.buscarXId(id);
//	}
//
//	public void saveOrUpdate(Admin admin) {
//		// TODO Auto-generated method stub
//		
//		if (admin.getIdAd() == 0) {
//			// insertamos los datos
//			admin.setFechaCreacion(new Timestamp(new Date().getTime()));
//			 adminDao.save(admin);
//		}
//		else {
//			 adminDao.actualizar(admin);
//		}
//		
//	}
//	
//	public void delete(int idAd) {
//		Admin admin = adminDao.buscarXId(idAd);
//		adminDao.borrar(admin);
//	}
//	
//}
