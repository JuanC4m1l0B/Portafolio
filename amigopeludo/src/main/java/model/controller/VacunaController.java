package model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.entity.Vacuna;
import model.service.VacunaService;

@Controller
public class VacunaController {

	@Autowired
	 private VacunaService ps;
	
	@RequestMapping(value = "/vacunas", method = RequestMethod.GET)
	public ModelAndView mostrarVacuna() {
		List<Vacuna> vacunas = ps.getAll();
				

				
		return new ModelAndView("vacunas", "vacunas", vacunas);
	}
}
