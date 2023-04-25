package com.repository.newcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.employee.EmployeeModel;
import com.model.newcar.NewCarEnquiryModel;

@Repository
public interface NewCarEnquiryRepository extends JpaRepository<NewCarEnquiryModel, Integer>{

	@Query(value = "select * from new_car_enquiry_model limit ?1,?2",nativeQuery = true)
	public List<NewCarEnquiryModel> getAllNewCarEnquiries(int offset,int noOfRecords);
	
	 
}
