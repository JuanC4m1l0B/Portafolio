package model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.entity.Cita;
import model.service.CitaService;

@Controller
public class CitaController {

	@Autowired
	 private CitaService ps;
	
	@RequestMapping(value = "/citas", method = RequestMethod.GET)
	public ModelAndView mostrarCitas() {
		List<Cita> citas = ps.getAll();
				

				
		return new ModelAndView("citas", "citas", citas);
	}
}
