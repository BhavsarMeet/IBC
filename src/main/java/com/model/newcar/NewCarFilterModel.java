package com.model.newcar;

import java.util.List;

public class NewCarFilterModel {

	private String lowBudget;
	private String highBudget;
	private String lowMileage;
	private String highMileage;
	private String lowEngineCapacity;
	private String highEngineCapacity;
	private List<NewCar> fullMakeList;
	private List<NewCarModel> fullModelList;
	private List<Integer> filteredMakeList;
	private List<Integer> filteredModelList;
	private List<String> fuelType;
	private List<String> transmissionType;
	private List<String> bodyType;
	private List<String> seatingCapacity;
	
	public String getLowBudget() {
		return lowBudget;
	}
	public void setLowBudget(String lowBudget) {
		this.lowBudget = lowBudget;
	}
	public String getHighBudget() {
		return highBudget;
	}
	public void setHighBudget(String highBudget) {
		this.highBudget = highBudget;
	}
	public String getLowMileage() {
		return lowMileage;
	}
	public void setLowMileage(String lowMileage) {
		this.lowMileage = lowMileage;
	}
	public String getHighMileage() {
		return highMileage;
	}
	public void setHighMileage(String highMileage) {
		this.highMileage = highMileage;
	}
	public String getLowEngineCapacity() {
		return lowEngineCapacity;
	}
	public void setLowEngineCapacity(String lowEngineCapacity) {
		this.lowEngineCapacity = lowEngineCapacity;
	}
	public String getHighEngineCapacity() {
		return highEngineCapacity;
	}
	public void setHighEngineCapacity(String highEngineCapacity) {
		this.highEngineCapacity = highEngineCapacity;
	}
	public List<NewCar> getFullMakeList() {
		return fullMakeList;
	}
	public void setFullMakeList(List<NewCar> fullMakeList) {
		this.fullMakeList = fullMakeList;
	}
	public List<NewCarModel> getFullModelList() {
		return fullModelList;
	}
	public void setFullModelList(List<NewCarModel> fullModelList) {
		this.fullModelList = fullModelList;
	}
	public List<Integer> getFilteredMakeList() {
		return filteredMakeList;
	}
	public void setFilteredMakeList(List<Integer> filteredMakeList) {
		this.filteredMakeList = filteredMakeList;
	}
	public List<Integer> getFilteredModelList() {
		return filteredModelList;
	}
	public void setFilteredModelList(List<Integer> filteredModelList) {
		this.filteredModelList = filteredModelList;
	}
	public List<String> getFuelType() {
		return fuelType;
	}
	public void setFuelType(List<String> fuelType) {
		this.fuelType = fuelType;
	}
	public List<String> getTransmissionType() {
		return transmissionType;
	}
	public void setTransmissionType(List<String> transmissionType) {
		this.transmissionType = transmissionType;
	}
	public List<String> getBodyType() {
		return bodyType;
	}
	public void setBodyType(List<String> bodyType) {
		this.bodyType = bodyType;
	}
	public List<String> getSeatingCapacity() {
		return seatingCapacity;
	}
	public void setSeatingCapacity(List<String> seatingCapacity) {
		this.seatingCapacity = seatingCapacity;
	}
	
}
