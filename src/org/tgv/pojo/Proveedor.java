package org.tgv.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="proveedor")
public class Proveedor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_proveedor;
	
	private String nombre_empresa;
	
	public int getId_proveedor() {
		return id_proveedor;
	}
	public void setId_proveedor(int id_proveedor) {
		this.id_proveedor = id_proveedor;
	}
	public String getNombre_empresa() {
		return nombre_empresa;
	}
	public void setNombre_empresa(String nombre_empresa) {
		this.nombre_empresa = nombre_empresa;
	}
	public Proveedor(int id_proveedor, String nombre_empresa) {
		
		this.id_proveedor = id_proveedor;
		this.nombre_empresa = nombre_empresa;
	}
	public Proveedor() {
		
	}
	
	

}
