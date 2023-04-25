package com.repository.usedcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarModel;
import com.model.user.UserEntity;

@Repository
public interface UsedCarEnquiryCustomerRepository extends JpaRepository<UsedCarEnquiryCustomer,Integer>{

	public List<UsedCarEnquiryCustomer> getAllUsedCarEnquiryCustomerByInterestedUser(UserEntity user);
	public List<UsedCarEnquiryCustomer> getAllUsedCarEnquiryCustomerByUsedCarModelData(UsedCarModel usedCarModel);
}
