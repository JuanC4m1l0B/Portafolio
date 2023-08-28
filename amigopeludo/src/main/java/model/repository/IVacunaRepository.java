package model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.entity.Vacuna;

public interface IVacunaRepository extends JpaRepository<Vacuna, Integer>{

}
