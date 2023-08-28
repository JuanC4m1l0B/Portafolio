package model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.entity.Veterinario;
import model.service.VeterinarioService;

@Controller
public class VeterinarioController {

	@Autowired
	private VeterinarioService ps;

	@RequestMapping(value = "/veterinarios", method = RequestMethod.GET)
	public ModelAndView mostrarVeterinario() {
		List<Veterinario> veterinarios = ps.getAll();

		return new ModelAndView("veterinarios", "veterinarios", veterinarios);
	}

	
	//AGREGAR VETERINARIOS
	@RequestMapping(value = "/agregarveterinarios")
	public ModelAndView agregarveterinarios() {
		return new ModelAndView("agregarveterinarios");
	}

	
	@RequestMapping(value = "/guardarVeterinario", method = RequestMethod.POST)
	public ModelAndView guardarVeterinario(@RequestParam String nombre, @RequestParam String especialidad) {
	    Veterinario nuevoVeterinario = new Veterinario();
	    nuevoVeterinario.setNombre(nombre);
	    nuevoVeterinario.setEspecialidad(especialidad);
	    
	    ps.create(nuevoVeterinario);

	    return new ModelAndView("redirect:/veterinarios");
	}
	
	
	//EDITAR VETERINARIOS
	
	@RequestMapping(value = "/editarveterinarios/{id}", method = RequestMethod.GET)
	public ModelAndView editarveterinarios(@PathVariable int id) {
	    Veterinario veterinario = ps.getOne(id);
	    return new ModelAndView("editarveterinarios", "veterinario", veterinario);
	}

	@RequestMapping(value = "/guardarEdicionVeterinario", method = RequestMethod.POST)
	public ModelAndView guardarEdicionVeterinario(@RequestParam int id, @RequestParam String nombre, @RequestParam String especialidad) {
	    Veterinario veterinario = ps.getOne(id);
	    veterinario.setNombre(nombre);
	    veterinario.setEspecialidad(especialidad);
	    ps.update(veterinario);
	    return new ModelAndView("redirect:/veterinarios");
	}
	
}
