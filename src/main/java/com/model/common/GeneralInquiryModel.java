package com.model.common;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GeneralInquiryModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int generalInquiryId;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String message;
	
	
	
	
	public int getGeneralInquiryId() {
		return generalInquiryId;
	}
	public void setGeneralInquiryId(int generalInquiryId) {
		this.generalInquiryId = generalInquiryId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
