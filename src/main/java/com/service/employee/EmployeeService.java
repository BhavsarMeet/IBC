package com.service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.dealer.DealerModel;
import com.model.employee.EmployeeModel;
import com.repository.employee.EmployeeRepository;
import com.util.TitleCaseData;


@Service
public class EmployeeService {

	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	
	public EmployeeModel addEmployee(EmployeeModel employeeModel) {
		employeeModel.setEmployeeName(titleCaseData.toTitleCase(employeeModel.getEmployeeName()));
		return employeeRepository.save(employeeModel);
	}
	
	public EmployeeModel getEmployeeById(int id) {
		return employeeRepository.findById(id).orElse(null);
	}
	
	public List<EmployeeModel> getAllemployees(){
		return employeeRepository.findAll();
	}
	
	public List<EmployeeModel> getAllEmployeesPagination(int offset,int noOfRecords){
		return employeeRepository.getAllEmployees(offset,noOfRecords);
	}
	
	public EmployeeModel updateEmployee(EmployeeModel newEmployeeModel,int employeeId) {
		
		EmployeeModel oldEmployeeModel = getEmployeeById(employeeId);
		
		oldEmployeeModel.setEmployeeEmail(newEmployeeModel.getEmployeeEmail());
		oldEmployeeModel.setEmployeeName(newEmployeeModel.getEmployeeName());
		oldEmployeeModel.setEmployeePhone(newEmployeeModel.getEmployeePhone());
		oldEmployeeModel.setEmployeeAddress(newEmployeeModel.getEmployeeAddress());
		oldEmployeeModel.setEmployeePassword(newEmployeeModel.getEmployeePassword());
		
		return employeeRepository.save(oldEmployeeModel);
		
	}
	
	public void deleteEmployee(int id) {
		employeeRepository.deleteById(id);
	}
	
	public List<EmployeeModel> getEmployeeByEmail(String email) {
		return employeeRepository.findByEmployeeEmail(email);
	}
	

	public EmployeeModel getEmployeeByEmployeeEmailAndEmployeePassword(String email, String password) {
		// TODO Auto-generated method stub
		return employeeRepository.findByEmployeeEmailAndEmployeePassword(email, password);
		
	}
}
