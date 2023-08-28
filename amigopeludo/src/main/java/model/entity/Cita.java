package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Citas")
public class Cita {

	@Id
	@Column(name = "id")
	private int id;

	private int mascota_Id;
	private String nombreMascota;
	private int veterinario_Id;
	private String nombreVeterinario;
	private String fecha_Hora;

	public Cita() {
		super();
	}

	public Cita(int id, int mascota_Id, String nombreMascota, int veterinario_Id, String nombreVeterinario,
			String fecha_Hora) {
		super();
		this.id = id;
		this.mascota_Id = mascota_Id;
		this.nombreMascota = nombreMascota;
		this.veterinario_Id = veterinario_Id;
		this.nombreVeterinario = nombreVeterinario;
		this.fecha_Hora = fecha_Hora;
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

	public int getVeterinario_Id() {
		return veterinario_Id;
	}

	public void setVeterinario_Id(int veterinario_Id) {
		this.veterinario_Id = veterinario_Id;
	}

	public String getNombreVeterinario() {
		return nombreVeterinario;
	}

	public void setNombreVeterinario(String nombreVeterinario) {
		this.nombreVeterinario = nombreVeterinario;
	}

	public String getFecha_Hora() {
		return fecha_Hora;
	}

	public void setFecha_Hora(String fecha_Hora) {
		this.fecha_Hora = fecha_Hora;
	}

	
	
	
	
}
