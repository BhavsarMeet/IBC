package com.model.newcar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.model.user.UserEntity;

@Entity
public class NewCarEnquiryModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int enquiryId;
	
	private String enquiryStatus;
	
	@ManyToOne
	private NewCarVariants newCarVariantData;
	
	@ManyToOne
	private UserEntity userEntity;
	
	public String getEnquiryStatus() {
		return enquiryStatus;
	}
	public void setEnquiryStatus(String enquiryStatus) {
		this.enquiryStatus = enquiryStatus;
	}
	public int getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		this.enquiryId = enquiryId;
	}
	
	public NewCarVariants getNewCarVariantData() {
		return newCarVariantData;
	}
	public void setNewCarVariantData(NewCarVariants newCarVariantData) {
		this.newCarVariantData = newCarVariantData;
	}
	public UserEntity getUserEntity() {
		return userEntity;
	}
	public void setUserEntity(UserEntity userEntity) {
		this.userEntity = userEntity;
	}


	
} 
