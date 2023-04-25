package com.controller.user;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.newcar.InputNewCarEntity;
import com.model.newcar.NewCarEnquiryModel;
import com.model.newcar.NewCarVariants;
import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarModel;
import com.model.usedcar.UsedCarModelCarrier;
import com.model.user.UserEntity;
import com.service.newcar.NewCarEnquiryService;
import com.service.newcar.NewCarVariantsService;
import com.service.usedcar.UsedCarEnquiryCustomerService;
import com.service.usedcar.UsedCarService;
import com.service.user.UserService;
import com.util.FileHelper;

@Controller
public class UserController {

	@Autowired
	UserService userService; 
	@Autowired
	UsedCarEnquiryCustomerService usedCarEnquiryCustomerService;  
	@Autowired
	FileHelper fileHelper;
	@Autowired
	UsedCarService usedCarService;
	@Autowired
	NewCarEnquiryService newCarEnquiryService;
	@Autowired
	NewCarVariantsService newCarVariantsService;
	
	@PostMapping("registeruser")
	public ModelAndView addUser(UserEntity userEntity,@RequestParam("val") String val,@RequestParam("otp") String otp,@RequestParam("originalotp")String originalotp,HttpServletRequest request,HttpSession session,ModelAndView modelAndView) {
	
		boolean flag=false;
		
		if(otp.trim().equalsIgnoreCase(originalotp)) {
			if(!flag) {
				//name
				if(userEntity.getUserName()==null || userEntity.getUserName()=="") {
					flag=true;
					modelAndView.addObject("nameerror","name cannot be empty");
					modelAndView.setViewName("forward:/index");
				}else if((userEntity.getUserName().length()<=2)){
					flag=true;
					modelAndView.addObject("nameerror", "name must be of more than 2 characters");
					modelAndView.setViewName("forward:/index");
				}	
				
				//city
				if(userEntity.getUserAddress()==null || userEntity.getUserAddress()=="") {
					flag=true;
					modelAndView.addObject("cityerror","city cannot be empty!");
					modelAndView.setViewName("forward:/index");
				}else if((userEntity.getUserAddress().length()<=2 && userEntity.getUserAddress().length()>=20)){
					flag=true;
					modelAndView.addObject("cityerror", "city name should be between 3-20 characters");
					modelAndView.setViewName("forward:/index");
				}	
				
				//phone
				Pattern pattern1 = Pattern.compile("[6-9]{1}[0-9]{9}");
				
				if(userEntity.getUserPhoneNumber()==null || userEntity.getUserPhoneNumber()=="") {
					flag=true;
					modelAndView.addObject("phoneerror","phone number cannot be empty");
					modelAndView.setViewName("forward:/index");
				}else if(userEntity.getUserPhoneNumber().length()!=10){
					flag=true;
					modelAndView.addObject("phoneerror", "phone number must be of 10 digits");
					modelAndView.setViewName("forward:/index");
				}
				Matcher m1 = pattern1.matcher(userEntity.getUserPhoneNumber());
				if(!m1.matches()){
					flag=true;
					modelAndView.addObject("phoneerror", "please enter valid phone number");
					modelAndView.setViewName("forward:/index");
				}	
				
				//email
				Pattern pattern2 = Pattern.compile("[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}");
				
				if(userEntity.getUserEmail()==null || userEntity.getUserEmail()=="") {
					flag=true;
					modelAndView.addObject("emailerror","email cannot be empty");
					modelAndView.setViewName("forward:/index");
				}
				Matcher m2 = pattern2.matcher(userEntity.getUserEmail());
				 if(!m2.matches()) {
					flag=true;
					modelAndView.addObject("emailerror","please enter valid email id");
					modelAndView.setViewName("forward:/index");
				}
				
				//password
				Pattern pattern3 = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,20}$");

				if(userEntity.getUserPassword()==null || userEntity.getUserPassword()=="") {
					flag=true;
					modelAndView.addObject("passworderror","password cannot be empty");
					modelAndView.setViewName("forward:/index");
				}
				else if(userEntity.getUserPassword().length()<8 && userEntity.getUserPassword().length()>20) {
					flag=true;
					modelAndView.addObject("passworderror","password must be between 8 to 20 characters");
					modelAndView.setViewName("forward:/index");
				}
				Matcher m3 = pattern3.matcher(userEntity.getUserPassword());
				if(!m3.matches()) {
					flag=true;
					modelAndView.addObject("passworderror","password should be strong(atleast 1-number,alphabet(1-lower and 1-upper)and 1-special-character needed!)");
					modelAndView.setViewName("forward:/index");
				}
				
			}
				
			if(!flag){
				if(val.equalsIgnoreCase("sellyourcar")) {
					userService.addUser(userEntity);
					session=request.getSession();
					session.setAttribute("user",userEntity);
					modelAndView.setViewName("forward:/gotoaddusedcardetails");
					
				}else if(val.equalsIgnoreCase("newcaruser")){
					userService.addUser(userEntity);
					session=request.getSession();
					session.setAttribute("user",userEntity);
					modelAndView.setViewName("forward:/newcarlist");
					    
				}else { 
					userService.addUser(userEntity); 
					//redirect user to his dashboard
					
					session=request.getSession();
					session.setAttribute("user",userEntity);
					modelAndView.addObject("success", "Congratulations,account created successfully!");
					modelAndView.setViewName("forward:/index");
				}
			}	
		}
		else{
			modelAndView.addObject("error", "OTP entered was wrong");
			modelAndView.setViewName("forward:/index");
		}
	
