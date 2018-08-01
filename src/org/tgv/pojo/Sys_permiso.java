package org.tgv.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_permiso")
public class Sys_permiso {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_permiso;
	private String permiso;
	
	public int getId_permiso() {
		return id_permiso;
	}
	public void setId_permiso(int id_permiso) {
		this.id_permiso = id_permiso;
	}
	public String getPermiso() {
		return permiso;
	}
	public void setPermiso(String permiso) {
		this.permiso = permiso;
	}
	public Sys_permiso(int id_permiso, String permiso) {
		
		this.id_permiso = id_permiso;
		this.permiso = permiso;
	}
	public Sys_permiso() {
			
		}
	
	

}
