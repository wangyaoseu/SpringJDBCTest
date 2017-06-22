package com.springjdbc.dao;
import com.springjdbc.entities.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 * Created by wangyao on 2017/6/22.
 */
@Repository
public class EmployeeDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Employee get(int id){
        String sql="SELECT id, lastName,email FROM employee WHERE id=?";
        RowMapper<Employee> rowMapper=new BeanPropertyRowMapper<>(Employee.class);
        Employee employee=jdbcTemplate.queryForObject(sql, rowMapper,id);

        return employee;
    }
}
