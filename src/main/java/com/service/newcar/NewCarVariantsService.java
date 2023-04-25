package com.service.newcar;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.newcar.NewCarVariants;
import com.model.user.UserEntity;
import com.repository.newcar.NewCarVariantsRepository;
import com.util.TitleCaseData;

@Service
public class NewCarVariantsService {

	@Autowired
	NewCarVariantsRepository newCarVariantsRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	public NewCarVariants addNewCarVariants(NewCarVariants newCarVariant) {
		newCarVariant.setCarVariantName(titleCaseData.toTitleCase(newCarVariant.getCarVariantName()));
		return newCarVariantsRepository.save(newCarVariant);
	}
	
	public List<NewCarVariants> getAllVariants(){
		return newCarVariantsRepository.findAll();
	}
	
	public NewCarVariants getNewCarVariantsByVariantName(String name) {
		return newCarVariantsRepository.findByCarVariantName(name);
	}
	
	public List<NewCarVariants> getNewCarVariantByCarBodyType(String bodyType){
		return newCarVariantsRepository.findByCarBodyType(bodyType);
	}
	
	public List<NewCarVariants> getNewCarVariantByCarTransmissionType(String transmissionType){
		return newCarVariantsRepository.findByCarTransmissionType(transmissionType);
	}
	
	public List<NewCarVariants> getNewCarVariantByCarFuelType(String fuelType){
		return newCarVariantsRepository.findByCarFuelType(fuelType);
	}

	public NewCarVariants getNewCarVariantByVariantId(int variantId) {
		// TODO Auto-generated method stub
		return newCarVariantsRepository.getCarVaraintByCarVariantId(variantId);
	}
	
	public List<UserEntity> getUsersListForNewCar(int variantId){
		return newCarVariantsRepository.findById(variantId).get().getNewCarSoldToUser();
	}
	public int getTotalSaleOfNewCar() {
		return newCarVariantsRepository.getNewCarSale();
	}
	
	public boolean deleteNewCar(int varid) {
		
		newCarVariantsRepository.deleteById(varid);
		return true;
	}

	//filter methods
	public List<NewCarVariants> getFilteredNewCarVariantsList(int lowBudget,int highBudget,int lowMileage,int highMileage,int lowEngineCapacity,int highEngineCapacity,List<Integer> models,List<String> fuels,List<String> transmissions,List<String> bodyType,List<String> seatingCapacity){
		return newCarVariantsRepository.getFilteredNewCarVariants(lowBudget,highBudget,lowMileage,highMileage,lowEngineCapacity,highEngineCapacity,models,fuels,transmissions,bodyType,seatingCapacity);
	}
}
