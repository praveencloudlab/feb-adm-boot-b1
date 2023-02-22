package com.cts.ecart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.ecart.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}
