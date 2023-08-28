package model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.entity.Veterinario;

public interface IVeterinarioRepository extends JpaRepository<Veterinario, Integer> {

}
