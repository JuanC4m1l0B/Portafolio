package model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.entity.Mascota;

public interface IMascotaRepository extends JpaRepository<Mascota, Integer>{

}
