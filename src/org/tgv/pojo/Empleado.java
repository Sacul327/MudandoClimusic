package org.tgv.pojo;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@javax.persistence.Table(name="empleado")
public class Empleado {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_empleado;
	
	private String nombre;
	
	private String apellido;
	
	private String documento;
	
	private String password;
	
	private String email;
	
//	private int permiso;
	
	
	@OneToMany(mappedBy="empleado")
	private Set<Factura_base> facturaBase;
	
	@ManyToOne
	@JoinColumn(name="permiso")
	private Sys_permiso sysPermiso;
	
	public int getId_empleado() {
		return id_empleado;
	}
	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}
//	public int getPermiso() {
//		return permiso;
//	}
//	public void setPermiso(int permiso) {
//		this.permiso = permiso;
//	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDocumento() {
		return documento;
	}
	public void setDocumento(String documento) {
		this.documento = documento;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
//	public Empleado(int id_empleado, int permiso, String nombre, String apellido, String documento, String password,
//			String email) {
//		this.id_empleado = id_empleado;
//		this.permiso = permiso;
//		this.nombre = nombre;
//		this.apellido = apellido;
//		this.documento = documento;
//		this.password = password;
//		this.email = email;
//	}
	
	public Empleado() {
	
	}
	public Empleado(int id_empleado, String nombre, String apellido, String documento, String password, String email,
		/*int permiso,*/ Set<Factura_base> facturaBase, Sys_permiso sysPermiso) {
	this.id_empleado = id_empleado;
	this.nombre = nombre;
	this.apellido = apellido;
	this.documento = documento;
	this.password = password;
	this.email = email;
//	this.permiso = permiso;
	this.facturaBase = facturaBase;
	this.sysPermiso = sysPermiso;
}
	public Set<Factura_base> getFacturaBase() {
		return facturaBase;
	}
	public void setFacturaBase(Set<Factura_base> facturaBase) {
		this.facturaBase = facturaBase;
	}
	public Sys_permiso getSysPermiso() {
		return sysPermiso;
	}
	public void setSysPermiso(Sys_permiso sysPermiso) {
		this.sysPermiso = sysPermiso;
	}
//	public Sys_permiso getSysPermiso() {
//		return sysPermiso.get;
//	}
//	public void setSysPermiso(Sys_permiso sysPermiso) {
//		this.sysPermiso = sysPermiso;
//	}
	@Override
	public String toString() {
		return "Productos [id_empleado=" + id_empleado + ", permiso=" + /*permiso + */", nombre=" + nombre + ", apellido="
				+ apellido + ", documento=" + documento + ", password=" + password + ", email=" + email + "]";
	}
	
	


}
