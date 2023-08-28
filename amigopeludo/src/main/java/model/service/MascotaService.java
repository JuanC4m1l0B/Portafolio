package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import model.entity.Mascota;
import model.repository.IMascotaRepository;

@Service
public class MascotaService {

	@Autowired
	private IMascotaRepository masRepo;
	
	
	public MascotaService() {
		super();
	}

	public List<Mascota> getAll() {
		return masRepo.findAll();
	}

	public Mascota getOne(int id) {
		return masRepo.getOne(id);
	}

	public void create(Mascota m) {
		masRepo.save(m);
	}

	public void update(Mascota m) {
		masRepo.save(m);
	}

	public void delete(int id) {
		masRepo.delete(masRepo.getOne(id));
	}
	
}

