package model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.entity.HistorialClinico;
import model.repository.IHistorialClinicoRepository;

@Service
public class HistorialClinicoService {

	@Autowired
	private IHistorialClinicoRepository hisRepo;
	
	
	public HistorialClinicoService() {
		super();
	}

	public List<HistorialClinico> getAll() {
		return hisRepo.findAll();
	}

	public HistorialClinico getOne(int id) {
		return hisRepo.getOne(id);
	}

	public void create(HistorialClinico h) {
		hisRepo.save(h);
	}

	public void update(HistorialClinico h) {
		hisRepo.save(h);
	}

	public void delete(int id) {
		hisRepo.delete(hisRepo.getOne(id));
	}
	
}