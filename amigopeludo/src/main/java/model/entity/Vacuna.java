package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Vacunas")
public class Vacuna {

	@Id
    @Column(name = "id")
	private int id;
	
	private int mascota_Id;
	private String nombreMascota;
	private String nombre;
	private String fecha;
	
	
	public Vacuna() {
		super();
	}


	public Vacuna(int id, int mascota_Id, String nombreMascota, String nombre, String fecha) {
		super();
		this.id = id;
		this.mascota_Id = mascota_Id;
		this.nombreMascota = nombreMascota;
		this.nombre = nombre;
		this.fecha = fecha;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getMascota_Id() {
		return mascota_Id;
	}


	public void setMascota_Id(int mascota_Id) {
		this.mascota_Id = mascota_Id;
	}


	public String getNombreMascota() {
		return nombreMascota;
	}


	public void setNombreMascota(String nombreMascota) {
		this.nombreMascota = nombreMascota;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getFecha() {
		return fecha;
	}


	public void setFecha(String fecha) {
		this.fecha = fecha;
	}


}
