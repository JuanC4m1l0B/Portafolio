package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.entity.Cita;
import model.repository.ICitaRepository;

@Service
public class CitaService {

	@Autowired
	private ICitaRepository citRepo;
	
	
	public CitaService() {
		super();
	}

	public List<Cita> getAll() {
		return citRepo.findAll();
	}

	public Cita getOne(int id) {
		return citRepo.getOne(id);
	}

	public void create(Cita c) {
		citRepo.save(c);
	}

	public void update(Cita c) {
		citRepo.save(c);
	}

	public void delete(int id) {
		citRepo.delete(citRepo.getOne(id));
	}
	
}
