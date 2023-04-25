package com.service.usedcar;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarModel;
import com.model.user.UserEntity;
import com.repository.usedcar.UsedCarEnquiryCustomerRepository;

@Service
public class UsedCarEnquiryCustomerService {

	@Autowired
	UsedCarEnquiryCustomerRepository usedCarEnquiryCustomerRepository;
	
	public UsedCarEnquiryCustomer addEnquiry(UsedCarEnquiryCustomer enquiry) {
		return usedCarEnquiryCustomerRepository.save(enquiry);
	}
	
	public void deleteUsedCarEnquiryByCustomer(int enquiryId) {
		usedCarEnquiryCustomerRepository.deleteById(enquiryId);
	}
	
	public List<UsedCarEnquiryCustomer> getAllEnquiriesForUsedCarByCustomer(){
		return usedCarEnquiryCustomerRepository.findAll();
	}
	
	public Optional<UsedCarEnquiryCustomer> getEnquiryById(int enquiryId) {
		return usedCarEnquiryCustomerRepository.findById(enquiryId);
	}
	
	public List<UsedCarEnquiryCustomer> getEnquiryListByUser(UserEntity user){
		return usedCarEnquiryCustomerRepository.getAllUsedCarEnquiryCustomerByInterestedUser(user);
	}
	
	public List<UsedCarEnquiryCustomer> getEnquiryListByCarId(UsedCarModel usedCarModel){
		return usedCarEnquiryCustomerRepository.getAllUsedCarEnquiryCustomerByUsedCarModelData(usedCarModel);
	}
}
