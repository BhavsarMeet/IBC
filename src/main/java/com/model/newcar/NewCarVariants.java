package com.model.newcar;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.model.user.UserEntity;

@Entity
public class NewCarVariants {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carVariantId;
	private String carVariantName;
	private String carBodyType;
	private String carEngineType;
	private int carEngineCapacity;
	private String carTransmissionType;
	private String carFuelType;
	private String carSeatingCapacity;
	private int carDoors;
	private int carManufacturingYear;
	private int carMileage;
	private int carPrice;
	private String carLaunchingDate;
	
	@ManyToOne
	private NewCarModel carModel;

	@OneToMany(mappedBy = "newCarVariantData",cascade = CascadeType.ALL)
	private List<NewCarEnquiryModel> newCarEnquiries;
	
	@ManyToMany(mappedBy = "newCarsPurchasedByUser",cascade = CascadeType.ALL)
	private List<UserEntity> newCarSoldToUser;
	
	public List<UserEntity> getNewCarSoldToUser() {
		return newCarSoldToUser;
	}

	public void setNewCarSoldToUser(List<UserEntity> newCarSoldToUser) {
		this.newCarSoldToUser = newCarSoldToUser;
	}

	public List<NewCarEnquiryModel> getNewCarEnquiries() {
		return newCarEnquiries;
	}

	public void setNewCarEnquiries(List<NewCarEnquiryModel> newCarEnquiries) {
		this.newCarEnquiries = newCarEnquiries;
	}

	public String getCarLaunchingDate() {
		return carLaunchingDate;
	}

	public void setCarLaunchingDate(String carLaunchingDate) {
		this.carLaunchingDate = carLaunchingDate;
	}

	
	
	public int getCarVariantId() {
		return carVariantId;
	}

	public void setCarVariantId(int carVariantId) {
		this.carVariantId = carVariantId;
	}

	public String getCarVariantName() {
		return carVariantName;
	}

	public void setCarVariantName(String carVariantName) {
		this.carVariantName = carVariantName;
	}

	public NewCarModel getCarModel() {
		return carModel;
	}
	

	public int getCarManufacturingYear() {
		return carManufacturingYear;
	}

	public void setCarManufacturingYear(int carManufacturingYear) {
		this.carManufacturingYear = carManufacturingYear;
	}

	public void setCarModel(NewCarModel carModel) {
		this.carModel = carModel;
	}

	public String getCarBodyType() {
		return carBodyType;
	}

	public void setCarBodyType(String carBodyType) {
		this.carBodyType = carBodyType;
	}

	public String getCarEngineType() {
		return carEngineType;
	}

	public void setCarEngineType(String carEngineType) {
		this.carEngineType = carEngineType;
	}

	

	public int getCarEngineCapacity() {
		return carEngineCapacity;
	}

	public void setCarEngineCapacity(int carEngineCapacity) {
		this.carEngineCapacity = carEngineCapacity;
	}

	public int getCarMileage() {
		return carMileage;
	}

	public void setCarMileage(int carMileage) {
		this.carMileage = carMileage;
	}

	public int getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}

	public void setCarSeatingCapacity(String carSeatingCapacity) {
		this.carSeatingCapacity = carSeatingCapacity;
	}

	public String getCarTransmissionType() {
		return carTransmissionType;
	}

	public void setCarTransmissionType(String carTransmissionType) {
		this.carTransmissionType = carTransmissionType;
	}

	public String getCarFuelType() {
		return carFuelType;
	}

	public void setCarFuelType(String carFuelType) {
		this.carFuelType = carFuelType;
	}

	

	public String getCarSeatingCapacity() {
		return carSeatingCapacity;
	}

	public int getCarDoors() {
		return carDoors;
	}

	public void setCarDoors(int carDoors) {
		this.carDoors = carDoors;
	}
	
	
	
}
