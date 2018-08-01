package org.tgv.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="factura_base")
public class Factura_base {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_factura;
	private int empleado_id;
	public int getId_factura() {
		return id_factura;
	}
	public void setId_factura(int id_factura) {
		this.id_factura = id_factura;
	}
	public int getEmpleado_id() {
		return empleado_id;
	}
	public void setEmpleado_id(int empleado_id) {
		this.empleado_id = empleado_id;
	}
	public Factura_base(int id_factura, int empleado_id) {
		this.id_factura = id_factura;
		this.empleado_id = empleado_id;
	}
	public Factura_base() {
	}
	
	
	
}
