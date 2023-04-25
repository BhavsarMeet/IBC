package com.repository.common;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.common.GeneralInquiryModel;

@Repository
public interface GeneralInquiryRepository extends JpaRepository<GeneralInquiryModel, Integer>{

	
}
