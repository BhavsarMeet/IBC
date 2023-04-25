package com.controller.newcar;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.Format;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.newcar.InputNewCarEntity;
import com.model.newcar.NewCar;
import com.model.newcar.NewCarEnquiryModel;
import com.model.newcar.NewCarFilterModel;
import com.model.newcar.NewCarModel;
import com.model.newcar.NewCarVariants;
import com.model.user.UserEntity;
import com.service.newcar.NewCarEnquiryService;
import com.service.newcar.NewCarModelService;
import com.service.newcar.NewCarService;
import com.service.newcar.NewCarVariantsService;
import com.service.user.UserService;
import com.util.FileHelper;

@Controller
public class NewCarController {

	@Autowired
	NewCarModelService newCarModelService;
	@Autowired
	NewCarVariantsService newCarVariantsService;
	@Autowired
	NewCarService newCarService;
	@Autowired
	FileHelper fileHelper;
	@Autowired
	List<InputNewCarEntity> filterCarData;
	@Autowired
	NewCarEnquiryService newCarEnquiryService;
	@Autowired
	UserService userService;
	
	
	@RequestMapping("newcarenquiry")
	public ModelAndView addNewCarEnquiry(ModelAndView modelAndView,@RequestParam("userid") int userId,@RequestParam("vid") int variantId,HttpSession session){
		
		NewCarVariants newCarVariant=newCarVariantsService.getNewCarVariantByVariantId(variantId);
		UserEntity user = userService.getUserById(userId);
			
		NewCarEnquiryModel newCarEnquiryModel=new NewCarEnquiryModel();
		
		newCarEnquiryModel.setEnquiryStatus("interested");
		newCarEnquiryModel.setNewCarVariantData(newCarVariant);
		newCarEnquiryModel.setUserEntity(user);
		
		newCarEnquiryService.addNewCarEnquiryModel(newCarEnquiryModel);
		
		modelAndView.setViewName("redirect:/newcarlist");
		
		return modelAndView;
	}
	 
