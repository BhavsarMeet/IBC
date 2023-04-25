package com.service.newcar;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.newcar.NewCar;
import com.model.newcar.NewCarModel;
import com.repository.newcar.NewCarRepository;
import com.util.TitleCaseData;

@Service
public class NewCarService {

	@Autowired
	NewCarRepository newCarRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	public NewCar addNewCar(NewCar newCar) {
		newCar.setCarBrand(titleCaseData.toTitleCase(newCar.getCarBrand()));
		return newCarRepository.save(newCar);
	}
	
	public NewCar getNewCarByCarBrand(String carBrand) {
		return newCarRepository.getByCarBrand(carBrand);
	}
	
	public List<NewCar> getNewCarList(){
		return newCarRepository.findAll();
	}
	
	public List<NewCarModel> getNewCarModelListByCarBrand(String carBrand){
		return getNewCarByCarBrand(carBrand).getCarModel();
	}
	
	//filter related service
	public List<NewCar> getAllNewCarDataForFilter(){
		return newCarRepository.findAll();
	}
}
