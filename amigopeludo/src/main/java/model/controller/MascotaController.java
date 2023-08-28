package model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.entity.Mascota;
import model.service.MascotaService;

@Controller
public class MascotaController {

	@Autowired
	 private MascotaService ps;
	
	@RequestMapping(value = "/mascotas", method = RequestMethod.GET)
	public ModelAndView mostrarMascota() {
		List<Mascota> mascotas = ps.getAll();
				

				
		return new ModelAndView("mascotas", "mascotas", mascotas);
	}
}