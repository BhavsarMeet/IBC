package com.model.newcar;

import java.sql.Date;
import java.util.List;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

@Component
public class InputNewCarEntity {

	private int carModelId;
	private int carVariantId;
	@NotEmpty(message = "Car brand cannot be empty")
	@Size(min = 2,message = "Car brand should have atleast 2 characters")
	private String carBrand;
	@NotEmpty(message = "Car model name cannot be empty")
	@Size(min = 2,message = "Car model name should have atleast 2 characters")
	private String carModelName;
	@NotEmpty(message = "Car variant name cannot be empty")
	@Size(min = 1,message = "Car variant name should have atleast 1 characters")
	private String carVariantName;
	@NotEmpty(message = "Car body type cannot be empty")
	@Size(min = 2,message = "Car body type should have atleast 2 characters")
	private String carBodyType;
	@NotEmpty(message = "Car engine type cannot be empty")
	@Size(min = 2,message = "Car engine type should have atleast 2 characters")
	private String carEngineType;
	@Min(value = 0, message = "The value must be positive")
	private int carEngineCapacity;
	@NotEmpty(message = "Car transmission type cannot be empty")
	@Size(min = 2,message = "Car transmission should have atleast 2 characters")
	private String carTransmissionType;
	@NotEmpty(message = "Car fuel type cannot be empty")
	@Size(min = 2,message = "Car fuel type should have atleast 2 characters")
	private String carFuelType;
	@NotEmpty(message = "Car seating capacity  cannot be empty")
	@Size(min = 1,message = "Car seating capacity should have atleast 1 characters")
	private String carSeatingCapacity;
	@Min(value = 0, message = "The value must be positive")
	private int carDoors;
	@Min(value = 0, message = "The value must be positive")
	@Range(min = 1950,max = 5000,message="year should have exactly 4 characters")
	private int carManufacturingYear;
	@Min(value = 0, message = "The value must be positive")
	private int carMileage;
	@Min(value = 0, message = "The value must be positive")
	private int carPrice;
	@NotEmpty(message = "Car launching date cannot be empty")
	private String carLaunchingDate;
	
	private String displayCarPrice;
	private List<String> carImages;
	private String imageFrontView;
	
	private List<byte[]> images;
	
	private String enquiryStatus;
	private int enquiryId;
	
	
	
	
	public String getDisplayCarPrice() {
		return displayCarPrice;
	}
	public void setDisplayCarPrice(String displayCarPrice) {
		this.displayCarPrice = displayCarPrice;
	}
	public List<String> getCarImages() {
		return carImages;
	}
	public void setCarImages(List<String> carImages) {
		this.carImages = carImages;
	}
	public int getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		this.enquiryId = enquiryId;
	}
	public String getEnquiryStatus() {
		return enquiryStatus;
	}
	public void setEnquiryStatus(String enquiryStatus) {
		this.enquiryStatus = enquiryStatus;
	}
	public int getCarVariantId() {
		return carVariantId;
	}
	public void setCarVariantId(int carVariantId) {
		this.carVariantId = carVariantId;
	}
	public int getCarModelId() {
		return carModelId;
	}
	public void setCarModelId(int carModelId) {
		this.carModelId = carModelId;
	}
	public String getImageFrontView() {
		return imageFrontView;
	}
	public void setImageFrontView(String imageFrontView) {
		this.imageFrontView = imageFrontView;
	}
	
	public List<byte[]> getImages() {
		return images;
	}
	public void setImages(List<byte[]> images) {
		this.images = images;
	}
	

	


	public String getCarLaunchingDate() {
		return carLaunchingDate;
	}
	public void setCarLaunchingDate(String carLaunchingDate) {
		this.carLaunchingDate = carLaunchingDate;
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
	public void setCarTransmissionType(String carTransmissionType) {
		this.carTransmissionType = carTransmissionType;
	}
	public String getCarFuelType() {
		return carFuelType;
	}
	public void setCarFuelType(String carFuelType) {
		this.carFuelType = carFuelType;
	}
	
	public int getCarDoors() {
		return carDoors;
	}
	public void setCarDoors(int carDoors) {
		this.carDoors = carDoors;
	}
	
	public String getCarVariantName() {
		return carVariantName;
	}
	public void setCarVariantName(String carVariantName) {
		this.carVariantName = carVariantName;
	}
	public String getCarBrand() {
		return carBrand;
	}
	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}
	
	public int getCarManufacturingYear() {
		return carManufacturingYear;
	}
	public void setCarManufacturingYear(int carManufacturingYear) {
		this.carManufacturingYear = carManufacturingYear;
	}
	
	public String getCarSeatingCapacity() {
		return carSeatingCapacity;
	}
	public void setCarSeatingCapacity(String carSeatingCapacity) {
		this.carSeatingCapacity = carSeatingCapacity;
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
	public String getCarTransmissionType() {
		return carTransmissionType;
	}
	public void setCarEngineCapacity(int carEngineCapacity) {
		this.carEngineCapacity = carEngineCapacity;
	}
	public String getCarModelName() {
		return carModelName;
	}
	public void setCarModelName(String carModelName) {
		this.carModelName = carModelName;
	}
	
}
