package model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.entity.Cita;

public interface ICitaRepository extends JpaRepository<Cita, Integer>{

}
