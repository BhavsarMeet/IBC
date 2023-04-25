package com.model.usedcar;

import java.util.List;

public class UsedCarFilterModel {

	
	private String lowBudget;
	private String highBudget;
	private List<String> fullMakeList;
	private List<String> fullModelList;
	private List<String> filteredMakeList;
	private List<String> filteredModelList;
	private String lowKm;
	private String highKm;
	private List<String> fuelType;
	private List<String> transmissionType;
	private List<String> bodyType;
	private List<String> noOfOwners;
	
	
	
	public List<String> getNoOfOwners() {
		return noOfOwners;
	}
	public void setNoOfOwners(List<String> noOfOwners) {
		this.noOfOwners = noOfOwners;
	}
	
	
	
	public List<String> getFullMakeList() {
		return fullMakeList;
	}
	public void setFullMakeList(List<String> fullMakeList) {
		this.fullMakeList = fullMakeList;
	}
	public List<String> getFullModelList() {
		return fullModelList;
	}
	public void setFullModelList(List<String> fullModelList) {
		this.fullModelList = fullModelList;
	}
	public List<String> getFilteredMakeList() {
		return filteredMakeList;
	}
	public void setFilteredMakeList(List<String> filteredMakeList) {
		this.filteredMakeList = filteredMakeList;
	}
	public List<String> getFilteredModelList() {
		return filteredModelList;
	}
	public void setFilteredModelList(List<String> filteredModelList) {
		this.filteredModelList = filteredModelList;
	}

	
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
	public String getLowKm() {
		return lowKm;
	}
	public void setLowKm(String lowKm) {
		this.lowKm = lowKm;
	}
	public String getHighKm() {
		return highKm;
	}
	public void setHighKm(String highKm) {
		this.highKm = highKm;
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
	
}
