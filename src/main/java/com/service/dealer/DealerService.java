package com.service.dealer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.admin.AdminModel;
import com.model.dealer.DealerModel;
import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarModel;
import com.model.user.UserEntity;
import com.repository.dealer.DealerRepository;
import com.util.TitleCaseData;

@Service
public class DealerService {

	@Autowired
	DealerRepository dealerRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	public DealerModel addDealer(DealerModel dealerModel) {
		dealerModel.setDealerName(titleCaseData.toTitleCase(dealerModel.getDealerName()));
		return dealerRepository.save(dealerModel);
	}
	
	public DealerModel getDealerByEmailAndPassword(String dealerEmail,String dealerPassword) {
		return dealerRepository.findByDealerEmailAndDealerPassword(dealerEmail, dealerPassword);
	}
	
	public List<DealerModel> getAllDealersPagination(int offset,int noOfRecords){
		return dealerRepository.getAllDealers(offset,noOfRecords);
	}
	
	public List<DealerModel> getAllDealers(){
		return dealerRepository.findAll();
	}
	
	public DealerModel updateDealer(DealerModel dealerModel,int dealerId) {
		
		DealerModel updatedDealer = getDealerById(dealerId);
		
		updatedDealer.setDealerName(dealerModel.getDealerName());
		updatedDealer.setDealerEmail(dealerModel.getDealerEmail());
		updatedDealer.setDealerPhone(dealerModel.getDealerPhone());
		updatedDealer.setDealerAddress(dealerModel.getDealerAddress());
		
		return dealerRepository.save(updatedDealer);
	}
	
	public DealerModel updateDealerPassword(String password,int dealerId) {
		
		DealerModel updatedDealer=getDealerById(dealerId); 
		
		updatedDealer.setDealerPassword(password);
		
		return dealerRepository.save(updatedDealer);
	}
	public DealerModel getDealerById(int id) {
		return dealerRepository.findById(id).orElse(null);
	}
	
	public List<BidModel> getBidsByDealer(int id){
		return getDealerById(id).getBidsByDealer();
	}
	
	public List<UsedCarModel> getUsedCarPurchasedByDealer(int dealerId){
		return getDealerById(dealerId).getDealerBuyUsedCars();
	}
	
	public int getTotalNumberOfdealers() {
		return dealerRepository.getTotalDealer();
	}
	
	public DealerModel getDealerByEmail(String email) {
		return dealerRepository.getDealerByDealerEmail(email);
	}
	
}
