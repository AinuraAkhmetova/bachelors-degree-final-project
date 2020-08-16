package com.leti.dao;

import com.leti.entity.Employee;

import java.util.List;

public interface EmployeeDao {

    void save(Employee employee);

    Employee getById(int id);

    void delete(int id);

    void update(Employee employee);

    List<Employee> findAll();

}
