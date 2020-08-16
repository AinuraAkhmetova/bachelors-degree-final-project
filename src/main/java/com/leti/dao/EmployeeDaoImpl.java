package com.leti.dao;

import com.leti.entity.Employee;
import com.leti.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;


public class EmployeeDaoImpl implements EmployeeDao {

    public final JdbcTemplate jdbcTemplate;

    @Autowired
    public EmployeeDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void save(Employee employee) {
        String sql = "INSERT INTO employee (name, email,age,position) VALUES (?,?,?,?)";
        jdbcTemplate.update(sql, employee.getName(), employee.getEmail(), employee.getAge(), employee.getposition());

    }

    @Override
    public Employee getById(int id) {
        String sql = "SELECT * FROM employee WHERE id= ?";
        return jdbcTemplate.queryForObject(sql, new EmployeeMapper(), id);
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM employee WHERE id=?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public void update(Employee employee) {
        String sql = "UPDATE employee SET  name=?, email=?, age=?, position=? WHERE id=?";
        jdbcTemplate.update(sql, employee.getName(), employee.getEmail(), employee.getAge(), employee.getposition(), employee.getId());
    }

    public List<Employee> findAll() {
        String sql = "SELECT* FROM employee";
        return jdbcTemplate.query(sql, new EmployeeMapper());

    }
}
