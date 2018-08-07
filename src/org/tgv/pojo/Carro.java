package org.tgv.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="carro")
public class Carro {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_carro;
//	
//	private int id_instrumento;
	
	@OneToOne
	@JoinColumn(name="id_instrumento")
	private Productos productos;
	
	@OneToOne
	@JoinColumn(name="id_factura")
	private Factura_base facturaBase;
	
	public Productos getProductos() {
		return productos;
	}

	public void setProductos(Productos productos) {
		this.productos = productos;
	}

	public Factura_base getFacturaBase() {
		return facturaBase;
	}

	public void setFacturaBase(Factura_base facturaBase) {
		this.facturaBase = facturaBase;
	}


	
	



	
	public Carro(int id_carro, Productos productos, Factura_base facturaBase) {
		this.id_carro = id_carro;
		this.productos = productos;
		this.facturaBase = facturaBase;
	}

	public int getId_carro() {
		return id_carro;
	}

	public void setId_carro(int id_carro) {
		this.id_carro = id_carro;
	}

	public Carro() {

	}




	
	

}