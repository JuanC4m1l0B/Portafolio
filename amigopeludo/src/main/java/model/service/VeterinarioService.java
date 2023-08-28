package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import model.entity.Veterinario;
import model.repository.IVeterinarioRepository;

@Service
public class VeterinarioService {

	@Autowired
	private IVeterinarioRepository vetRepo;

	public VeterinarioService() {
		super();
	}

	public List<Veterinario> getAll() {
		return vetRepo.findAll();
	}

	public Veterinario getOne(int id) {
		return vetRepo.getOne(id);
	}

	public void create(Veterinario v) {
		vetRepo.save(v);
	}

	public void update(Veterinario v) {
		vetRepo.save(v);
	}

	public void delete(int id) {
		vetRepo.delete(vetRepo.getOne(id));
	}

}