	@RequestMapping("/addnewcar")
	public ModelAndView addNewCarPage(ModelAndView modelAndView) {
		
		modelAndView.setViewName("/newcar/add-newcar");
		return modelAndView;
	}

	

	
	@PostMapping("registernewcar")
	public ModelAndView registerNewCar(@Valid @ModelAttribute("car") InputNewCarEntity car,BindingResult br,ModelAndView modelAndView) {

		if(br.hasErrors()) {
			System.out.println("erro happened");
			modelAndView.setViewName("/newcar/add-newcar");
		}
		else {
		
			NewCar newCar=newCarService.getNewCarByCarBrand(car.getCarBrand());
			
			NewCarModel newCarModel=newCarModelService.getNewCarModelByModelName(car.getCarModelName());
		
			if(newCar!=null) {
				
				//if car brand exists	
				
				System.out.println("brand exists");
			
				if(newCarModel!=null) {
					System.out.println("model exists");
					//if car model exists
					newCarModel.setNewCar(newCar);
					NewCarVariants newCarVariant=new NewCarVariants();
					newCarVariant.setCarManufacturingYear(car.getCarManufacturingYear());
					newCarVariant.setCarVariantName(car.getCarVariantName());
					newCarVariant.setCarBodyType(car.getCarBodyType());
					newCarVariant.setCarDoors(car.getCarDoors());
					newCarVariant.setCarEngineCapacity(car.getCarEngineCapacity());
					newCarVariant.setCarEngineType(car.getCarEngineType());
					newCarVariant.setCarFuelType(car.getCarFuelType());
					newCarVariant.setCarSeatingCapacity(car.getCarSeatingCapacity());
					newCarVariant.setCarMileage(car.getCarMileage());
					newCarVariant.setCarPrice(car.getCarPrice());
					newCarVariant.setCarLaunchingDate(car.getCarLaunchingDate());
					newCarVariant.setCarTransmissionType(car.getCarTransmissionType());
					newCarVariant.setCarModel(newCarModel);
					
					newCarVariantsService.addNewCarVariants(newCarVariant);
			
					modelAndView.setViewName("forward:/addnewcar");
					modelAndView.addObject("success","car added successfully!");
				
				}else {
				
					System.out.println("brand exists nt model");
					//if brand exists but model not exists
					newCarModel=new NewCarModel();
					newCarModel.setCarModelName(car.getCarModelName());
					newCarModel.setNewCar(newCar);
					
					newCarModelService.addNewCarModel(newCarModel);
						
					NewCarVariants newCarVariant=new NewCarVariants();
					newCarVariant.setCarManufacturingYear(car.getCarManufacturingYear());
					newCarVariant.setCarVariantName(car.getCarVariantName());
					newCarVariant.setCarBodyType(car.getCarBodyType());
					newCarVariant.setCarDoors(car.getCarDoors());
					newCarVariant.setCarEngineCapacity(car.getCarEngineCapacity());
					newCarVariant.setCarEngineType(car.getCarEngineType());
					newCarVariant.setCarFuelType(car.getCarFuelType());
					newCarVariant.setCarSeatingCapacity(car.getCarSeatingCapacity());
					newCarVariant.setCarTransmissionType(car.getCarTransmissionType());
					newCarVariant.setCarMileage(car.getCarMileage());
					newCarVariant.setCarPrice(car.getCarPrice());
					newCarVariant.setCarLaunchingDate(car.getCarLaunchingDate());
					newCarVariant.setCarModel(newCarModel);
					
					newCarVariantsService.addNewCarVariants(newCarVariant);
		
					modelAndView.addObject("inputNewCarEntity",car);
					modelAndView.setViewName("/newcar/add-newcar-images");
				
				}
			}
			else{ 
				
				System.out.println("n brand no mdoel");
				newCar=new NewCar();
				newCar.setCarBrand(car.getCarBrand());
				
				newCarService.addNewCar(newCar);
				
				newCarModel=new NewCarModel();
				newCarModel.setCarModelName(car.getCarModelName());
				newCarModel.setNewCar(newCar);
				
				newCarModelService.addNewCarModel(newCarModel);
				
				NewCarVariants newCarVariant=new NewCarVariants();
				newCarVariant.setCarManufacturingYear(car.getCarManufacturingYear());
				newCarVariant.setCarVariantName(car.getCarVariantName());
				newCarVariant.setCarBodyType(car.getCarBodyType());
				newCarVariant.setCarDoors(car.getCarDoors());
				newCarVariant.setCarEngineCapacity(car.getCarEngineCapacity());
				newCarVariant.setCarEngineType(car.getCarEngineType());
				newCarVariant.setCarFuelType(car.getCarFuelType());
				newCarVariant.setCarSeatingCapacity(car.getCarSeatingCapacity());
				newCarVariant.setCarTransmissionType(car.getCarTransmissionType());
				newCarVariant.setCarLaunchingDate(car.getCarLaunchingDate());
				newCarVariant.setCarMileage(car.getCarMileage());
				newCarVariant.setCarPrice(car.getCarPrice());
				newCarVariant.setCarModel(newCarModel);
				
				newCarVariantsService.addNewCarVariants(newCarVariant);
				
				modelAndView.addObject("inputNewCarEntity",car);
				modelAndView.setViewName("/newcar/add-newcar-images");
				
			}
		}
		return modelAndView;
	}
	
