package com.leti.service;

import com.leti.dao.EmployeeDao;
import com.leti.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {


    @Autowired
    public EmployeeDao employeeDao;

    @Override
    public void save(Employee employee) {
        employeeDao.save(employee);
    }

    @Override
    public Employee getById(int id) {
        return employeeDao.getById(id);
    }

    @Override
    public void delete(int id) {
        employeeDao.delete(id);
    }

    @Override
    public void update(Employee employee) {
        employeeDao.update(employee);
    }

    public List<Employee> findAll() {
        return employeeDao.findAll();
    }
}
