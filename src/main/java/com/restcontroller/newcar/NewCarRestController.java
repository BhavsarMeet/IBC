package com.restcontroller.newcar;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.model.newcar.InputNewCarEntity;
import com.model.newcar.NewCarModel;
import com.model.newcar.NewCarVariants;
import com.model.response.ResponseEntity;
import com.service.newcar.NewCarModelService;

@RestController
@CrossOrigin
public class NewCarRestController {
	
	@Autowired
	NewCarModelService newCarModelService;
	
	@RequestMapping("/newcarlistrest")
	public ResponseEntity getNewCarList(ModelAndView modelAndView) throws IOException {
	
		List<NewCarModel> newCarModels = newCarModelService.getAllCarModel();
		
		List<InputNewCarEntity> carlist = new ArrayList<InputNewCarEntity>();
		
		for(int i = newCarModels.size()-1;i>=0;i--) {
			
			NewCarModel ncm = newCarModels.get(i);
			
			for(int j = 0 ; j < ncm.getCarVariants().size();j++) {
			
				NewCarVariants variant = ncm.getCarVariants().get(j);
				
				InputNewCarEntity ince = new InputNewCarEntity();
				
				ince.setCarBrand(ncm.getNewCar().getCarBrand());
				ince.setCarVariantName(variant.getCarVariantName());
				ince.setCarBodyType(variant.getCarBodyType());
				ince.setCarDoors(variant.getCarDoors());
				ince.setCarEngineCapacity(variant.getCarEngineCapacity());
				ince.setCarEngineType(variant.getCarEngineType());
				ince.setCarFuelType(variant.getCarFuelType());
				ince.setCarLaunchingDate(variant.getCarLaunchingDate());
				ince.setCarManufacturingYear(variant.getCarManufacturingYear());
				ince.setCarMileage(variant.getCarMileage());
				ince.setCarModelName(ncm.getCarModelName());
				ince.setCarPrice(variant.getCarPrice());
				ince.setCarSeatingCapacity(variant.getCarSeatingCapacity());
				ince.setCarTransmissionType(variant.getCarTransmissionType());
				
				ince.setImages(newCarModelService.getAllNewCarImages(ncm));
				carlist.add(ince);
			}
		}
		
		return new ResponseEntity(200, "cars retrived", carlist);
	}
}
