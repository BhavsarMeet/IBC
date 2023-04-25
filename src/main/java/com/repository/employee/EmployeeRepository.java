package com.repository.employee;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.dealer.DealerModel;
import com.model.employee.EmployeeModel;

@Repository
public interface EmployeeRepository extends JpaRepository<EmployeeModel,Integer> {

	List<EmployeeModel> findByEmployeeEmail(String email);
	EmployeeModel findByEmployeeEmailAndEmployeePassword(String email,String pwd);
	
	@Query(value = "select * from employee_model limit ?1,?2",nativeQuery = true)
	public List<EmployeeModel> getAllEmployees(int offset,int noOfRecords);
}
