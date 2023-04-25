package com.model.usedcar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.model.dealer.DealerModel;

@Entity
public class BidModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bidId;
	private String bidValue;
	@Column(columnDefinition = "varchar(50) default 'interested'")
	private String bidStatus;
	
	@ManyToOne
	private UsedCarModel usedCar;
	
	@ManyToOne
	private DealerModel dealer;
	

	
	public String getBidStatus() {
		return bidStatus;
	}

	public void setBidStatus(String bidStatus) {
		this.bidStatus = bidStatus;
	}

	public int getBidId() {
		return bidId;
	}

	public void setBidId(int bidId) {
		this.bidId = bidId;
	}

	public String getBidValue() {
		return bidValue;
	}

	public void setBidValue(String bidValue) {
		this.bidValue = bidValue;
	}

	public UsedCarModel getUsedCar() {
		return usedCar;
	}

	public void setUsedCar(UsedCarModel usedCar) {
		this.usedCar = usedCar;
	}

	public DealerModel getDealer() {
		return dealer;
	}

	public void setDealer(DealerModel dealer) {
		this.dealer = dealer;
	}

	

	
	
	
}
