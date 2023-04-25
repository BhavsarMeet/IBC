package com.model.user;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.model.newcar.NewCarEnquiryModel;
import com.model.newcar.NewCarModel;
import com.model.newcar.NewCarVariants;
import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarModel;

@Entity
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;
	@NotEmpty(message = "name cannot be empty")
	@Size(min = 2,max=20,message = "name should be between 2 characters to 20 characters")
	private String userName;
	@NotEmpty(message = "email cannot be empty")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}",message="please enter valid email id")
	private String userEmail;
	@NotEmpty(message = "phone number cannot be empty")
	@Size(min = 10,max = 10,message = "phone number should be of 10 digits" )
	@Pattern(regexp =  "[6-9]{1}[0-9]{9}",message="please enter valid phone number")
	private String userPhoneNumber;
	
	private String userPassword;
	@NotEmpty(message ="city cannot be empty")
	@Size(min=3,max = 20,message = "city name should be between 3-20 characters")
	private String userAddress;
	 
	@OneToMany(mappedBy = "interestedUser",cascade = CascadeType.ALL)
	private List<UsedCarEnquiryCustomer> inquiryForUsedCarByUser;
	
	@OneToMany(mappedBy = "userEntity",cascade = CascadeType.ALL)
	private List<NewCarEnquiryModel> newCarEnquiryByUser;
	
	@JsonIgnore
	@OneToMany(mappedBy = "userEntitySellCar",cascade = CascadeType.ALL)
	private List<UsedCarModel> userSellCars;
	
	@JsonIgnore
	@OneToMany(mappedBy = "userEntityBuyUsedCar",cascade = CascadeType.ALL) 
	private List<UsedCarModel> userBuyUsedCars;
	
	@ManyToMany
	private List<NewCarVariants> newCarsPurchasedByUser;
	
	
	public List<NewCarVariants> getNewCarsPurchasedByUser() {
		return newCarsPurchasedByUser;
	}
	public void setNewCarsPurchasedByUser(List<NewCarVariants> newCarsPurchasedByUser) {
		this.newCarsPurchasedByUser = newCarsPurchasedByUser;
	}
	public List<NewCarEnquiryModel> getNewCarEnquiryByUser() {
		return newCarEnquiryByUser;
	}
	public void setNewCarEnquiryByUser(List<NewCarEnquiryModel> newCarEnquiryByUser) {
		this.newCarEnquiryByUser = newCarEnquiryByUser;
	}
	public List<UsedCarEnquiryCustomer> getInquiryForUsedCarByUser() {
		return inquiryForUsedCarByUser;
	}
	public void setInquiryForUsedCarByUser(List<UsedCarEnquiryCustomer> inquiryForUsedCarByUser) {
		this.inquiryForUsedCarByUser = inquiryForUsedCarByUser;
	}

	public List<UsedCarModel> getUserBuyUsedCars() {
		return userBuyUsedCars;
	}
	public void setUserBuyUsedCars(List<UsedCarModel> userBuyUsedCars) {
		this.userBuyUsedCars = userBuyUsedCars;
	}
	public List<UsedCarModel> getUserSellCars() {
		return userSellCars;
	}
	public void setUserSellCars(List<UsedCarModel> userSellCars) {
		this.userSellCars = userSellCars;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	
	
}
