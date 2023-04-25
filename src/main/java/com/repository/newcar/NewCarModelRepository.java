package com.repository.newcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.newcar.NewCarModel;
import com.model.newcar.NewCarVariants;

@Repository
public interface NewCarModelRepository extends JpaRepository<NewCarModel, Integer>{

	public NewCarModel getByCarModelName(String modelName);
	public NewCarModel getByCarModelId(int id);
	
	//filter related methods
	@Query(value = "select * from new_Car_model where new_car_car_id IN(:newCarid);",nativeQuery = true)
	public List<NewCarModel> getNewCarModelsByNewCar(List<Integer> newCarid);
	
	
}
 