	@PostMapping("registercarimages")
	public ModelAndView registerCarAndImages(@RequestParam("brand")String brand,@RequestParam("model")String model,ModelAndView modelAndView,@RequestParam("filecolor") MultipartFile fileColor[],@RequestParam("fileinterior") MultipartFile fileInterior[],@RequestParam("fileexterior") MultipartFile fileExterior[]) {
		
		//adding images
		try {
			for(int i=0;i<fileColor.length;i++) {
				
				boolean flag = fileHelper.uploadFile(fileColor[i],brand,model,"color",i);
			}
			for(int i=0;i<fileInterior.length;i++) {
				boolean flag = fileHelper.uploadFile(fileInterior[i],brand,model,"interior",i);
			}
			for(int i=0;i<fileExterior.length;i++) {
				boolean flag = fileHelper.uploadFile(fileExterior[i],brand,model,"exterior",i);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		modelAndView.setViewName("forward:/addnewcar");
		modelAndView.addObject("success","car added successfully!");
		return modelAndView;
	}
	
	
	@RequestMapping("newcarlist")
	public ModelAndView getNewCarList(@RequestParam("brand")Optional<String>Brand,@RequestParam("type") Optional<String> type,@RequestParam("lowBudgetNewCar") Optional<String> lowBudgetNewCar,@RequestParam("highBudgetNewCar") Optional<String> highBudgetNewCar,NewCarFilterModel newCarFilterModel,ModelAndView modelAndView) {
	
		//filter work start
		
		//getting filter data
		List<Integer> makes=new ArrayList<>();
		List<Integer> models=new ArrayList<>();
		List<String> fuels=new ArrayList<>();
		List<String> transmissions=new ArrayList<>();
		List<String> bodyType=new ArrayList<>();
		int lowBudget;
		int highBudget;
		int lowMileage;
		int highMileage;
		int highEngineCapacity;
		int lowEngineCapacity;
		List<String> seatingCapacity=new ArrayList<>();
		
		//collecting filterdata from frontend
		NewCarFilterModel newCarFilter=new NewCarFilterModel();
		List<String> seatings=new ArrayList<>();
		if(newCarFilterModel!=null) {
			
			if(newCarFilterModel.getFilteredMakeList()!=null) {
				newCarFilter.setFilteredMakeList(newCarFilterModel.getFilteredMakeList());
				newCarFilter.setFilteredModelList(newCarFilterModel.getFilteredModelList());
				
				newCarFilter.setFullMakeList(newCarService.getAllNewCarDataForFilter());
				newCarFilter.setFullModelList(newCarModelService.getNewCarModelsByBrands(newCarFilterModel.getFilteredMakeList()));
			
			}else if(newCarFilterModel.getFilteredModelList()!=null) {
				newCarFilter.setFilteredMakeList(newCarFilterModel.getFilteredMakeList());
				newCarFilter.setFilteredModelList(newCarFilterModel.getFilteredModelList());
			
				newCarFilter.setFullMakeList(newCarService.getAllNewCarDataForFilter());
				newCarFilter.setFullModelList(newCarModelService.getAllNewCarModelsForFilter());
				
			}else {
				newCarFilter.setFullMakeList(newCarService.getAllNewCarDataForFilter());
				newCarFilter.setFullModelList(newCarModelService.getAllNewCarModelsForFilter());
			}
			newCarFilter.setFuelType(newCarFilterModel.getFuelType());
			newCarFilter.setTransmissionType(newCarFilterModel.getTransmissionType());
			newCarFilter.setBodyType(newCarFilterModel.getBodyType());
			newCarFilter.setSeatingCapacity(newCarFilterModel.getSeatingCapacity());
			newCarFilter.setLowBudget(newCarFilterModel.getLowBudget());
			newCarFilter.setHighBudget(newCarFilterModel.getHighBudget());
			newCarFilter.setLowMileage(newCarFilterModel.getLowMileage());
			newCarFilter.setHighMileage(newCarFilterModel.getHighMileage());
			newCarFilter.setLowEngineCapacity(newCarFilterModel.getLowEngineCapacity());
			newCarFilter.setHighEngineCapacity(newCarFilterModel.getHighEngineCapacity());
		
			//setting the 8+ for seating list
			if(newCarFilter.getSeatingCapacity()!=null) {
				for(int i=0;i<newCarFilter.getSeatingCapacity().size();i++) {
					seatings.add(newCarFilter.getSeatingCapacity().get(i));
					if(newCarFilter.getSeatingCapacity().get(i).equals("8+")) {
						
						seatings.remove(i);
						seatings.add("8");
						seatings.add("9");
						seatings.add("10");
						seatings.add("11");
						seatings.add("12");
						seatings.add("13");
						seatings.add("14");
						seatings.add("15");
						seatings.add("16");
						seatings.add("17");
						seatings.add("18");
						seatings.add("19");
						seatings.add("20");
						seatings.add("21");
						seatings.add("22");
						seatings.add("23");
						seatings.add("24");
						seatings.add("25");
						break;
					}
				}
			} 
		}
		
		//preparing data for query
		//budget
		if(!lowBudgetNewCar.isEmpty() && !highBudgetNewCar.isEmpty()) {
			lowBudget=Integer.parseInt(lowBudgetNewCar.get()+"00000");
			newCarFilter.setLowBudget(lowBudgetNewCar.get());
			if(highBudgetNewCar.get().equalsIgnoreCase("50+")) {
				highBudget=Integer.parseInt("50000000");
				newCarFilter.setHighBudget("500");
			}else {
				highBudget=Integer.parseInt(highBudgetNewCar.get()+"00000");
				newCarFilter.setHighBudget(highBudgetNewCar.get());
			}
		}
		else if(newCarFilter.getLowBudget()==null && newCarFilter.getHighBudget()==null) {
			lowBudget=Integer.parseInt("0");
			highBudget=Integer.parseInt("50000000");
		}else {
			lowBudget=Integer.parseInt(newCarFilter.getLowBudget()+"00000");
			highBudget=Integer.parseInt(newCarFilter.getHighBudget()+"00000");
		}
		
		//mileage
		if((newCarFilter.getLowMileage()=="" || newCarFilter.getLowMileage()==null) && (newCarFilter.getHighMileage()=="" || newCarFilter.getHighMileage()==null)) {
			lowMileage=Integer.parseInt("0");
			highMileage=Integer.parseInt("1000");
		}else {
			lowMileage=Integer.parseInt(newCarFilter.getLowMileage());
			highMileage=Integer.parseInt(newCarFilter.getHighMileage());
		}
		
		//mileage
		if((newCarFilter.getLowEngineCapacity()=="" || newCarFilter.getLowEngineCapacity()==null) && (newCarFilter.getHighEngineCapacity()=="" || newCarFilter.getHighEngineCapacity()==null)) {
			lowEngineCapacity=Integer.parseInt("0");
			highEngineCapacity=Integer.parseInt("10000");
		}else {
			lowEngineCapacity=Integer.parseInt(newCarFilter.getLowEngineCapacity());
			highEngineCapacity=Integer.parseInt(newCarFilter.getHighEngineCapacity());
		}
		
		//make
		if(newCarFilter.getFilteredMakeList()==null) {
			for(int i=0;i<newCarService.getAllNewCarDataForFilter().size();i++) {
				makes.add(newCarService.getAllNewCarDataForFilter().get(i).getCarId());
			}
		}else {
			makes.addAll(newCarFilter.getFilteredMakeList());
		}
		
		//model
		if(newCarFilter.getFilteredModelList()==null && newCarFilter.getFilteredMakeList()==null) {
			for(int i=0;i<newCarModelService.getAllNewCarModelsForFilter().size();i++) {
				models.add(newCarModelService.getAllNewCarModelsForFilter().get(i).getCarModelId());
			}
		}else if(newCarFilter.getFilteredModelList()==null && newCarFilter.getFilteredMakeList()!=null){
			for(int i=0;i<newCarModelService.getNewCarModelsByBrands(newCarFilterModel.getFilteredMakeList()).size();i++) {
				models.add(newCarModelService.getNewCarModelsByBrands(newCarFilterModel.getFilteredMakeList()).get(i).getCarModelId());
			}
		}else {
			models.addAll(newCarFilter.getFilteredModelList());
		}
		
		//fuel
		if(newCarFilter.getFuelType()==null) {
			fuels.add("Petrol");
			fuels.add("Diesel");
			fuels.add("CNG");
			fuels.add("Electric");
		}else {
			fuels.addAll(newCarFilter.getFuelType());
		}
		
		//body type
		if(!type.isEmpty()) {
			bodyType.add(type.get());
		}
		else if(newCarFilter.getBodyType()==null) {
			
			bodyType.add("SUV");
			bodyType.add("Sedan");
			bodyType.add("Hatchback");
			bodyType.add("Compact SUV");
			bodyType.add("Compact Sedan");
			bodyType.add("MUV");
			bodyType.add("Coupe");
			bodyType.add("Convertible");
			bodyType.add("Station Wagon");
			bodyType.add("Sports Car");
			bodyType.add("Minivan");
			bodyType.add("Truck");
			
		}else {
			bodyType.addAll(newCarFilter.getBodyType());
		}
		
		//transmission
		if(newCarFilter.getTransmissionType()==null) {
			transmissions.add("Manual");
			transmissions.add("Automatic");
		}else {
			transmissions.addAll(newCarFilter.getTransmissionType());
		}
		
		//seatings
		if(newCarFilter.getSeatingCapacity()==null) {
			
		
			seatingCapacity.add("5");
			seatingCapacity.add("6");
			seatingCapacity.add("7");
			seatingCapacity.add("8");
			seatingCapacity.add("9");
			seatingCapacity.add("10");
			seatingCapacity.add("11");
			seatingCapacity.add("12");
			seatingCapacity.add("13");
			seatingCapacity.add("14");
			seatingCapacity.add("15");
			seatingCapacity.add("16");
			seatingCapacity.add("17");
			seatingCapacity.add("18");
			seatingCapacity.add("19");
			seatingCapacity.add("20");
			seatingCapacity.add("21");
			seatingCapacity.add("22");
			seatingCapacity.add("23");
			seatingCapacity.add("24");
			seatingCapacity.add("25");
			
		}else {
			seatingCapacity.addAll(seatings);
		}
		System.out.println("budget:"+lowBudget+"-"+highBudget);
		System.out.println("mileage:"+lowMileage+"-"+highMileage);
		System.out.println("engine:"+lowEngineCapacity+"-"+highEngineCapacity);
		System.out.println("make:"+makes);
		System.out.println("model:"+models);
		System.out.println("fuels:"+fuels);
		System.out.println("trasmissions:"+transmissions);
		System.out.println("bodytype:"+bodyType);
		System.out.println("seatings:"+seatingCapacity);
		
		//passing the query 
		List<NewCarVariants> filteredNewCarList=newCarVariantsService.getFilteredNewCarVariantsList(lowBudget,highBudget,lowMileage,highMileage,lowEngineCapacity,highEngineCapacity,models,fuels,transmissions,bodyType,seatingCapacity);
		System.out.println(filteredNewCarList.size());
		//setting images and data for this filtered list
		List<InputNewCarEntity> filteredNewCarListWithImages=new ArrayList<>();
		
		for(int i = 0;i<makes.size();i++) {
			
			for(int j=0;j<filteredNewCarList.size();j++) {
				
				if(makes.get(i)==filteredNewCarList.get(j).getCarModel().getNewCar().getCarId()) {
					
					InputNewCarEntity ince = new InputNewCarEntity();
					
					ince.setCarModelId(filteredNewCarList.get(j).getCarModel().getCarModelId());
					ince.setCarBrand(filteredNewCarList.get(j).getCarModel().getNewCar().getCarBrand());
					ince.setCarVariantName(filteredNewCarList.get(j).getCarVariantName());
					ince.setCarBodyType(filteredNewCarList.get(j).getCarBodyType());
					ince.setCarDoors(filteredNewCarList.get(j).getCarDoors());
					ince.setCarEngineCapacity(filteredNewCarList.get(j).getCarEngineCapacity());
					ince.setCarEngineType(filteredNewCarList.get(j).getCarEngineType());
					ince.setCarFuelType(filteredNewCarList.get(j).getCarFuelType());
					ince.setCarLaunchingDate(filteredNewCarList.get(j).getCarLaunchingDate());
					ince.setCarManufacturingYear(filteredNewCarList.get(j).getCarManufacturingYear());
					ince.setCarMileage(filteredNewCarList.get(j).getCarMileage());
					ince.setCarModelName(filteredNewCarList.get(j).getCarModel().getCarModelName());
					DecimalFormat format=new DecimalFormat("##,##,###");
					ince.setDisplayCarPrice(format.format(filteredNewCarList.get(j).getCarPrice()));
					ince.setCarSeatingCapacity(filteredNewCarList.get(j).getCarSeatingCapacity());
					ince.setCarTransmissionType(filteredNewCarList.get(j).getCarTransmissionType());
					ince.setCarVariantId(filteredNewCarList.get(j).getCarVariantId());
					
					try {
						if(!fileHelper.getAllNewCarImages(filteredNewCarList.get(j).getCarModel().getNewCar().getCarBrand(),filteredNewCarList.get(j).getCarModel().getCarModelName(), "exterior","newcar").isEmpty()){
							ince.setImageFrontView(fileHelper.getAllNewCarImages(filteredNewCarList.get(j).getCarModel().getNewCar().getCarBrand(),filteredNewCarList.get(j).getCarModel().getCarModelName(), "exterior","newcar").get(0));
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					filteredNewCarListWithImages.add(ince);
				}
			}
		}
		
		modelAndView.addObject("carlist", filteredNewCarListWithImages);
		modelAndView.addObject("size", filteredNewCarListWithImages.size());
		modelAndView.addObject("filter", newCarFilter);
		modelAndView.setViewName("/newcar/newcar-list-view");
		return modelAndView;
	}
	
	@RequestMapping("newcardetails")
	public ModelAndView getNewCarDetails(ModelAndView modelAndView,@RequestParam("vid") int vid) {
		
		//preparing new car list
		List<NewCarVariants> newCarVariants = newCarVariantsService.getAllVariants();
		
		List<InputNewCarEntity> carlist = new ArrayList<InputNewCarEntity>();
		
		for(int i = 0;i<newCarVariants.size();i++) {
			
			InputNewCarEntity ince = new InputNewCarEntity();
			
			ince.setCarModelId(newCarVariants.get(i).getCarModel().getCarModelId());
			ince.setCarBrand(newCarVariants.get(i).getCarModel().getNewCar().getCarBrand());
			ince.setCarVariantName(newCarVariants.get(i).getCarVariantName());
			ince.setCarBodyType(newCarVariants.get(i).getCarBodyType());
			ince.setCarDoors(newCarVariants.get(i).getCarDoors());
			ince.setCarEngineCapacity(newCarVariants.get(i).getCarEngineCapacity());
			ince.setCarEngineType(newCarVariants.get(i).getCarEngineType());
			ince.setCarFuelType(newCarVariants.get(i).getCarFuelType());
			ince.setCarLaunchingDate(newCarVariants.get(i).getCarLaunchingDate());
			ince.setCarManufacturingYear(newCarVariants.get(i).getCarManufacturingYear());
			ince.setCarMileage(newCarVariants.get(i).getCarMileage());
			ince.setCarModelName(newCarVariants.get(i).getCarModel().getCarModelName());
			DecimalFormat format=new DecimalFormat("##,##,###");
			ince.setDisplayCarPrice(format.format(newCarVariants.get(i).getCarPrice()));
			ince.setCarSeatingCapacity(newCarVariants.get(i).getCarSeatingCapacity());
			ince.setCarTransmissionType(newCarVariants.get(i).getCarTransmissionType());
			ince.setCarVariantId(newCarVariants.get(i).getCarVariantId());
			
			try {
				if(!fileHelper.getAllNewCarImages(newCarVariants.get(i).getCarModel().getNewCar().getCarBrand(),newCarVariants.get(i).getCarModel().getCarModelName(), "exterior","newcar").isEmpty()){
					ince.setImageFrontView(fileHelper.getAllNewCarImages(newCarVariants.get(i).getCarModel().getNewCar().getCarBrand(),newCarVariants.get(i).getCarModel().getCarModelName(), "exterior","newcar").get(0));
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			System.out.println(ince.getImageFrontView());
			carlist.add(ince);
		}
		
		//preparing new car details
		NewCarVariants variant = newCarVariantsService.getNewCarVariantByVariantId(vid);
		
		InputNewCarEntity inputNewCarEntity=new InputNewCarEntity();
		
		inputNewCarEntity.setCarModelId(variant.getCarModel().getCarModelId());
		inputNewCarEntity.setCarModelName(variant.getCarModel().getCarModelName());
		inputNewCarEntity.setCarBrand(variant.getCarModel().getNewCar().getCarBrand());
		inputNewCarEntity.setCarVariantId(variant.getCarVariantId());
		inputNewCarEntity.setCarVariantName(variant.getCarVariantName());
		inputNewCarEntity.setCarBodyType(variant.getCarBodyType());
		inputNewCarEntity.setCarDoors(variant.getCarDoors());
		inputNewCarEntity.setCarEngineCapacity(variant.getCarEngineCapacity());
		inputNewCarEntity.setCarEngineType(variant.getCarEngineType());
		inputNewCarEntity.setCarFuelType(variant.getCarFuelType());
		inputNewCarEntity.setCarLaunchingDate(variant.getCarLaunchingDate());
		inputNewCarEntity.setCarManufacturingYear(variant.getCarManufacturingYear());
		inputNewCarEntity.setCarMileage(variant.getCarMileage());
		DecimalFormat format=new DecimalFormat("##,##,###");
		inputNewCarEntity.setDisplayCarPrice(format.format(variant.getCarPrice()));
		
		inputNewCarEntity.setCarSeatingCapacity(variant.getCarSeatingCapacity());
		inputNewCarEntity.setCarTransmissionType(variant.getCarTransmissionType());
		
		try {
			if(!fileHelper.getAllNewCarImages(variant.getCarModel().getNewCar().getCarBrand(),variant.getCarModel().getCarModelName(), "exterior","newcar").isEmpty()) {
				inputNewCarEntity.setCarImages(fileHelper.getAllNewCarImages(variant.getCarModel().getNewCar().getCarBrand(),variant.getCarModel().getCarModelName(), "exterior","newcar"));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	
		modelAndView.addObject("carlist", carlist);
		modelAndView.addObject("newcardetails",inputNewCarEntity);
		modelAndView.setViewName("/newcar/newcar-details");

		return modelAndView;
	}
}
