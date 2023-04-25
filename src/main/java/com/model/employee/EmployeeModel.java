package com.model.employee;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
public class EmployeeModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int employeeId;
	@NotEmpty(message = "name cannot be empty")
	@Size(min = 2,max = 20,message = "name should be between 2 to 20 characters")
	private String employeeName;
	@NotEmpty(message = "email cannot be empty")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}",message="please enter valid email id")
	private String employeeEmail;
	@NotEmpty(message = "phone number cannot be empty")
	@Size(min = 10,max = 10,message = "phone number should be of 10 digits" )
	@Pattern(regexp =  "[6-9]{1}[0-9]{9}",message="please enter valid phone number")
	private String employeePhone;

	private String employeePassword;
	@NotEmpty(message ="city cannot be empty")
	@Size(min=3,max = 20,message = "city name should be between 3-20 characters")
	private String employeeAddress;
	
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeEmail() {
		return employeeEmail;
	}
	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}
	public String getEmployeePassword() {
		return employeePassword;
	}
	public void setEmployeePassword(String employeePassword) {
		this.employeePassword = employeePassword;
	}
	public String getEmployeeAddress() {
		return employeeAddress;
	}
	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}
	
}
