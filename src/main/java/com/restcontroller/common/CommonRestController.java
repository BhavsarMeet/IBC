package com.restcontroller.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.admin.AdminModel;
import com.model.common.LoginModel;
import com.model.employee.EmployeeModel;
import com.model.response.ResponseEntity;
import com.model.user.UserEntity;
import com.service.admin.AdminService;
import com.service.employee.EmployeeService;
import com.service.user.UserService;

@RestController
@CrossOrigin
public class CommonRestController {
	
	@Autowired
	UserService userService;
	@Autowired
	AdminService adminService;
	@Autowired
	EmployeeService employeeService;
	
	@PostMapping("/getuser")
	public ResponseEntity getUser(@RequestBody LoginModel login) {
		String email = login.getEmail();
		String password = login.getPassword();
		UserEntity user = userService.getUserByUserEmailAndUserPassword(email,password);
		if(null == user) {
			AdminModel admin = adminService.getAdminByEmailAndAdminPassword(email, password);
			if(admin == null) {
				EmployeeModel employee = employeeService.getEmployeeByEmployeeEmailAndEmployeePassword(email, password);
				if(employee == null) {
					return new ResponseEntity(-1, "Not Valid Credential.",null);
				}else {
					return new ResponseEntity(200, "Employee retrived successfully.",employee);
				}
			}
			else {	
				return new ResponseEntity(200, "Admin retrived successfully.",admin);
			}
		}else {
			System.out.println(user.getUserPhoneNumber());
			return new ResponseEntity(200, "User retrived successfully.",user);
		}
	}
}
