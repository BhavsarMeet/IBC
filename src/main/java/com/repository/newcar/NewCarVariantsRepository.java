package com.repository.newcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.newcar.NewCarModel;
import com.model.newcar.NewCarVariants;

@Repository
public interface NewCarVariantsRepository extends JpaRepository<NewCarVariants, Integer>{

	public NewCarVariants findByCarVariantName(String variantName);
	public NewCarVariants getCarVaraintByCarVariantId(int id);
	public List<NewCarVariants> findByCarBodyType(String bodyType);
	public List<NewCarVariants> findByCarTransmissionType(String TransmissionType);
	public List<NewCarVariants> findByCarFuelType(String fuelType);
	@Query(value="select count(*) from user_entity_new_cars_purchased_by_user",nativeQuery = true)
	public int getNewCarSale();
	
	@Query(value = "select * from new_car_variants where car_price>=:lowBudget and car_price<=:highBudget and car_fuel_type IN(:fuels) and car_transmission_type in(:transmissions) and car_engine_capacity>=:lowEngineCapacity and car_engine_capacity<=:highEngineCapacity and car_mileage>=:lowMileage and car_mileage<=:highMileage and car_body_type in(:bodyType) and car_seating_capacity in(:seatingCapacity) and car_model_car_model_id in(:models);",nativeQuery = true)
	public List<NewCarVariants> getFilteredNewCarVariants(int lowBudget,int highBudget,int lowMileage,int highMileage,int lowEngineCapacity,int highEngineCapacity,List<Integer> models,List<String> fuels,List<String> transmissions,List<String> bodyType,List<String> seatingCapacity);
	
}
