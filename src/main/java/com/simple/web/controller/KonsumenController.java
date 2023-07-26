package com.simple.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.simple.web.model.Konsumen;
import com.simple.web.service.KonsumenService;
import com.simple.web.service.KonsumenServiceImpl;

@Controller
public class KonsumenController {
    @Autowired
	KonsumenService konsumenService;

    @Autowired
    KonsumenServiceImpl konsumenServiceImpl;

	@GetMapping("/list")
	public ModelAndView getAllKonsumens() {
		ModelAndView mav = new ModelAndView("index");
		List<Konsumen> konsumenList = konsumenService.getAll();
		mav.addObject("konsumens", konsumenList);
		return mav;
	}

	@GetMapping("/add-konsumen")
	public ModelAndView addKonsumen() {
		ModelAndView mav = new ModelAndView("add_konsumen");
		mav.addObject("command", new Konsumen());
		return mav;
	}

	@PostMapping("/save-konsumen")
	public String saveStaff(@ModelAttribute Konsumen konsumen) {
		konsumenService.save(konsumen);
		return "redirect:/list";
	}

	@GetMapping("/konsumen-update/{id}")
	public ModelAndView getStaff(@PathVariable("id") Integer id) {
		ModelAndView mav = new ModelAndView("add_konsumen");
		Konsumen konsumen = konsumenService.getById(id);
        // Konsumen ks = konsumenService.get();
		mav.addObject("command", konsumen);
		return mav;
	}

	@GetMapping("/konsumen-delete/{id}")
	public String deleteStaff(@PathVariable("id") Integer id) {
		Konsumen deleteStaff = konsumenService.getById(id);
		konsumenService.delete(deleteStaff);
		return "redirect:/list";
	}
}
