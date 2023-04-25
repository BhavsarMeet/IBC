package com.model.usedcar;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import com.model.dealer.DealerModel;
import com.model.user.UserEntity;

@Entity
public class UsedCarModel {
 
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int usedCarId;
	@NotEmpty(message = "brand cannot be empty")
	@Size(min = 2,message = "Car brand should have atleast 2 characters")
	private String usedCarBrand;
	@NotEmpty(message = "model name cannot be empty")
	@Size(min = 2,message = "Car model should have atleast 2 characters")
	private String usedCarModelName;
	@NotEmpty(message = "variant cannot be empty")
	@Size(min = 2,message = "Car variant should have atleast 2 characters")
	private String usedCarVariant;
	@NotEmpty(message = "Car fuel type cannot be empty")
	@Size(min = 2,message = "Car fuel type should have atleast 2 characters")
	private String usedCarFuelType;
	@NotEmpty(message = "year cannot be empty")
	@Size(min = 4,max = 4,message="year should have exactly 4 characters")
	private String usedCarYear;
	@NotEmpty(message = "RTO cannot be empty")
	private String usedCarRTO;
	@NotNull(message = "kilometers cannot be empty")
	@Min(value = 0, message = "The value must be positive")
	private int usedCarKilometers; 
	@NotEmpty(message = "number of owners cannot be empty")
	@Min(value = 0, message = "The value must be positive")
	private String usedCarNoOfOwners;
	private int usedCarBasePrice;
	private int usedCarSoldPrice;
	@NotEmpty(message = "Car body type cannot be empty")
	@Size(min = 2,message = "Car body should have atleast 2 characters")
	private String usedCarBodyType;
	@NotEmpty(message = "Car transmission type cannot be empty")
	@Size(min = 2,message = "Car transmission should have atleast 2 characters")
	private String usedCarTransmissionType;
	private Date usedCarBidStartTime;
	private Date usedCarBidEndTime;
//	//images added by user
//	private String usedCarUserImages;
//	//multipart pdf file to add for inspection log 
	
	private String usedCarStatus;
	private String usedCarPlatNumber;
	
	@OneToMany(mappedBy = "usedCar",cascade = CascadeType.ALL)
	private List<BidModel> bidForUsedCar;
	
	@ManyToOne
	private UserEntity userEntitySellCar;
	
	@ManyToOne
	private UserEntity userEntityBuyUsedCar;
	
	@ManyToOne
	private DealerModel dealerModelBuyUsedCar;
	
	
	@OneToMany(mappedBy = "usedCarModelData",cascade = CascadeType.ALL)
	private List<UsedCarEnquiryCustomer> inquiryForUsedCar; 
	
	public Date getUsedCarBidStartTime() {
		return usedCarBidStartTime;
	}
	public void setUsedCarBidStartTime(Date usedCarBidStartTime) {
		this.usedCarBidStartTime = usedCarBidStartTime;
	}
	public Date getUsedCarBidEndTime() {
		return usedCarBidEndTime;
	}
	public void setUsedCarBidEndTime(Date usedCarBidEndTime) {
		this.usedCarBidEndTime = usedCarBidEndTime;
	}
	public List<UsedCarEnquiryCustomer> getInquiryForUsedCar() {
		return inquiryForUsedCar;
	}
	public void setInquiryForUsedCar(List<UsedCarEnquiryCustomer> inquiryForUsedCar) {
		this.inquiryForUsedCar = inquiryForUsedCar;
	}
	public List<BidModel> getBidForUsedCar() {
		return bidForUsedCar;
	}
	public void setBidForUsedCar(List<BidModel> bidForUsedCar) {
		this.bidForUsedCar = bidForUsedCar;
	}
	public String getUsedCarBodyType() {
		return usedCarBodyType;
	}
	public void setUsedCarBodyType(String usedCarBodyType) {
		this.usedCarBodyType = usedCarBodyType;
	}
	public String getUsedCarTransmissionType() {
		return usedCarTransmissionType;
	}
	public void setUsedCarTransmissionType(String usedCarTransmissionType) {
		this.usedCarTransmissionType = usedCarTransmissionType;
	}
	
