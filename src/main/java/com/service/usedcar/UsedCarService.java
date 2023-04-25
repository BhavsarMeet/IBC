package com.service.usedcar;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarModel;
import com.repository.usedcar.UsedCarRepository;
import com.util.TitleCaseData;

@Service
public class UsedCarService {

	@Autowired
	UsedCarRepository usedCarRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	public UsedCarModel addUsedCar(UsedCarModel usedCarModel) {
		usedCarModel.setUsedCarModelName(titleCaseData.toTitleCase(usedCarModel.getUsedCarModelName()));
		usedCarModel.setUsedCarBrand(titleCaseData.toTitleCase(usedCarModel.getUsedCarBrand()));
		usedCarModel.setUsedCarVariant(titleCaseData.toTitleCase(usedCarModel.getUsedCarVariant()));
		return usedCarRepository.save(usedCarModel);
	}
	
	public List<UsedCarModel> getUsedCarList(){
		return usedCarRepository.findAll();
	}
	public Optional<UsedCarModel> getUsedCarById(int usedCarId) {
		return usedCarRepository.findById(usedCarId);
	}
	public List<UsedCarModel> getAllUsedCarByStatus(String status){
		return usedCarRepository.getAllUsedCarsByUsedCarStatus(status);
	}
	
	public List<UsedCarModel> getUsedCarByStatusPagination(String status,int offset,int noOfRecords){
		return usedCarRepository.getUsedCarsByUsedCarStatus(status, offset,noOfRecords);
	}
	public List<UsedCarModel> getAllUsedCarByExceptStatus(String status1,String status2){
		return usedCarRepository.getAllByNotUsedCarStatus(status1,status2);
	}
	
	public List<UsedCarModel> getUsedCarByExceptStatusPagination(String status1,String status2,int offset,int noOfRecords){
		return usedCarRepository.getUsedCarByNotUsedCarStatus(status1,status2,offset, noOfRecords);
	}
	
	public List<BidModel> getBidModelForUsedCar(int carId){
		return usedCarRepository.getBidModelByUsedCarId(carId);
	}
	
	public int getAllUsedCarSales() {
		return usedCarRepository.getAllSoldUsedCar();
	}
	
	public void deleteUsedCar(int usedCarId) {
		 usedCarRepository.deleteById(usedCarId);
	}
	
	//filter methods
	public List<String> getAllBrandForFilterForDealer(){
		return usedCarRepository.getAllBrandsForDealer();
	}
	
	public List<String> getAllModelsForFilterForDealer() {
		return usedCarRepository.getAllModelsForDealer();
	}
	
	public List<String> getAllBrandForFilterForCustomer(){
		return usedCarRepository.getAllBrandsForCustomer();
	}
	
	public List<String> getAllModelsForFilterForCustomer() {
		return usedCarRepository.getAllModelsForCustomer();
	}
	
	public List<String> getModelsByBrands(List<String> args){
		return usedCarRepository.getUsedCarModelNameByUsedCarBrand(args);
	}
	
	public List<UsedCarModel> getFilteredUsedCarListForDealer(int lowBudget,int highBudget,int lowKm,int highKm,List<String> make,List<String> model,List<String> fuelType,List<String> transmissionType,List<String> owners){
		return usedCarRepository.getFilteredUsedCarModelForDealer(lowBudget,highBudget,lowKm,highKm,make,model,fuelType,transmissionType,owners);
	}
	
	public List<UsedCarModel> getFilteredUsedCarListForCustomer(int lowBudget,int highBudget,int lowKm,int highKm,List<String> make,List<String> model,List<String> fuelType,List<String> transmissionType,List<String> owners){
		return usedCarRepository.getFilteredUsedCarModelForDealer(lowBudget,highBudget,lowKm,highKm,make,model,fuelType,transmissionType,owners);
	}
}
