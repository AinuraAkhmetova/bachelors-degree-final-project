package com.leti.controller;

import com.leti.entity.Employee;

import com.leti.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class EmployeeController {

    @Autowired
    public EmployeeService employeeService;


    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    @GetMapping("/employees")
    public String getAllemployees(Model model) {
        model.addAttribute("employees", employeeService.findAll());
        //model.addAttribute("competences", competenceService.findAll());
        return "employeesList";
    }

    @GetMapping("/employee/{id}")
    public String getById(@PathVariable("id") int id, Model model) {
        model.addAttribute("employee", employeeService.getById(id));
        return "showEmployee";
    }

    @GetMapping("/addEmployee")
    public String createemployee() {
        return "createEmployee";
    }

    @PostMapping("/addEmployee")
    public String addEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.save(employee);
        return "redirect:/employees";
    }

    @GetMapping("/delete/{id}")
    public String deleteemployee(@PathVariable("id") int id) {
        employeeService.delete(id);
        return "redirect:/employees";
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable("id") int id, Model model) {
        model.addAttribute("employee", employeeService.getById(id));
        return "editEmployee";
    }

    @PostMapping("/updateEmployee")
    public String updateEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.update(employee);
        return "redirect:/employee/" + employee.getId();
    }
}
