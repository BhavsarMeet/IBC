package com.restcontroller.usedcar;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.model.response.ResponseEntity;
import com.model.usedcar.UsedCarModel;
import com.model.user.UserEntity;
import com.service.usedcar.UsedCarService;
import com.util.FileHelper;

@RestController
@CrossOrigin
public class UsedCarRestController {
	
	@Autowired
	UsedCarService usedCarService;
	
	@Autowired
	FileHelper fileHelper;
	
	@PostMapping("restaddusedcar")
	public ResponseEntity addUsedCarFromRest(@RequestBody UsedCarModel usedCarModel) {
		System.out.println(usedCarModel.getUsedCarBrand());
		usedCarModel.setUsedCarStatus("Ready For Inspection");
		UserEntity user = usedCarModel.getUserEntitySellCar();
		System.out.println(user.getUserEmail());
		usedCarService.addUsedCar(usedCarModel);
		return new ResponseEntity(200,"Used Car Added",usedCarModel);
	}
	
	@GetMapping("getcarforinspection")
	public ResponseEntity getUsedCarForInspection() {
		List<UsedCarModel> usedCars = usedCarService.getUsedCarList();
		for(int i = 0 ; i < usedCars.size() ; i++) {
			if(!usedCars.get(i).getUsedCarStatus().equals("Under Inspection")) {
				usedCars.remove(i);
			}
		}
		if(usedCars.isEmpty())
			return new ResponseEntity(-1,"List is Empty",null);
		else
			return new ResponseEntity(200, "List oF Car Retrived", usedCars);
	}
	
	@PostMapping("addusedcarimage")
	public ResponseEntity registerCarAndImages(@RequestParam("image") MultipartFile images[],@RequestParam("usedCarId")String userId,@RequestParam("platNumber")String platNumber) throws IOException {
		
		int i = 0;
		Optional<UsedCarModel> usedCar = usedCarService.getUsedCarById(Integer.parseInt(userId));
		usedCar.get().setPlatNumber(platNumber);
		usedCarService.addUsedCar(usedCar.get());
		UserEntity user = usedCar.get().getUserEntitySellCar();
		boolean result = false;
		for(MultipartFile image : images) {
			result = fileHelper.uploadUsedCarFile(image, usedCar.get().getUsedCarBrand(), usedCar.get().getUsedCarModelName(), image.getName(), i, user.getUserEmail(),platNumber);
			i++;
		}
		if(result) {
			usedCar.get().setUsedCarStatus("inspection done");
			usedCarService.addUsedCar(usedCar.get());
			return new ResponseEntity(200, "Inspectin done", usedCar.get());
		}
		else {
			return new ResponseEntity(-1,"Error",null);
		}
	}
	@PostMapping("addusedcarvideo")
	public ResponseEntity registerCarAndVideo(@RequestParam("video") MultipartFile video,@RequestParam("usedCarId")String userId,@RequestParam("platNumber")String platNumber) throws IOException {
		
	
		System.out.println("in method");
		Optional<UsedCarModel> usedCar = usedCarService.getUsedCarById(Integer.parseInt(userId));
		
		if(!usedCar.isEmpty()) {
			usedCar.get().setPlatNumber(platNumber);
			usedCarService.addUsedCar(usedCar.get());
			UserEntity user = usedCar.get().getUserEntitySellCar();
			boolean result = false;
		
			System.out.println("result will be fetched");
				result = fileHelper.uploadUsedCarVideo(video, usedCar.get().getUsedCarBrand(), usedCar.get().getUsedCarModelName(), video.getName(),1, user.getUserEmail(),platNumber);
			System.out.println("result fetched"+result);
			if(result) {
				
				//problem in usedcar.get-->fetching used car data probelm
				return new ResponseEntity(200, "File uploaded successfully!", usedCar.get());
			}
			else {
				System.out.println("flie not upload");
				return new ResponseEntity(-1,"Error",null);
			}
		}else {
			return new ResponseEntity(-1,"cannot fetch car data,please check id",null);
		}
	}
}
