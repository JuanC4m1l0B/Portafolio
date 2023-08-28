package model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.entity.HistorialClinico;
import model.service.HistorialClinicoService;

@Controller
public class HistorialClinicoController {

	@Autowired
	 private HistorialClinicoService ps;
	
	@RequestMapping(value = "/historialesclinicos", method = RequestMethod.GET)
	public ModelAndView mostrarHistorialClinico() {
		List<HistorialClinico> historialesclinicos = ps.getAll();
				

				
		return new ModelAndView("historialesclinicos", "historialesclinicos", historialesclinicos);
	}
}
