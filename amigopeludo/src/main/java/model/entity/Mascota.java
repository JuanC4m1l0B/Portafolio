package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Mascotas")
public class Mascota {
	
	@Id
    @Column(name = "id")
	private int id;
	
	private String tipo;
	private String nombre;
	private int dueno_Id;
	private String nombreDueno;
	
	public Mascota() {
		super();
	}

	public Mascota(int id, String tipo, String nombre, int dueno_Id, String nombreDueno) {
		super();
		this.id = id;
		this.tipo = tipo;
		this.nombre = nombre;
		this.dueno_Id = dueno_Id;
		this.nombreDueno = nombreDueno;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getDueno_Id() {
		return dueno_Id;
	}

	public void setDueno_Id(int dueno_Id) {
		this.dueno_Id = dueno_Id;
	}

	public String getNombreDueno() {
		return nombreDueno;
	}

	public void setNombreDueno(String nombreDueno) {
		this.nombreDueno = nombreDueno;
	}
	
	
	
	
}	