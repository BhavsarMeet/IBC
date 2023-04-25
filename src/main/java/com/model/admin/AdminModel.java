package com.model.admin;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
public class AdminModel {
 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO) 
	private int adminId;
	
	@NotEmpty(message = "name cannot be empty")
	@Size(min = 2,max=20,message = "name should be between 2 to 20 characters")
	private String adminName;
	 
	@NotEmpty(message = "email cannot be empty")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}",message="please enter valid email id")
	private String adminEmail;
	
	@NotEmpty(message ="password cannot be empty")
	@Size(min = 8,max = 20,message = "password must be of 8-20 characters")
	@Pattern(regexp="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,20}$",message = "password should be strong(atleast 1-number,alphabet(1-lower and 1-upper)and 1-special-character needed!)")
	private String adminPassword;
	
	@NotEmpty(message = "phone number cannot be empty")
	@Size(min = 10,max = 10,message = "phone number should be of 10 digits" )
	@Pattern(regexp =  "[6-9]{1}[0-9]{9}",message="please enter valid phone number")
	private String adminPhone;

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public String getAdminPhone() {
		return adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	
	
	
}
