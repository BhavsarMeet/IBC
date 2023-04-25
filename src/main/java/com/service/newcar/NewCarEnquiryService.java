package com.service.newcar;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.employee.EmployeeModel;
import com.model.newcar.NewCarEnquiryModel;
import com.repository.newcar.NewCarEnquiryRepository;

@Service 
public class NewCarEnquiryService {

	@Autowired
	NewCarEnquiryRepository newCarEnquiryRepository;
	
	public NewCarEnquiryModel addNewCarEnquiryModel(NewCarEnquiryModel newCarEnquiryModel) {
		return newCarEnquiryRepository.save(newCarEnquiryModel);
	}
	
	public List<NewCarEnquiryModel> getAllNewCarEnquiryModel(){
		return newCarEnquiryRepository.findAll();
	}
	
	public List<NewCarEnquiryModel> getAllNewCarEnquiriesPagination(int offset,int noOfRecords){
		return newCarEnquiryRepository.getAllNewCarEnquiries(offset,noOfRecords);
	}
	
	public void deleteEnquiry(int enquiryId) {
		 newCarEnquiryRepository.deleteById(enquiryId);
	}
	
	public Optional<NewCarEnquiryModel> getEnquiryById(int enquiryId) {
		return newCarEnquiryRepository.findById(enquiryId);
	}
}
