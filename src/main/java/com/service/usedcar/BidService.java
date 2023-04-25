package com.service.usedcar;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.admin.AdminModel;
import com.model.usedcar.BidModel;
import com.repository.usedcar.BidRepository;

@Service
public class BidService {

	@Autowired
	BidRepository bidRepository;
	
	public BidModel addBid(BidModel bidModel) {
		return bidRepository.save(bidModel);
	}

	public BidModel getBidModelByDealerIdAndCarId(int dealerId,int carId) {
		return bidRepository.findByDealerIdAndCarId(dealerId,carId);
	}
	
	public List<BidModel> getTopFiveBidValue(int carId){
		return bidRepository.findBidValue(carId);
	}
	
	public List<BidModel> getBidModelByUsedCarId(int usedCarId) {
		return bidRepository.findByUsedCarId(usedCarId);
	}
	
	public List<BidModel> getRejectedDeals(int usedCarId){
		return bidRepository.findByBidStatus(usedCarId);
	}
	
	public void removeAllBidsForUsedCar(int carId) {
		 bidRepository.deleteBId(carId);
	}
	
	public boolean deleteBid(int bidId) {
	
		bidRepository.deleteById(bidId);
		return true;
	}
}
