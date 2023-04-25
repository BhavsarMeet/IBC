package com.repository.usedcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.employee.EmployeeModel;
import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarModel;

@Repository
public interface UsedCarRepository extends JpaRepository<UsedCarModel, Integer>{

	@Query(value = "select * from used_car_model where used_car_status=?1 limit ?2,?3",nativeQuery = true)
	public List<UsedCarModel> getUsedCarsByUsedCarStatus(String usedCarStatus,int offset,int noOfRecords);
	
	@Query(value = "select * from used_car_model where used_car_status=?1",nativeQuery = true)
	public List<UsedCarModel> getAllUsedCarsByUsedCarStatus(String usedCarStatus);
	
	@Query(value = "select * from used_car_model where used_car_status!=?1 and used_car_status!=?2 limit ?3,?4",nativeQuery = true)
	public List<UsedCarModel> getUsedCarByNotUsedCarStatus(String usedCarStatus1,String usedCarStatus2,int offset,int noOfRecords);
	
	@Query(value = "select * from used_car_model where used_car_status!=?1 and used_car_status!=?2",nativeQuery = true)
	public List<UsedCarModel> getAllByNotUsedCarStatus(String usedCarStatus1,String usedCarStatus2);
 
	public List<BidModel> getBidModelByUsedCarId(int carId);
	
	@Query(value = "select count(*) from used_car_model where used_car_status='sold-customer' or used_car_status='sold-dealer'",nativeQuery = true)
	public int getAllSoldUsedCar();


	//for filter query
	@Query(value = "select distinct(used_car_brand) from used_car_model where used_car_status IN('selling-dealer')",nativeQuery = true )
	public List<String> getAllBrandsForDealer();
	
	@Query(value = "select distinct(used_car_model_name) from used_car_model where used_car_status IN('selling-dealer')",nativeQuery = true )
	public List<String> getAllModelsForDealer();
	
	@Query(value = "select distinct(used_car_brand) from used_car_model where used_car_status IN('selling-customer')",nativeQuery = true )
	public List<String> getAllBrandsForCustomer();
	
	@Query(value = "select distinct(used_car_model_name) from used_car_model where used_car_status IN('selling-customer')",nativeQuery = true )
	public List<String> getAllModelsForCustomer();
	
	@Query(value = "select distinct(used_car_model_name) from used_car_model where used_car_brand IN (:brands) and used_car_status IN('selling-dealer','bid-completed')",nativeQuery = true)
	public List<String> getUsedCarModelNameByUsedCarBrand(List<String> brands);
	
	@Query(value = "select * from used_car_model where used_car_no_of_owners IN(:owners) and used_car_Brand IN(:make) and used_car_model_name in(:model) and used_car_fuel_type in(:fuelType) and used_car_base_price>=:lowBudget and used_car_base_price<=:highBudget and used_Car_kilometers>=:lowKm and used_car_kilometers<=:highKm and  used_car_transmission_type in(:transmissionType) and used_car_status IN('selling-dealer');",nativeQuery = true)
	public List<UsedCarModel> getFilteredUsedCarModelForDealer(int lowBudget,int highBudget,int lowKm,int highKm,List<String> make,List<String> model,List<String> fuelType,List<String> transmissionType,List<String> owners);
	
	@Query(value = "select * from used_car_model where used_car_no_of_owners IN(:owners) and used_car_Brand IN(:make) and used_car_model_name in(:model) and used_car_fuel_type in(:fuelType) and used_car_base_price>=:lowBudget and used_car_base_price<=:highBudget and used_Car_kilometers>=:lowKm and used_car_kilometers<=:highKm and  used_car_transmission_type in(:transmissionType) and used_car_status IN('selling-customer');",nativeQuery = true)
	public List<UsedCarModel> getFilteredUsedCarModelForCustomer(int lowBudget,int highBudget,int lowKm,int highKm,List<String> make,List<String> model,List<String> fuelType,List<String> transmissionType,List<String> owners);
}
