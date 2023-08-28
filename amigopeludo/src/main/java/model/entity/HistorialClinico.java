package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



	@Entity
	@Table(name="HistorialesClinicos")
	public class HistorialClinico {
		
		@Id
	    @Column(name = "id")
		private int id;
		
		private int mascota_Id;
		private String nombreMascota;
		private String fecha;
		private String problema;
		
		
		public HistorialClinico() {
			super();
		}


		public HistorialClinico(int id, int mascota_Id, String nombreMascota, String fecha, String problema) {
			super();
			this.id = id;
			this.mascota_Id = mascota_Id;
			this.nombreMascota = nombreMascota;
			this.fecha = fecha;
			this.problema = problema;
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


		public String getFecha() {
			return fecha;
		}


		public void setFecha(String fecha) {
			this.fecha = fecha;
		}


		public String getProblema() {
			return problema;
		}


		public void setProblema(String problema) {
			this.problema = problema;
		}

		
	
}