		return modelAndView;
	}
	
	@RequestMapping("userdashboard")
	public ModelAndView userDashboard(ModelAndView modelAndView,HttpServletRequest request,HttpSession session) {
		
		session=request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("user");
		
		int newCarEnquiries=0;
		int usedCarEnquiries=0;
		int newCarPurchase=0;
		int usedCarPurchase=0;
		
		if(!userService.getNewCarEnquiryByUser(user.getUserId()).isEmpty()) {
			newCarEnquiries =userService.getNewCarEnquiryByUser(user.getUserId()).size();
		}
		if(!userService.getUsedCarEnquiryByCustomer(user.getUserId()).isEmpty()) {
			usedCarEnquiries=userService.getUsedCarEnquiryByCustomer(user.getUserId()).size();
		}
		if(!userService.getNewCarPurchasedByUser(user.getUserId()).isEmpty()) {
			newCarPurchase=userService.getNewCarPurchasedByUser(user.getUserId()).size();
		}
		if(!userService.getusedCarPurchasedByUser(user.getUserId()).isEmpty()) {
			usedCarPurchase=userService.getusedCarPurchasedByUser(user.getUserId()).size();
		}	
		
		modelAndView.addObject("totalenquiries", newCarEnquiries+usedCarEnquiries);
		modelAndView.addObject("usernewcarpurchased",newCarPurchase);
		modelAndView.addObject("userusedpurchased", usedCarPurchase);
		
		modelAndView.setViewName("/user/user-dashboard");
		
		return modelAndView;
	}
	

	@RequestMapping("userprofilepage")
	public ModelAndView editProfileUserPage(@RequestParam("userid")int userId,ModelAndView modelAndView) {
		System.out.println("id-"+userId);
		
		UserEntity userModel=userService.getUserById(userId);
		
		modelAndView.addObject("userModel",userModel);
		modelAndView.setViewName("/user/user-profile");
		
		return modelAndView;
	}
	
	@PostMapping("updateuserprofile")
	public ModelAndView updateUser(@Valid @ModelAttribute("userModel")UserEntity userModel,BindingResult br,@RequestParam("userid")int userId,UserEntity user,ModelAndView modelandview) {
		System.out.println("userId"+userId);
		if(br.hasErrors()) {
			modelandview.setViewName("/user/user-profile");
		}else {
			UserEntity userEntity = userService.updateUser(user,userId);
			if(userEntity!=null) {
				modelandview.addObject("success", "Profile Updated Successfully!");
			}else {
				modelandview.addObject("msg", "error updating profile!");
			}
			modelandview.setViewName("forward:/userprofilepage?userid="+userId);
		}	
		return modelandview;
	}
	
	@RequestMapping("usermycarenquiries")
	public ModelAndView getMyCarEnquiriesForUser(@RequestParam("userid")int userId,ModelAndView modelAndView) {
		
		//used car enquiry list
		UserEntity user = userService.getUserById(userId);
	
		List<UsedCarEnquiryCustomer> enquiryListOfUser = usedCarEnquiryCustomerService.getEnquiryListByUser(user);
		
		List<UsedCarModelCarrier> usedCarModelCarriers=new ArrayList();
		
		for(int i=0;i<enquiryListOfUser.size();i++) {
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
			usedCarModelCarrier.setUsedCarModelData(enquiryListOfUser.get(i).getUsedCarModelData());
			DecimalFormat formater=new DecimalFormat("##,##,###");
			usedCarModelCarrier.setUsedCarDisplaykm(formater.format(enquiryListOfUser.get(i).getUsedCarModelData().getUsedCarKilometers()));
			usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(enquiryListOfUser.get(i).getUsedCarModelData().getUsedCarBasePrice()));
			//checking for images existance
			if(!(fileHelper.getAllUsedCarImages(enquiryListOfUser.get(i).getUsedCarModelData()).isEmpty())  ) {
				//used car front image
				usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(enquiryListOfUser.get(i).getUsedCarModelData()).get(0));
				
				//used car all images
				usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(enquiryListOfUser.get(i).getUsedCarModelData()));
				
			
			
			}
			//used car video
			if(!fileHelper.getUsedCarVideo(enquiryListOfUser.get(i).getUsedCarModelData()).isEmpty()) {
				usedCarModelCarrier.setUsedCarVideo(fileHelper.getUsedCarVideo(enquiryListOfUser.get(i).getUsedCarModelData()));
			}
			
			//used car inspection report
			if(!(fileHelper.getUsedCarInspectionReport(enquiryListOfUser.get(i).getUsedCarModelData())=="")) {
				
				usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(enquiryListOfUser.get(i).getUsedCarModelData()));
			}
			
			usedCarModelCarrier.setEnquiryModel(enquiryListOfUser.get(i));
			
			if(enquiryListOfUser.get(i).getEnquiryStatus().equalsIgnoreCase("close-enquiry-admin")) {
				usedCarModelCarrier.setMessage("you are responded for this enquiry.do you want to cancel the enquiry?");
				modelAndView.addObject("task","enquiry");
			}
			if(enquiryListOfUser.get(i).getEnquiryStatus().equalsIgnoreCase("car-sold")) {
				modelAndView.addObject("task","deal");
				usedCarModelCarrier.setMessage("Sorry!this car has been sold now!best of luck to get your suitable car from IBC");
			}
			if(enquiryListOfUser.get(i).getEnquiryStatus().equalsIgnoreCase("deal-in-process")) {
				modelAndView.addObject("task","deal"); 
				usedCarModelCarrier.setMessage("Congratulations!you got this car and you can now see this car in your purchased section");
			}
			usedCarModelCarriers.add(usedCarModelCarrier);
		}
		
		//new car enquiry list
		List<NewCarEnquiryModel> newCarEnquiryByUser = userService.getNewCarEnquiryByUser(userId);

		List<InputNewCarEntity> inceList=new ArrayList<>();
		for(int i=0;i<newCarEnquiryByUser.size();i++) {
		
			
			InputNewCarEntity inputNewCarEntity=new InputNewCarEntity();
		
			try {
				if(!fileHelper.getAllNewCarImages(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarModel().getNewCar().getCarBrand(),newCarEnquiryByUser.get(i).getNewCarVariantData().getCarModel().getCarModelName(), "exterior","newcar").isEmpty()) {
					inputNewCarEntity.setImageFrontView(fileHelper.getAllNewCarImages(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarModel().getNewCar().getCarBrand(),newCarEnquiryByUser.get(i).getNewCarVariantData().getCarModel().getCarModelName(), "exterior","newcar").get(0));
					System.out.println(inputNewCarEntity.getImageFrontView());
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			inputNewCarEntity.setCarVariantId(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarVariantId());
			inputNewCarEntity.setCarBrand(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarModel().getNewCar().getCarBrand());
			inputNewCarEntity.setCarModelName(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarModel().getCarModelName());
			inputNewCarEntity.setCarVariantName(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarVariantName());
			inputNewCarEntity.setCarBodyType(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarBodyType());
			inputNewCarEntity.setCarDoors(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarDoors());
			inputNewCarEntity.setCarEngineCapacity(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarEngineCapacity());
			inputNewCarEntity.setCarEngineType(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarEngineType());
			inputNewCarEntity.setCarFuelType(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarFuelType());
			inputNewCarEntity.setCarLaunchingDate(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarLaunchingDate());
			inputNewCarEntity.setCarManufacturingYear(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarManufacturingYear());
			inputNewCarEntity.setCarMileage(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarMileage());
			DecimalFormat formater=new DecimalFormat("##,##,###");
			inputNewCarEntity.setDisplayCarPrice(formater.format(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarPrice()));
			//inputNewCarEntity.setCarPrice(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarPrice());
			inputNewCarEntity.setCarSeatingCapacity(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarSeatingCapacity());
			inputNewCarEntity.setCarTransmissionType(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarTransmissionType());
			inputNewCarEntity.setCarVariantId(newCarEnquiryByUser.get(i).getNewCarVariantData().getCarVariantId());
			inputNewCarEntity.setEnquiryId(newCarEnquiryByUser.get(i).getEnquiryId());
			if(newCarEnquiryByUser.get(i).getEnquiryStatus().equalsIgnoreCase("close-enquiry-admin")) {
				inputNewCarEntity.setEnquiryStatus("you are responded for this enquiry.do you want to cancel the enquiry?");
				
			}
			
			inceList.add(inputNewCarEntity);
		}
		
		modelAndView.addObject("newCarEnquiryData", inceList);
		modelAndView.addObject("usedCarEnquiryListOfUser", usedCarModelCarriers);
		
		modelAndView.setViewName("/user/myenquiries-user");
		
		return modelAndView;
	}
	
	@RequestMapping("usermycarlist")
	public ModelAndView getMyCarDetailsForUser(@RequestParam("userid")int userId,ModelAndView modelAndView) {
		
		
		
		//newcar purchased data
		List<NewCarVariants> listOfNewCarPurchased =userService.getNewCarPurchasedByUser(userId);
		
		List<InputNewCarEntity> inputNewCarEntities=new ArrayList<>();
		
		for(int i=0;i<listOfNewCarPurchased.size();i++) {
			
			InputNewCarEntity inputNewCarEntity=new InputNewCarEntity();
			
			try {
				if(!fileHelper.getAllNewCarImages(listOfNewCarPurchased.get(i).getCarModel().getNewCar().getCarBrand(),listOfNewCarPurchased.get(i).getCarModel().getCarModelName(), "exterior","newcar").isEmpty()) {
					inputNewCarEntity.setImageFrontView(fileHelper.getAllNewCarImages(listOfNewCarPurchased.get(i).getCarModel().getNewCar().getCarBrand(),listOfNewCarPurchased.get(i).getCarModel().getCarModelName(), "exterior","newcar").get(0));
					System.out.println(inputNewCarEntity.getImageFrontView());
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			inputNewCarEntity.setCarVariantId(listOfNewCarPurchased.get(i).getCarVariantId());
			inputNewCarEntity.setCarBrand(listOfNewCarPurchased.get(i).getCarModel().getNewCar().getCarBrand());
			inputNewCarEntity.setCarModelName(listOfNewCarPurchased.get(i).getCarModel().getCarModelName());
			inputNewCarEntity.setCarVariantName(listOfNewCarPurchased.get(i).getCarVariantName());
			inputNewCarEntity.setCarBodyType(listOfNewCarPurchased.get(i).getCarBodyType());
			inputNewCarEntity.setCarDoors(listOfNewCarPurchased.get(i).getCarDoors());
			inputNewCarEntity.setCarEngineCapacity(listOfNewCarPurchased.get(i).getCarEngineCapacity());
			inputNewCarEntity.setCarEngineType(listOfNewCarPurchased.get(i).getCarEngineType());
			inputNewCarEntity.setCarFuelType(listOfNewCarPurchased.get(i).getCarFuelType());
			inputNewCarEntity.setCarLaunchingDate(listOfNewCarPurchased.get(i).getCarLaunchingDate());
			inputNewCarEntity.setCarManufacturingYear(listOfNewCarPurchased.get(i).getCarManufacturingYear());
			inputNewCarEntity.setCarMileage(listOfNewCarPurchased.get(i).getCarMileage());
			DecimalFormat formater=new DecimalFormat("##,##,###");
			inputNewCarEntity.setDisplayCarPrice(formater.format(listOfNewCarPurchased.get(i).getCarPrice()));
			
			//inputNewCarEntity.setCarPrice(listOfNewCarPurchased.get(i).getCarPrice());
			inputNewCarEntity.setCarSeatingCapacity(listOfNewCarPurchased.get(i).getCarSeatingCapacity());
			inputNewCarEntity.setCarTransmissionType(listOfNewCarPurchased.get(i).getCarTransmissionType());
			inputNewCarEntity.setCarVariantId(listOfNewCarPurchased.get(i).getCarVariantId());
			
			inputNewCarEntities.add(inputNewCarEntity);
		}
		
		//usedcar purchased data
		List<UsedCarModel> usedCarModels = userService.getUserById(userId).getUserBuyUsedCars();
		System.out.println("usedcar data"+usedCarModels.size());
		List<UsedCarModelCarrier> usedcarCarriers=new ArrayList<>(); 
		for(int i=0;i<usedCarModels.size();i++) {
			
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
			usedCarModelCarrier.setUsedCarModelData(usedCarModels.get(i));
			DecimalFormat formater=new DecimalFormat("##,##,###");
			usedCarModelCarrier.setUsedCarDisplaykm(formater.format(usedCarModels.get(i).getUsedCarKilometers()));
			usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(usedCarModels.get(i).getUsedCarBasePrice()));
			
			if(!fileHelper.getAllUsedCarImages(usedCarModels.get(i)).isEmpty()) {
				usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarModels.get(i)).get(0));
			}
			usedcarCarriers.add(usedCarModelCarrier);
		}
		
		modelAndView.addObject("usedcarpurchaseddata", usedcarCarriers);
		modelAndView.addObject("newcarpurchaseddata", inputNewCarEntities);
		
		modelAndView.setViewName("/user/mycars-list");
		
		return modelAndView;
	}
	@RequestMapping("continueenquirycustomer")
	public ModelAndView continueEnquiryForNewCar(@RequestParam("enqid")int enquiryId,@RequestParam("userid")int userId,ModelAndView modelAndView) {
	
		Optional<NewCarEnquiryModel> newCarEnquiryModel = newCarEnquiryService.getEnquiryById(enquiryId);
		
		newCarEnquiryModel.get().setEnquiryStatus("interested");
		newCarEnquiryService.addNewCarEnquiryModel(newCarEnquiryModel.get());
		modelAndView.addObject("userid",userId);
		modelAndView.setViewName("forward:/usermycarenquiries");
		return modelAndView;
	}
	@RequestMapping("continueusedcarenquirycustomer")
	public ModelAndView continueEnquiryForUsedCar(@RequestParam("enqid")int enquiryId,@RequestParam("userid")int userId,ModelAndView modelAndView) {
	
		Optional<UsedCarEnquiryCustomer> usedCarEnquiryCustomer = usedCarEnquiryCustomerService.getEnquiryById(enquiryId);
		
		usedCarEnquiryCustomer.get().setEnquiryStatus("interested");
		usedCarEnquiryCustomerService.addEnquiry(usedCarEnquiryCustomer.get());
	
		modelAndView.addObject("userid",userId);
		modelAndView.setViewName("forward:/usermycarenquiries");
		
		return modelAndView;
	}
	@RequestMapping("closeenquirycustomer")
	public ModelAndView closeEnquiryForNewCar(@RequestParam("enqid")int enquiryId,@RequestParam("userid")int userId,ModelAndView modelAndView) {
		
		newCarEnquiryService.deleteEnquiry(enquiryId);
		
		modelAndView.addObject("msg", "enquiry removed successfully!");
		modelAndView.addObject("userid",userId);
		modelAndView.setViewName("forward:/usermycarenquiries");
		return modelAndView;
	} 
	@RequestMapping("closeusedcarenquirycustomer")
	public ModelAndView closeEnquiryForUsedCar(@RequestParam("enqid")int enquiryId,@RequestParam("userid")int userId,ModelAndView modelAndView) {
		
		usedCarEnquiryCustomerService.deleteUsedCarEnquiryByCustomer(enquiryId);
		
		modelAndView.addObject("status", "enquiry removed successfully!");
		modelAndView.addObject("userid",userId);
		modelAndView.setViewName("forward:/usermycarenquiries");
		return modelAndView;
	} 
	
	@RequestMapping("mycarnewcardetails")
	public ModelAndView getNewCarDetails(@RequestParam("varid")int varId,ModelAndView modelAndView) {
		
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
					DecimalFormat formater=new DecimalFormat("##,##,###");
					ince.setDisplayCarPrice(formater.format(newCarVariants.get(i).getCarPrice()));
					//ince.setCarPrice(newCarVariants.get(i).getCarPrice());
					ince.setCarSeatingCapacity(newCarVariants.get(i).getCarSeatingCapacity());
					ince.setCarTransmissionType(newCarVariants.get(i).getCarTransmissionType());
					ince.setCarVariantId(newCarVariants.get(i).getCarVariantId());
					
					try {
						if(!fileHelper.getAllNewCarImages(newCarVariants.get(i).getCarModel().getNewCar().getCarBrand(),newCarVariants.get(i).getCarModel().getCarModelName(), "exterior","newcar").isEmpty()) {
							ince.setImageFrontView(fileHelper.getAllNewCarImages(newCarVariants.get(i).getCarModel().getNewCar().getCarBrand(),newCarVariants.get(i).getCarModel().getCarModelName(), "exterior","newcar").get(0));
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					

					System.out.println(ince.getImageFrontView());
					carlist.add(ince);
				}
		NewCarVariants newCarVariant= newCarVariantsService.getNewCarVariantByVariantId(varId);
		
		List<String> exteriorImages=null;
		try {
			if(!fileHelper.getAllNewCarImages(newCarVariant.getCarModel().getNewCar().getCarBrand(), newCarVariant.getCarModel().getCarModelName(), "exterior","newcar").isEmpty()) {
				exteriorImages = fileHelper.getAllNewCarImages(newCarVariant.getCarModel().getNewCar().getCarBrand(), newCarVariant.getCarModel().getCarModelName(), "exterior","newcar");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DecimalFormat formater=new DecimalFormat("##,##,###");
		
		
		modelAndView.addObject("carlist", carlist);
		modelAndView.addObject("carprice", formater.format(newCarVariant.getCarPrice()));
		modelAndView.addObject("cardetails", newCarVariant);
		modelAndView.addObject("exteriorImages", exteriorImages);
		
		modelAndView.setViewName("/user/mycar-details-newcar");
		return modelAndView;
	}
	
	@RequestMapping("usermycardetails")
	public ModelAndView userMyCarsDetails(@RequestParam("carid")int carId,HttpSession session,HttpServletRequest request,ModelAndView modelAndView) {
		
		//details for used car customer
		Optional<UsedCarModel> usedCarModel= usedCarService.getUsedCarById(carId);
		
		UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
		usedCarModelCarrier.setUsedCarModelData(usedCarModel.get());
		DecimalFormat formater=new DecimalFormat("##,##,###");
		usedCarModelCarrier.setUsedCarDisplaykm(formater.format(usedCarModel.get().getUsedCarKilometers()));
		usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(usedCarModel.get().getUsedCarBasePrice()));
		//checking for images existance
		if(!(fileHelper.getAllUsedCarImages(usedCarModel.get()).isEmpty())  ) {
			//used car front image
			usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarModel.get()).get(0));
			
			//used car all images
			usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarModel.get()));
			
			
		
		}
		//used car video
		if(!fileHelper.getUsedCarVideo(usedCarModel.get()).isEmpty()) {
			usedCarModelCarrier.setUsedCarVideo(fileHelper.getUsedCarVideo(usedCarModel.get()));
		}
		
		//used car inspection report
		if(!(fileHelper.getUsedCarInspectionReport(usedCarModel.get())=="")) {
			
			usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarModel.get()));
		}
		
		modelAndView.addObject("usedCarDetails", usedCarModelCarrier);
		
		//preparing usedcarlist-customer to show
		//taking current user
		session=request.getSession();
		UserEntity currentUser=(UserEntity)session.getAttribute("user");
		
		//taking list for selling-customer
		List<UsedCarModel> usedCarListForCustomers = usedCarService.getAllUsedCarByStatus("selling-customer");
		
		List<UsedCarModelCarrier> usedCarModelCarriers=new ArrayList<>();
		
		//removing car uploaded by the same current customer
		for(int i=0;i<usedCarListForCustomers.size();i++) {
			
			if(usedCarListForCustomers.get(i).getUserEntitySellCar().getUserId()!=currentUser.getUserId()) {
				
				UsedCarModelCarrier usedCarModelCarrierData=new UsedCarModelCarrier();
				
				usedCarModelCarrierData.setUsedCarModelData(usedCarListForCustomers.get(i));
				DecimalFormat format=new DecimalFormat("##,##,###");
				usedCarModelCarrierData.setUsedCarDisplaykm(format.format(usedCarListForCustomers.get(i).getUsedCarKilometers()));
				usedCarModelCarrierData.setUsedCarDisplayPrice(format.format(usedCarListForCustomers.get(i).getUsedCarBasePrice()));	
				//checking for images existance
				if(!(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)).isEmpty())  ) {
					//used car front image
					usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)).get(0));
					
					//used car all images
					usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)));
					
					
				
				}
				//used car video
				if(!fileHelper.getUsedCarVideo(usedCarListForCustomers.get(i)).isEmpty()) {
					usedCarModelCarrier.setUsedCarVideo(fileHelper.getUsedCarVideo(usedCarListForCustomers.get(i)));
				}
				//used car inspection report
				if(!(fileHelper.getUsedCarInspectionReport(usedCarListForCustomers.get(i))=="")) {
					
					usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarListForCustomers.get(i)));
				}
				usedCarModelCarriers.add(usedCarModelCarrierData);
			}
		}
		
		modelAndView.addObject("usedcarcustomer", usedCarModelCarriers);
		
		
		modelAndView.setViewName("/user/mycar-details-usedcar");
		
		return modelAndView;
	}
	
	
	@RequestMapping("mysellcarlist")
	public ModelAndView getMySellCarList(HttpServletRequest request,HttpSession session,ModelAndView modelAndView) {
	
		session=request.getSession();
		UserEntity userEntity= (UserEntity) session.getAttribute("user");
		
		List<UsedCarModel> sellUsedCarAdByUser=userService.getUsedCarAdByUser(userEntity.getUserId()); 
		
		List<UsedCarModelCarrier> sellUsedCarAdList=new ArrayList<>();
		for(int i=0;i<sellUsedCarAdByUser.size();i++) {
		
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
			usedCarModelCarrier.setUsedCarModelData(sellUsedCarAdByUser.get(i));
			DecimalFormat format=new DecimalFormat("##,##,###");
			usedCarModelCarrier.setUsedCarDisplaykm(format.format(sellUsedCarAdByUser.get(i).getUsedCarKilometers()));
			usedCarModelCarrier.setUsedCarDisplayPrice(format.format(sellUsedCarAdByUser.get(i).getUsedCarBasePrice()));	
			
			if(!sellUsedCarAdByUser.get(i).getUsedCarStatus().equalsIgnoreCase("ready for inspection") && !sellUsedCarAdByUser.get(i).getUsedCarStatus().equalsIgnoreCase("under inspection")) {
				//checking for images existance
				if(!fileHelper.getAllUsedCarImages(sellUsedCarAdByUser.get(i)).isEmpty()) {
					usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(sellUsedCarAdByUser.get(i)).get(0));
				}
			}	
			sellUsedCarAdList.add(usedCarModelCarrier);
		}
		
		modelAndView.addObject("sellcarlistforuser", sellUsedCarAdList);
		modelAndView.setViewName("/user/mysellcar-list");
		return modelAndView;
	}
	
} 