	public int getUsedCarBasePrice() {
		return usedCarBasePrice;
	}
	public void setUsedCarBasePrice(int usedCarBasePrice) {
		this.usedCarBasePrice = usedCarBasePrice;
	}
	public void setUsedCarKilometers(int usedCarKilometers) {
		this.usedCarKilometers = usedCarKilometers;
	}
	
	public int getUsedCarSoldPrice() {
		return usedCarSoldPrice;
	}
	public void setUsedCarSoldPrice(int usedCarSoldPrice) {
		this.usedCarSoldPrice = usedCarSoldPrice;
	}
	public String getPlatNumber() {
		return usedCarPlatNumber;
	}
	public void setPlatNumber(String usedCarPlatNumber) {
		this.usedCarPlatNumber = usedCarPlatNumber;
	}
	public String getUsedCarStatus() {
		return usedCarStatus;
	}
	public void setUsedCarStatus(String usedCarStatus) {
		this.usedCarStatus = usedCarStatus;
	}
	public DealerModel getDealerModelBuyUsedCar() {
		return dealerModelBuyUsedCar;
	}
	public void setDealerModelBuyUsedCar(DealerModel dealerModelBuyUsedCar) {
		this.dealerModelBuyUsedCar = dealerModelBuyUsedCar;
	}
	public UserEntity getUserEntitySellCar() {
		return userEntitySellCar;
	}
	public void setUserEntitySellCar(UserEntity userEntitySellCar) {
		this.userEntitySellCar = userEntitySellCar;
	}
	public UserEntity getUserEntityBuyUsedCar() {
		return userEntityBuyUsedCar;
	}
	public void setUserEntityBuyUsedCar(UserEntity userEntityBuyUsedCar) {
		this.userEntityBuyUsedCar = userEntityBuyUsedCar;
	}
	public int getUsedCarId() {
		return usedCarId;
	}
	
	public void setUsedCarId(int usedCarId) {
		this.usedCarId = usedCarId;
	}
	public String getUsedCarBrand() {
		return usedCarBrand;
	}
	public void setUsedCarBrand(String usedCarBrand) {
		this.usedCarBrand = usedCarBrand;
	}
	

	public String getUsedCarModelName() {
		return usedCarModelName;
	}
	public void setUsedCarModelName(String usedCarModelName) {
		this.usedCarModelName = usedCarModelName;
	}
	public String getUsedCarPlatNumber() {
		return usedCarPlatNumber;
	}
	public void setUsedCarPlatNumber(String usedCarPlatNumber) {
		this.usedCarPlatNumber = usedCarPlatNumber;
	}
	public String getUsedCarVariant() {
		return usedCarVariant;
	}
	public void setUsedCarVariant(String usedCarVariant) {
		this.usedCarVariant = usedCarVariant;
	}
	public String getUsedCarFuelType() {
		return usedCarFuelType;
	}
	public void setUsedCarFuelType(String usedCarFuelType) {
		this.usedCarFuelType = usedCarFuelType;
	}
	public String getUsedCarYear() {
		return usedCarYear;
	}
	public void setUsedCarYear(String usedCarYear) {
		this.usedCarYear = usedCarYear;
	}
	public String getUsedCarRTO() {
		return usedCarRTO;
	}
	public void setUsedCarRTO(String usedCarRTO) {
		this.usedCarRTO = usedCarRTO;
	}
	
	public int getUsedCarKilometers() {
		return usedCarKilometers;
	}
	public String getUsedCarNoOfOwners() {
		return usedCarNoOfOwners;
	}
	public void setUsedCarNoOfOwners(String usedCarNoOfOwners) {
		this.usedCarNoOfOwners = usedCarNoOfOwners;
	}
//	public String getUsedCarUserImages() {
//		return usedCarUserImages;
//	}
//	public void setUsedCarUserImages(String usedCarUserImages) {
//		this.usedCarUserImages = usedCarUserImages;
//	}
	
	
	
}
