package com.leti.config;

import com.leti.dao.EmployeeDao;
import com.leti.dao.EmployeeDaoImpl;
import com.leti.service.EmployeeService;
import com.leti.service.EmployeeServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class SpringConfig {

    @Bean
    public JdbcTemplate getJdbcTemplate() {
        return new JdbcTemplate(getDataSource());
    }

    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/leti"
                + "?serverTimezone=UTC"
                + "&autoReconnect=true"
                + "&characterEncoding=UTF-8"
                + "&useJDBCCompliantTimezoneShift=true"
                + "&useLegacyDatetimeCode=false"
                + "&serverSslCert=classpath:server.crt");
        dataSource.setUsername("root");
        dataSource.setPassword("1234");
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        return dataSource;
    }

    @Bean
    public EmployeeDao getemployeeDao() {
        return new EmployeeDaoImpl(getJdbcTemplate());
    }

    @Bean
    public EmployeeService getemployeeService() {
        return new EmployeeServiceImpl();
    }

}
