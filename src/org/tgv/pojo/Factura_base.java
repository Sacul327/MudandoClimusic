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
@Table(name="factura_base")
public class Factura_base {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_factura;
//	private int empleado_id;
	public int getId_factura() {
		return id_factura;
	}
	
	@OneToMany(mappedBy="facturaBase")
	private Set<Carro> carro;
	
	@ManyToOne
	@JoinColumn(name="empleado_id")
	private Empleado empleado;
	
	public void setId_factura(int id_factura) {
		this.id_factura = id_factura;
	}
//	public int getEmpleado_id() {
//		return empleado_id;
//	}
//	public void setEmpleado_id(int empleado_id) {
//		this.empleado_id = empleado_id;
//	}
//	public Factura_base(int id_factura, int empleado_id) {
//		this.id_factura = id_factura;
//		this.empleado_id = empleado_id;
//	}
	public Factura_base() {
	}
	public Set<Carro> getCarro() {
		return carro;
	}
	public void setCarro(Set<Carro> carro) {
		this.carro = carro;
	}
	public Empleado getEmpleado() {
		return empleado;
	}
	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}
	public Factura_base(int id_factura/*,int empleado_id */, Set<Carro> carro, Empleado empleado) {
		this.id_factura = id_factura;
//		this.empleado_id = empleado_id;
		this.carro = carro;
		this.empleado = empleado;
	}
	
	
	
}
