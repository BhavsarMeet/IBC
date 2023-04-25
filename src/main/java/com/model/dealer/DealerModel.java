package com.model.dealer;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarModel;

import net.bytebuddy.implementation.bind.annotation.IgnoreForBinding;

@Entity
public class DealerModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int dealerId;
	@NotEmpty(message = "name cannot be empty")
	@Size(min = 2,max=20,message = "name should be between 2 to 20 characters")
	private String dealerName;
	@NotEmpty(message = "email cannot be empty")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}",message="please enter valid email id")
	private String dealerEmail;
	
	private String dealerPassword;
	@NotEmpty(message = "phone number cannot be empty")
	@Size(min = 10,max = 10,message = "phone number should be of 10 digits" )
	@Pattern(regexp =  "[6-9]{1}[0-9]{9}",message="please enter valid phone number")
	private String dealerPhone;
	@NotEmpty(message ="city cannot be empty")
	@Size(min=3,max = 20,message = "city name should be between 3-20 characters")
	private String dealerAddress;
	 
	@OneToMany(mappedBy = "dealer",cascade = CascadeType.ALL)
	private List<BidModel> bidsByDealer;
	
	@OneToMany(mappedBy = "dealerModelBuyUsedCar",cascade = CascadeType.ALL)
	private List<UsedCarModel> dealerBuyUsedCars;
	
	
	
	public List<BidModel> getBidsByDealer() {
		return bidsByDealer;
	}
	public void setBidsByDealer(List<BidModel> bidsByDealer) {
		this.bidsByDealer = bidsByDealer;
	}
	public String getDealerAddress() {
		return dealerAddress;
	}
	public void setDealerAddress(String dealerAddress) {
		this.dealerAddress = dealerAddress;
	}
	public List<UsedCarModel> getDealerBuyUsedCars() {
		return dealerBuyUsedCars;
	}
	public void setDealerBuyUsedCars(List<UsedCarModel> dealerBuyUsedCars) {
		this.dealerBuyUsedCars = dealerBuyUsedCars;
	}
	public int getDealerId() {
		return dealerId;
	}
	public void setDealerId(int dealerId) {
		this.dealerId = dealerId;
	}
	public String getDealerName() {
		return dealerName;
	}
	public void setDealerName(String dealerName) {
		this.dealerName = dealerName;
	}
	public String getDealerEmail() {
		return dealerEmail;
	}
	public void setDealerEmail(String dealerEmail) {
		this.dealerEmail = dealerEmail;
	}
	public String getDealerPassword() {
		return dealerPassword;
	}
	public void setDealerPassword(String dealerPassword) {
		this.dealerPassword = dealerPassword;
	}
	public String getDealerPhone() {
		return dealerPhone;
	}
	public void setDealerPhone(String dealerPhone) {
		this.dealerPhone = dealerPhone;
	}
	
}
