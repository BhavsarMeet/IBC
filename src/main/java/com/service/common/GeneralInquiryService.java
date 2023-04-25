package com.service.common;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.common.GeneralInquiryModel;
import com.repository.common.GeneralInquiryRepository;

@Service
public class GeneralInquiryService {

		@Autowired
		GeneralInquiryRepository generalInquiryRepository;
		
		
		public GeneralInquiryModel addInquiry(GeneralInquiryModel generalInquiryModel) {
			return generalInquiryRepository.save(generalInquiryModel);
		}
		
		public List<GeneralInquiryModel> getAllInquiries(){
			return generalInquiryRepository.findAll();
		}
		
		public boolean deleteInquiry(int inquiryId) {
			generalInquiryRepository.deleteById(inquiryId);
			return true;
		}
}
