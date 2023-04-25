package com.model.usedcar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.model.user.UserEntity;

@Entity
public class UsedCarEnquiryCustomer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int inquiryId;
	
	private String enquiryStatus;
	
	@ManyToOne
	private UsedCarModel usedCarModelData;
	
	@ManyToOne
	private UserEntity interestedUser;
	
	
	
	public String getEnquiryStatus() {
		return enquiryStatus;
	}
	public void setEnquiryStatus(String enquiryStatus) {
		this.enquiryStatus = enquiryStatus;
	}
	public int getInquiryId() {
		return inquiryId;
	}
	public void setInquiryId(int inquiryId) {
		this.inquiryId = inquiryId;
	}
	public UsedCarModel getUsedCarModelData() {
		return usedCarModelData;
	}
	public void setUsedCarModelData(UsedCarModel usedCarModelData) {
		this.usedCarModelData = usedCarModelData;
	}
	public UserEntity getInterestedUser() {
		return interestedUser;
	}
	public void setInterestedUser(UserEntity interestedUser) {
		this.interestedUser = interestedUser;
	}

	
	
}
