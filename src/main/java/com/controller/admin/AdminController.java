package com.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.admin.AdminModel;
import com.model.dealer.DealerModel;
import com.model.employee.EmployeeModel;
import com.model.newcar.InputNewCarEntity;
import com.model.newcar.NewCarEnquiryModel;
import com.model.newcar.NewCarVariants;
import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarModel;
import com.model.usedcar.UsedCarModelCarrier;
import com.model.user.UserEntity;
import com.service.admin.AdminService;
import com.service.dealer.DealerService;
import com.service.employee.EmployeeService;
import com.service.newcar.NewCarEnquiryService;
import com.service.newcar.NewCarVariantsService;
import com.service.usedcar.BidService;
import com.service.usedcar.UsedCarEnquiryCustomerService;
import com.service.usedcar.UsedCarService;
import com.service.user.UserService;
import com.util.FileHelper;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	@Autowired
	UsedCarService usedCarService;
	@Autowired
	NewCarEnquiryService newCarEnquiryService;
	@Autowired
	EmployeeService employeeService;
	@Autowired
	DealerService dealerService;
	@Autowired
	BidService bidService;
	@Autowired
	UsedCarEnquiryCustomerService usedCarEnquiryCustomerService;
	@Autowired
	UserService userService;
	@Autowired
	NewCarVariantsService newCarVariantsService;
	@Autowired
	FileHelper fileHelper;
	
	
	
	
	@PostMapping("addadmin")
	public ModelAndView addEmployee(@Valid @ModelAttribute("admin") AdminModel admin,BindingResult br,ModelAndView modelAndView){
		
		
		
		if(br.hasErrors()) {
			
			modelAndView.setViewName("forward:/ibc-login.jsp");
		}else {
			AdminModel adminModel = adminService.addAdmin(admin);
			if(adminModel!=null) {
				modelAndView.addObject("msg","admin added succefully!");
			}else {
				modelAndView.addObject("msg","error registering admin,please try again later!");
			}
			modelAndView.setViewName("forward:/ibc-login.jsp");
		}
		return modelAndView;
	}
	@RequestMapping("adminprofilepage")
	public ModelAndView editProfileAdminPage(@RequestParam("id")int adminId,ModelAndView modelAndView) {
		System.out.println("id-"+adminId);
		AdminModel adminModel=adminService.getAdminById(adminId);
		modelAndView.addObject("adminModel",adminModel);
		modelAndView.setViewName("/admin/admin-profile");
		return modelAndView;
	}
	@PostMapping("updateadminprofile")
	public ModelAndView updateAdmin(@RequestParam("id")int adminId,@Valid @ModelAttribute("adminModel")AdminModel adminModel,BindingResult br,ModelAndView modelandview) {
		
		if(br.hasErrors()) {
			modelandview.setViewName("/admin/admin-profile");
		}else {
			AdminModel admin = adminService.updateAdmin(adminModel,adminId);
			if(admin!=null) {
				modelandview.addObject("success", "Profile Updated Successfully!");
			}else {
				modelandview.addObject("success","error updating profile!");
			}
			modelandview.setViewName("forward:/adminprofilepage?id="+admin.getAdminId());
		}
		return modelandview;
	}
	
	@RequestMapping("sellnewcartouser")
	public ModelAndView sellNewCarToUser(@RequestParam("userid")int userId,@RequestParam("varid")int variantId,@RequestParam("enqid")int enqId,ModelAndView modelAndView) {
		
		newCarEnquiryService.deleteEnquiry(enqId);
		
		List<NewCarVariants> newCarsPurchasedByUser= userService.getNewCarPurchasedByUser(userId);
		newCarsPurchasedByUser.add(newCarVariantsService.getNewCarVariantByVariantId(variantId));
		UserEntity userEntity= userService.getUserById(userId);
		userEntity.setNewCarsPurchasedByUser(newCarsPurchasedByUser);
		
		userService.addUser(userEntity);
		
		modelAndView.addObject("newCarEnquiryPageNum", 1);
		modelAndView.addObject("msg","new car sold successfully!");
		modelAndView.setViewName("forward:/newcarenquiries");
		return modelAndView;
	}
	@RequestMapping("newcarenquirycloserequestadmin")
	public ModelAndView newCarEnquiryDone(@RequestParam("enqid")int enquiryId,ModelAndView modelAndView){
		
		if(enquiryId!=0) {
			Optional<NewCarEnquiryModel> newCarEnquiryModel = newCarEnquiryService.getEnquiryById(enquiryId);
			
			newCarEnquiryModel.get().setEnquiryStatus("close-enquiry-admin");
			newCarEnquiryService.addNewCarEnquiryModel(newCarEnquiryModel.get());
			
			modelAndView.addObject("success","enquiry cancellation request sent to user!");
			
		}
		List<NewCarEnquiryModel> newCarEnquiryList=newCarEnquiryService.getAllNewCarEnquiryModel();
		modelAndView.addObject("newCarEnquiryList",newCarEnquiryList);
		modelAndView.setViewName("/admin/newcar-enquiry-list");
		
		return modelAndView;
	}
	@RequestMapping("usedcarenquirycloserequestadmin")
	public ModelAndView usedCarEnquiryDone(@RequestParam("enquiryid")int enquiryId,ModelAndView modelAndView){
		
		if(enquiryId!=0) {
			
			Optional<UsedCarEnquiryCustomer> usedCarEnquiryCustomer =	usedCarEnquiryCustomerService.getEnquiryById(enquiryId);
			
			usedCarEnquiryCustomer.get().setEnquiryStatus("close-enquiry-admin");
			
			usedCarEnquiryCustomerService.addEnquiry(usedCarEnquiryCustomer.get());
			
			modelAndView.addObject("success","enquiry cancellation request sent to user!");
			
		}
		modelAndView.addObject("msg", "enquiry close request sent to customer");
		modelAndView.setViewName("forward:/admindashboard");
		return modelAndView;
	}
	
	@RequestMapping("/ibcemployeedetailspage")
	public ModelAndView gotoEmployeeDetailsPage(ModelAndView modelAndView) {
		
		List<EmployeeModel> employeeList=employeeService.getAllemployees();
	
		
			modelAndView.addObject("employees",employeeList);
			modelAndView.setViewName("/admin/employee-details");
			

		
		return modelAndView;
	}
	
	@RequestMapping("ibcdealerdetailspage")
	public ModelAndView gotoDealerDetailsPage(ModelAndView modelAndView) {
		
		
		List<DealerModel> dealers=dealerService.getAllDealers();
	
			modelAndView.addObject("dealers",dealers);
			modelAndView.setViewName("/admin/dealer-details");
			
		return modelAndView;
	}
	
	
	//pagination for admin dashboard
	@RequestMapping("/admindashboard")
	public ModelAndView gotoAdminDashboard(ModelAndView modelAndView) {
		
		List<UsedCarModel> usedCars = usedCarService.getAllUsedCarByStatus("selling-dealer");
		List<UsedCarModel> addOnList=usedCarService.getAllUsedCarByStatus("bid-completed");
		usedCars.addAll(addOnList);
		
		List<UsedCarModelCarrier> usedCarModelCarrierList=new ArrayList<>();
		
		for(int i=0;i<usedCars.size();i++) {
		
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
			usedCarModelCarrier.setUsedCarModelData(usedCars.get(i)); 
			
			//check if bid is happend for this carId
			List<BidModel> bidModels= bidService.getBidModelByUsedCarId(usedCars.get(i).getUsedCarId());
			
			//get top five bids for used car
			if(!bidModels.isEmpty()) {
				List<BidModel> topBids = bidService.getTopFiveBidValue(usedCars.get(i).getUsedCarId());
				if(!topBids.isEmpty()) {
					usedCarModelCarrier.setHighestBid(topBids.get(0).getBidValue());
				}else {
					usedCarModelCarrier.setHighestBid("No Bids yet!");
				}
			}
			
			usedCarModelCarrierList.add(usedCarModelCarrier);
		}
		//get customer enquiry for used cars
		List<UsedCarEnquiryCustomer> usedCarEnquiryListOfCustomers= usedCarEnquiryCustomerService.getAllEnquiriesForUsedCarByCustomer();
		
		modelAndView.addObject("usedCarListOfCustomer", usedCarEnquiryListOfCustomers);
		
		modelAndView.addObject("usedCarModelCarrier", usedCarModelCarrierList);
		
		//card data
		modelAndView.addObject("activebids", usedCars.size());
		modelAndView.addObject("newcarsale", newCarVariantsService.getTotalSaleOfNewCar());
		modelAndView.addObject("usedcarsale",usedCarService.getAllUsedCarSales());
		modelAndView.addObject("totaldealers",dealerService.getTotalNumberOfdealers());
		
		modelAndView.setViewName("/admin/admin-dashboard");
		
		return modelAndView;
	}
	
	@RequestMapping("dealrejectedbyadmin")
	public ModelAndView dealRejectProcessByAdmin(@RequestParam("dealerid")int dealerId,@RequestParam("carid")int carId,ModelAndView modelAndView) {
		//send mail to dealer left
		BidModel bidModel = bidService.getBidModelByDealerIdAndCarId(dealerId, carId);
		
		bidModel.setBidStatus("rejected-admin");
		bidService.addBid(bidModel);
		
		modelAndView.addObject("carid",carId);
		modelAndView.setViewName("forward:/gettopbiddata");
		return modelAndView;
	}
	
	@RequestMapping("sellcartodealer")
	public ModelAndView sellCarToDealer(@RequestParam("dealerid")int dealerId,@RequestParam("carid")int carId,@RequestParam("bidval")String bidValue,ModelAndView modelAndView) {
				
		
		
		Optional<UsedCarModel> usedCarModel= usedCarService.getUsedCarById(carId);
		
		//changing used car status and setting car sold to dealer
		DealerModel dealer= dealerService.getDealerById(dealerId);
		usedCarModel.get().setUsedCarStatus("sold-dealer");
		usedCarModel.get().setUsedCarSoldPrice(Integer.parseInt(bidValue));
		usedCarModel.get().setDealerModelBuyUsedCar(dealer);
		
		usedCarService.addUsedCar(usedCarModel.get());

		//removing all bids for this car
		bidService.removeAllBidsForUsedCar(carId);
		
		modelAndView.addObject("msg", "car sold to dealer successfully!");
		modelAndView.setViewName("forward:/admindashboard");
		return modelAndView;
	}
	
	@RequestMapping("sellusedcartocustomer")
	public ModelAndView sellUsedCarToCustomer(@RequestParam("enqid")int enquiryId,@RequestParam("sellprice")String sellPrice,ModelAndView modelAndView) {
		
		Optional<UsedCarEnquiryCustomer> usedCarEnquiryCustomerModel = usedCarEnquiryCustomerService.getEnquiryById(enquiryId);
		
		List<UsedCarEnquiryCustomer> listOfUsedCarEnquiry = usedCarEnquiryCustomerService.getEnquiryListByCarId(usedCarEnquiryCustomerModel.get().getUsedCarModelData());
		
		for(int i=0;i<listOfUsedCarEnquiry.size();i++) {
			
			if(listOfUsedCarEnquiry.get(i).getInquiryId()==enquiryId) {
				listOfUsedCarEnquiry.get(i).setEnquiryStatus("deal-in-process");
			}else {
				listOfUsedCarEnquiry.get(i).setEnquiryStatus("car-sold");
			}
		}
		usedCarEnquiryCustomerModel.get().getUsedCarModelData().setUserEntityBuyUsedCar(usedCarEnquiryCustomerModel.get().getInterestedUser());
		usedCarEnquiryCustomerModel.get().getUsedCarModelData().setUsedCarStatus("sold-customer");
		usedCarEnquiryCustomerModel.get().getUsedCarModelData().setUsedCarSoldPrice(Integer.parseInt(sellPrice));
		usedCarService.addUsedCar(usedCarEnquiryCustomerModel.get().getUsedCarModelData()); 
		
		modelAndView.addObject("msg", "car sold to user successfully!");
		modelAndView.setViewName("forward:/admindashboard");
		return modelAndView;
	}
	@RequestMapping("initiatedeal")
	public ModelAndView initiateDealWithDealer(@RequestParam("dealerid")int dealerId,@RequestParam("carid")int carId,ModelAndView modelAndView) {
		
		//getting bid model for this deal
		BidModel bidByDealer = bidService.getBidModelByDealerIdAndCarId(dealerId, carId);
		
		if(bidByDealer!=null) {
			bidByDealer.setBidStatus("deal-initiated");
			bidService.addBid(bidByDealer);
			modelAndView.addObject("dealstatus","mail send to dealer for deal");
		}else {
			modelAndView.addObject("dealstatus","error initiating deal!");
		}
		
		modelAndView.setViewName("forward:/admindashboard");
		return modelAndView;
	}
	
	@RequestMapping("gettopbiddata")
	public ModelAndView getTopBidData(ModelAndView modelAndView,@RequestParam("carid")int usedCarId) {
		
		//check if bid is happend for this carId
		List<BidModel> bidModels= bidService.getBidModelByUsedCarId(usedCarId);
		
		//get top five bids for used car
		if(!bidModels.isEmpty()) {
			
			List<BidModel> topBids = bidService.getTopFiveBidValue(usedCarId);
			List<BidModel>	rejectedDealsData=bidService.getRejectedDeals(usedCarId);
			
			modelAndView.addObject("bidData", topBids);
			modelAndView.addObject("rejectedDealsData", rejectedDealsData);
		}
		
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId);
	
		FileHelper fileHelper=new FileHelper();
		String report=null;
		List<String> images=null;
		if(fileHelper.getUsedCarInspectionReport(usedCarModel.get())!=null) {
			report=fileHelper.getUsedCarInspectionReport(usedCarModel.get());
		}
		if(fileHelper.getAllUsedCarImages(usedCarModel.get())!=null) {
			images=fileHelper.getAllUsedCarImages(usedCarModel.get());
		}
		modelAndView.addObject("carData", usedCarModel.get());
		modelAndView.addObject("report", report);
		modelAndView.addObject("images", images);
		
		modelAndView.setViewName("/admin/topbid-details-admin");
		
		return modelAndView;
	}
	
	@RequestMapping("usedcardetailsadmin")
	public  ModelAndView getDetailsForAdmin(@RequestParam("usedcarid")int usedCarId,ModelAndView modelAndView){
		
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId); 
		
		UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
	
		if(!(usedCarModel.get().getUsedCarStatus().equalsIgnoreCase("ready-for-inspection")) && !(usedCarModel.get().getUsedCarStatus().equalsIgnoreCase("under-inspection"))) {
			
			if(!fileHelper.getAllUsedCarImages(usedCarModel.get()).isEmpty()) {
				usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarModel.get()));
				System.out.println("images set");
			}
			if(fileHelper.getUsedCarInspectionReport(usedCarModel.get())!=null) {	
				usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarModel.get()));
			}
			
		}
		usedCarModelCarrier.setUsedCarModelData(usedCarModel.get());
		if(!usedCarModel.isEmpty()) {
			modelAndView.addObject("car", usedCarModelCarrier);
		}else {
			modelAndView.addObject("error","error fetching details");
		}
		modelAndView.setViewName("/admin/usedcar-details-admin");
		return modelAndView;
	}
	
	@RequestMapping("ctodsale")
	public ModelAndView cToDSellApproved(@RequestParam("usedcarid")int usedCarId,@RequestParam("baseprice")String basePrice,ModelAndView modelAndView) {
		
		System.out.println("bid"+basePrice);
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId); 
		
		if(!usedCarModel.isEmpty()) {
			usedCarModel.get().setUsedCarStatus("selling-dealer");
			
			//setting bid start and end time
			Calendar startDate = Calendar.getInstance();
			usedCarModel.get().setUsedCarBidStartTime(startDate.getTime());
			
			Calendar endDate=Calendar.getInstance();
			endDate.setTime(startDate.getTime());
			//endDate.add(Calendar.MINUTE, 1);
			endDate.add(Calendar.HOUR, 24);
			usedCarModel.get().setUsedCarBidEndTime(endDate.getTime());
			
			usedCarModel.get().setUsedCarBasePrice(Integer.parseInt(basePrice));
			usedCarService.addUsedCar(usedCarModel.get());
			modelAndView.addObject("car", usedCarModel.get());
		}else {
			modelAndView.addObject("error","error fetching details");
		}
		modelAndView.setViewName("forward:/usedcarlistadmin");
		modelAndView.addObject("success","car sent for selling to dealers");
		return modelAndView;
	} 
	
	@RequestMapping("ctocsale")
	public ModelAndView cToCSellApproved(@RequestParam("usedcarid")int usedCarId,@RequestParam("baseprice")String basePrice,ModelAndView modelAndView) {
		
		//check if bid is happend for this carId
		List<BidModel> bidModels= bidService.getBidModelByUsedCarId(usedCarId);
		
		//removing all bids for this car
		if(!bidModels.isEmpty()) {
			bidService.removeAllBidsForUsedCar(usedCarId);
		}
		System.out.println("bid"+basePrice);
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId); 
		
		if(!usedCarModel.isEmpty()) {
			usedCarModel.get().setUsedCarStatus("selling-customer");
			usedCarModel.get().setUsedCarBasePrice(Integer.parseInt(basePrice));
			usedCarService.addUsedCar(usedCarModel.get());
			modelAndView.addObject("car", usedCarModel.get());
		}else {
			modelAndView.addObject("error","error fetching details");
		}
		modelAndView.setViewName("forward:/usedcarlistadmin");
		modelAndView.addObject("success","car sent for selling to customer");
		return modelAndView;
	}
	
	@RequestMapping("usedCarEnquiryDetails")
	public ModelAndView getDetailsForEnquiry(@RequestParam("enquiryid")int enquiryId,ModelAndView modelAndView) {
		
		Optional<UsedCarEnquiryCustomer> usedCarEnquiryCustomerModel= usedCarEnquiryCustomerService.getEnquiryById(enquiryId);
	
		UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
		if(!usedCarEnquiryCustomerModel.isEmpty()) {
			
			FileHelper fileHelper=new FileHelper();
			
			usedCarModelCarrier.setEnquiryModel(usedCarEnquiryCustomerModel.get());
			if(fileHelper.getUsedCarInspectionReport(usedCarEnquiryCustomerModel.get().getUsedCarModelData())!=null) {
				usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarEnquiryCustomerModel.get().getUsedCarModelData()));
			}
			if(fileHelper.getAllUsedCarImages(usedCarEnquiryCustomerModel.get().getUsedCarModelData())!=null) {
				usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarEnquiryCustomerModel.get().getUsedCarModelData()));
			}
			modelAndView.addObject("usedCarEnquiryDetails", usedCarModelCarrier);
			modelAndView.setViewName("/admin/usedcar-enquiry-details");
		}else {
			System.out.println("error fetching details");
		}
		return modelAndView;
	}
	
	
	
	@GetMapping("usedcarlistadmin")
	public ModelAndView usedCarListForAdmin(ModelAndView modelAndView) {
		
		List<UsedCarModel> usedCarUnderInspectionList=usedCarService.getAllUsedCarByStatus("under-inspection");
		List<UsedCarModel> usedCarReadyForInspectionList=usedCarService.getAllUsedCarByStatus("ready-for-inspection");
		List<UsedCarModel> inspectionDoneUsedCarsList=usedCarService.getAllUsedCarByExceptStatus("under-inspection","ready-for-inspection");
		
		modelAndView.addObject("usedCarInspectionDone",inspectionDoneUsedCarsList);
		modelAndView.addObject("usedCarReadyForInspection",usedCarReadyForInspectionList);
		modelAndView.addObject("usedCarUnderInspection",usedCarUnderInspectionList);

		modelAndView.setViewName("/admin/usedcar-list-admin");
		return modelAndView;
	}
	
	@RequestMapping("newcardetailsadmin")
	public ModelAndView getNewCarDetails(Optional<Integer> varid,ModelAndView modelAndView) {
		
		if(!varid.isEmpty()) {
			
			NewCarVariants newCarVariant = newCarVariantsService.getNewCarVariantByVariantId(varid.get());
			
			InputNewCarEntity ince=new InputNewCarEntity();
			
			ince.setCarModelId(newCarVariant.getCarModel().getCarModelId());
			ince.setCarBrand(newCarVariant.getCarModel().getNewCar().getCarBrand());
			ince.setCarVariantName(newCarVariant.getCarVariantName());
			ince.setCarBodyType(newCarVariant.getCarBodyType());
			ince.setCarDoors(newCarVariant.getCarDoors());
			ince.setCarEngineCapacity(newCarVariant.getCarEngineCapacity());
			ince.setCarEngineType(newCarVariant.getCarEngineType());
			ince.setCarFuelType(newCarVariant.getCarFuelType());
			ince.setCarLaunchingDate(newCarVariant.getCarLaunchingDate());
			ince.setCarManufacturingYear(newCarVariant.getCarManufacturingYear());
			ince.setCarMileage(newCarVariant.getCarMileage());
			ince.setCarModelName(newCarVariant.getCarModel().getCarModelName());
			ince.setCarPrice(newCarVariant.getCarPrice());
			ince.setCarSeatingCapacity(newCarVariant.getCarSeatingCapacity());
			ince.setCarTransmissionType(newCarVariant.getCarTransmissionType());
			ince.setCarVariantId(newCarVariant.getCarVariantId());
			
			try {
				if(!fileHelper.getAllNewCarImages(newCarVariant.getCarModel().getNewCar().getCarBrand(),newCarVariant.getCarModel().getCarModelName(), "exterior","newcar").isEmpty()){
					ince.setCarImages(fileHelper.getAllNewCarImages(newCarVariant.getCarModel().getNewCar().getCarBrand(),newCarVariant.getCarModel().getCarModelName(), "exterior","newcar"));
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			modelAndView.addObject("newcardata",ince);
			modelAndView.setViewName("/admin/newcar-details-admin");
		}else {
			modelAndView.setViewName("forward:/newcarenquiries");
		}
		return modelAndView;
	}
	
	@RequestMapping("deleteusedcaradmin")
	public ModelAndView deleteUsedCarByAdmin(Optional<Integer> usedcarid,ModelAndView modelAndView) {
		if(!usedcarid.isEmpty()) {
			usedCarService.deleteUsedCar(usedcarid.get());
			modelAndView.addObject("success", "car deleted successfully!");
			modelAndView.setViewName("forward:/usedcarlistadmin");
		}else {
			System.out.println("used car id is null");
		}
		return modelAndView;
	}
	
	@RequestMapping("deletenewcaradmin")
	public ModelAndView deleteNewCarByAdmin(Optional<Integer>varid,ModelAndView modelAndView) {
			
		if(!varid.isEmpty()) {
			newCarVariantsService.deleteNewCar(varid.get());
			modelAndView.addObject("success","car deleted successfully!");
		}else {
			System.out.println("no varid found");
			modelAndView.addObject("error", "error deleting car!");
		}
		modelAndView.setViewName("forward:/newcarenquiries");
		return modelAndView;
	}
	
	@GetMapping("newcarenquiries")
	public ModelAndView newCarEnquiriesList(ModelAndView modelAndView) {
		
		List<NewCarEnquiryModel> newCarEnquiryList=newCarEnquiryService.getAllNewCarEnquiryModel();
		
		List<NewCarVariants> newCarVariantList=newCarVariantsService.getAllVariants();
		
	
			List<InputNewCarEntity> newCarList=new ArrayList<>();
			for(int j=0;j<newCarVariantList.size();j++) {
				
				InputNewCarEntity ince = new InputNewCarEntity();
				
				ince.setCarModelId(newCarVariantList.get(j).getCarModel().getCarModelId());
				ince.setCarBrand(newCarVariantList.get(j).getCarModel().getNewCar().getCarBrand());
				ince.setCarVariantName(newCarVariantList.get(j).getCarVariantName());
				ince.setCarBodyType(newCarVariantList.get(j).getCarBodyType());
				ince.setCarDoors(newCarVariantList.get(j).getCarDoors());
				ince.setCarEngineCapacity(newCarVariantList.get(j).getCarEngineCapacity());
				ince.setCarEngineType(newCarVariantList.get(j).getCarEngineType());
				ince.setCarFuelType(newCarVariantList.get(j).getCarFuelType());
				ince.setCarLaunchingDate(newCarVariantList.get(j).getCarLaunchingDate());
				ince.setCarManufacturingYear(newCarVariantList.get(j).getCarManufacturingYear());
				ince.setCarMileage(newCarVariantList.get(j).getCarMileage());
				ince.setCarModelName(newCarVariantList.get(j).getCarModel().getCarModelName());
				ince.setCarPrice(newCarVariantList.get(j).getCarPrice());
				ince.setCarSeatingCapacity(newCarVariantList.get(j).getCarSeatingCapacity());
				ince.setCarTransmissionType(newCarVariantList.get(j).getCarTransmissionType());
				ince.setCarVariantId(newCarVariantList.get(j).getCarVariantId());
				
				try {
					if(!fileHelper.getAllNewCarImages(newCarVariantList.get(j).getCarModel().getNewCar().getCarBrand(),newCarVariantList.get(j).getCarModel().getCarModelName(), "exterior","newcar").isEmpty()){
						ince.setImageFrontView(fileHelper.getAllNewCarImages(newCarVariantList.get(j).getCarModel().getNewCar().getCarBrand(),newCarVariantList.get(j).getCarModel().getCarModelName(), "exterior","newcar").get(0));
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				newCarList.add(ince);
			
		}
		
		modelAndView.addObject("newcarlist", newCarList);
		modelAndView.addObject("newCarEnquiryList",newCarEnquiryList);
		modelAndView.setViewName("/admin/newcar-enquiry-list");
		return modelAndView;
	}
		
	@RequestMapping("findusedcarforinsepection")
	public ModelAndView InspectionUsedCar(@RequestParam("usedcarid")int usedCarId,ModelAndView modelAndView) {
		
		Optional<UsedCarModel> usedCarModel= usedCarService.getUsedCarById(usedCarId);
		
		if(usedCarModel.isPresent()) {
			usedCarModel.get().setUsedCarStatus("under-inspection");
			usedCarService.addUsedCar(usedCarModel.get());
		}else {
			System.out.println("no details found!");
		}
		modelAndView.setViewName("forward:/usedcarlistadmin");
		return modelAndView;
	}
	
	
}
