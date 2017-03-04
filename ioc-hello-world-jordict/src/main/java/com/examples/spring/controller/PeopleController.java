package com.examples.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.examples.spring.controller.helper.PeopleHelper;
import com.examples.spring.model.Persona;
import com.examples.spring.repository.PersonaRepository;

@Controller
@RequestMapping(value = "/people")
public class PeopleController {

	@Autowired
	PeopleHelper peopleHelper;
	
	@Autowired
	PersonaRepository personaRepository;

	@RequestMapping(method = RequestMethod.GET)
	public String listPeople(Model model) {
		model.addAttribute("people", personaRepository.findAll());
		return "people";
	}

	@RequestMapping(path = "/{username}", method = RequestMethod.GET)
	public String user(@PathVariable String username, Model model) {
		Persona persona = personaRepository.findByUsername(username);
		model.addAttribute("persona", persona);
		return "username";
	}
	
	@GetMapping("/add")
	public String addPerson(Model model) {
		model.addAttribute("person", new Persona());
		return "addPerson";
	}
	
	@PostMapping("/add")
    public String addPersona(@Valid @ModelAttribute("person") Persona person, BindingResult result, Model model) {
		if (result.hasErrors()){
			return "addPerson";
		}
		personaRepository.save(person);
		System.out.println(person.getNombre());
        return "people";
    }
	
	@RequestMapping(path="/delete/{username}", method = RequestMethod.GET)
	public String deletePerson(@PathVariable ("username")String username,Model model) {
		System.out.println("USERNAME: " + username);
		return "people";
	}

}
