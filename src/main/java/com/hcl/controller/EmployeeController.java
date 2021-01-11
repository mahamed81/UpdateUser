package com.hcl.controller;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.dao.EmpRepository;
import com.hcl.model.Employee;


@Controller
@Transactional
public class EmployeeController {
	@Autowired
	private EmpRepository repo;

	@PostMapping("/addemp")
	public String newEmp(Employee emp) {
		repo.save(emp);
		return "redirect:/listemp";
	}
	
	@GetMapping("/addemp")
	public ModelAndView addNewEmp() {
		Employee emp = new Employee();
		/*
		 * newemp: jsp end-point
		 * form: name of the form in jsp
		 * emp: oject
		 * */
		return new ModelAndView("newemp","form", emp);
	}
	
	@GetMapping("/listemp")
	public ModelAndView listEmp() {
		List<Employee> allEmps = (List<Employee>) repo.findAll();
		return new ModelAndView("emps","employees", allEmps);
	}
	
	@GetMapping("/editemp")
	public ModelAndView getupdate(@RequestParam long id) {
		Employee emp = repo.findById(id).get();
		return new ModelAndView("editview", "edit", emp);
	}
	
	@PostMapping("/editemp")
	public String updateEmp(Employee emp) {
		
		repo.save(emp);
		return "redirect:/listemp";
	}
	
	@GetMapping("/delemp")
	public ModelAndView getDelete(@RequestParam long id) {
		Employee emp = repo.findById(id).get();
		return new ModelAndView("deleteview","delete", emp);
	}
	
	@PostMapping("/delemp")
	public String deleEmp(Employee emp) {
		repo.delete(emp);;
		return "redirect:/listemp";
	}
	
	@GetMapping("/find")
		public ModelAndView getPage() {
			Employee emp = new Employee();
			return new ModelAndView("retrieve", "fn", emp);		
	}
	
	@PostMapping("/find")
	public ModelAndView find(@RequestParam long id, Model model) {
		Employee emp = repo.findById(id).get();
		return new ModelAndView("emps2", "hello", emp);		
	}
	
		
}
