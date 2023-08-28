package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.entity.Vacuna;
import model.repository.IVacunaRepository;

@Service
public class VacunaService {

	@Autowired
	private IVacunaRepository vacRepo;
	
	
	public VacunaService() {
		super();
	}

	public List<Vacuna> getAll() {
		return vacRepo.findAll();
	}

	public Vacuna getOne(int id) {
		return vacRepo.getOne(id);
	}

	public void create(Vacuna v) {
		vacRepo.save(v);
	}

	public void update(Vacuna v) {
		vacRepo.save(v);
	}

	public void delete(int id) {
		vacRepo.delete(vacRepo.getOne(id));
	}
	
}
