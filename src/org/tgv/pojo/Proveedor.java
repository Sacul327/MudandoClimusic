package org.tgv.pojo;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="proveedor")
public class Proveedor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_proveedor;
	
	private String nombre_empresa;
	
	@OneToMany(mappedBy="proveedor")
	private Set<Productos> productos;
	
	
	public Set<Productos> getProductos() {
		return productos;
	}
	public void setProductos(Set<Productos> productos) {
		this.productos = productos;
	}
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
	
	
	
	public Proveedor(int id_proveedor, String nombre_empresa, Set<Productos> productos) {
		this.id_proveedor = id_proveedor;
		this.nombre_empresa = nombre_empresa;
		this.productos = productos;
	}
	public Proveedor() {
		
	}
	
	

}
