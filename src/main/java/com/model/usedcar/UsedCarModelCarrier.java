package com.model.usedcar;

import java.util.List;

import org.apache.catalina.User;

import com.model.user.UserEntity;

public class UsedCarModelCarrier {

	private UsedCarModel usedCarModelData; 
	private String usedCarDisplayPrice;
	private String usedCarDisplaykm;
	private List<String> usedCarImages;
	private String usedCarVideo;
	private String usedCarInspectionReport;
	private String usedCarFrontImage;
	private String bidValueByDealer;
	private String highestBid;
	private String dealAsk;
	private UsedCarEnquiryCustomer enquiryModel;
	private int bidId;
	//sending any message
	private String message;
	
	
	
	
	public String getUsedCarVideo() {
		return usedCarVideo;
	}
	public void setUsedCarVideo(String usedCarVideo) {
		this.usedCarVideo = usedCarVideo;
	}
	public String getUsedCarDisplaykm() {
		return usedCarDisplaykm;
	}
	public void setUsedCarDisplaykm(String usedCarDisplaykm) {
		this.usedCarDisplaykm = usedCarDisplaykm;
	}
	public String getUsedCarDisplayPrice() {
		return usedCarDisplayPrice;
	}
	public void setUsedCarDisplayPrice(String usedCarDisplayPrice) {
		this.usedCarDisplayPrice = usedCarDisplayPrice;
	}
	public int getBidId() {
		return bidId;
	}
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public UsedCarEnquiryCustomer getEnquiryModel() {
		return enquiryModel;
	}
	public void setEnquiryModel(UsedCarEnquiryCustomer enquiryModel) {
		this.enquiryModel = enquiryModel;
	}
	public String getDealAsk() {
		return dealAsk;
	}
	public void setDealAsk(String dealAsk) {
		this.dealAsk = dealAsk;
	}
	public String getHighestBid() {
		return highestBid;
	}
	public void setHighestBid(String highestBid) {
		this.highestBid = highestBid;
	}
	public String getBidValueByDealer() {
		return bidValueByDealer;
	}
	public void setBidValueByDealer(String bidValueByDealer) {
		this.bidValueByDealer = bidValueByDealer;
	}
	public String getUsedCarFrontImage() {
		return usedCarFrontImage;
	}
	public void setUsedCarFrontImage(String usedCarFrontImage) {
		this.usedCarFrontImage = usedCarFrontImage;
	}
	
	public UsedCarModel getUsedCarModelData() {
		return usedCarModelData;
	}
	public void setUsedCarModelData(UsedCarModel usedCarModelData) {
		this.usedCarModelData = usedCarModelData;
	}
	public List<String> getUsedCarImages() {
		return usedCarImages;
	}
	public void setUsedCarImages(List<String> usedCarImages) {
		this.usedCarImages = usedCarImages;
	}
	public String getUsedCarInspectionReport() {
		return usedCarInspectionReport;
	}
	public void setUsedCarInspectionReport(String usedCarInspectionReport) {
		this.usedCarInspectionReport = usedCarInspectionReport;
	}
	
}
