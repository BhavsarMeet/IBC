package com.controller.usedcar;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.dealer.DealerModel;
import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarFilterModel;
import com.model.usedcar.UsedCarModel;
import com.model.usedcar.UsedCarModelCarrier;
import com.model.user.UserEntity;
import com.service.usedcar.BidService;
import com.service.usedcar.UsedCarEnquiryCustomerService;
import com.service.usedcar.UsedCarService;
import com.service.user.UserService;
import com.util.FileHelper;

@Controller
public class UsedCarController {

	@Autowired 
	UsedCarService usedCarService;
	@Autowired
	FileHelper fileHelper;
	@Autowired
	BidService bidService;
	@Autowired
	UserService userService;
	@Autowired
	UsedCarEnquiryCustomerService usedCarEnquiryCustomerService; 
	
	
	@RequestMapping("usedcarlist-dealer")
	public ModelAndView getUsedCarListForDealer(UsedCarFilterModel usedCarFilterModel,ModelAndView modelAndView,HttpSession session,HttpServletRequest request,HttpServletResponse response) {
		
		System.out.println("here");
		session=request.getSession();
		DealerModel dealer= (DealerModel) session.getAttribute("dealer");
			
		//getting current time
		Calendar currentDate=Calendar.getInstance();
		
		//getting list with selling-dealer and checking for currtime>endtime
		List<UsedCarModel> usedCarListForChecking=usedCarService.getAllUsedCarByStatus("selling-dealer");
		if(usedCarListForChecking.size()!=0) {
			for(int i=0;i<usedCarListForChecking.size();i++) {
				//checking if current time is greater than for a particular car then change status
				if(currentDate.getTime().compareTo(usedCarListForChecking.get(i).getUsedCarBidEndTime())>0) {
					
					usedCarListForChecking.get(i).setUsedCarStatus("bid-completed");
					usedCarService.addUsedCar(usedCarListForChecking.get(i));
				}
			}
		}	
		
		//getting the updated list selling-dealer this would be the whole list which will not be displayed but just for timer reload purpose this will be sent on page(frontend)
		//based on this all data needs to be arragned
		List<UsedCarModel> usedCarListForDealer=usedCarService.getAllUsedCarByStatus("selling-dealer");
		//send this on jsp
		List<UsedCarModelCarrier> usedCarWithImagesList=new ArrayList<>();
	
		if(usedCarListForDealer.size()!=0) {
			
			for(int i=0;i<usedCarListForDealer.size();i++) {
				//creating an empty object-->then filling it below
				UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
				//used car data
				usedCarModelCarrier.setUsedCarModelData(usedCarListForDealer.get(i));
				DecimalFormat format=new DecimalFormat("##,##,###");
				usedCarModelCarrier.setUsedCarDisplaykm(format.format(usedCarListForDealer.get(i).getUsedCarKilometers()));
				usedCarModelCarrier.setUsedCarDisplayPrice(format.format(usedCarListForDealer.get(i).getUsedCarBasePrice()));
				//adding carrier into list
				usedCarWithImagesList.add(usedCarModelCarrier);
			}
			
			System.out.println(usedCarWithImagesList.get(0).getUsedCarFrontImage());
		}else {
			System.out.println("no cars to show");
		}
			
		//getting filter data
		List<String> makes=new ArrayList<>();
		List<String> models=new ArrayList<>();
		List<String> fuels=new ArrayList<>();
		List<String> transmissions=new ArrayList<>();
		int lowBudget;
		int highBudget;
		int lowKm;
		int highKm;
		List<String> numberOfOwners=new ArrayList<>();
		
		//collecting filterdata from frontend
		UsedCarFilterModel usedCarFilter =new UsedCarFilterModel();
		List<String> owners=new ArrayList<>();
		if(usedCarFilterModel!=null) {
			
			if(usedCarFilterModel.getFilteredMakeList()!=null) {
				
				usedCarFilter.setFilteredMakeList(usedCarFilterModel.getFilteredMakeList());
				usedCarFilter.setFilteredModelList(usedCarFilterModel.getFilteredModelList());
				
				usedCarFilter.setFullModelList(usedCarService.getModelsByBrands(usedCarFilterModel.getFilteredMakeList()));
				usedCarFilter.setFullMakeList(usedCarService.getAllBrandForFilterForDealer());
				
				
			}else if(usedCarFilterModel.getFilteredModelList()!=null) {
				usedCarFilter.setFilteredMakeList(usedCarFilterModel.getFilteredMakeList());
				usedCarFilter.setFilteredModelList(usedCarFilterModel.getFilteredModelList());
				
				usedCarFilter.setFullModelList(usedCarService.getAllModelsForFilterForDealer());
				usedCarFilter.setFullMakeList(usedCarService.getAllBrandForFilterForDealer());
			}else {
				usedCarFilter.setFullMakeList(usedCarService.getAllBrandForFilterForDealer());
				usedCarFilter.setFullModelList(usedCarService.getAllModelsForFilterForDealer());
			}
			usedCarFilter.setFuelType(usedCarFilterModel.getFuelType());
			usedCarFilter.setTransmissionType(usedCarFilterModel.getTransmissionType());
			usedCarFilter.setLowKm(usedCarFilterModel.getLowKm());
			usedCarFilter.setHighKm(usedCarFilterModel.getHighKm());
			usedCarFilter.setNoOfOwners(usedCarFilterModel.getNoOfOwners());
			usedCarFilter.setLowBudget(usedCarFilterModel.getLowBudget());
			usedCarFilter.setHighBudget(usedCarFilterModel.getHighBudget());
			
			//setting the 3+ for owners list
			if(usedCarFilter.getNoOfOwners()!=null) {
				for(int i=0;i<usedCarFilter.getNoOfOwners().size();i++) {
					owners.add(usedCarFilter.getNoOfOwners().get(i));
					if(usedCarFilter.getNoOfOwners().get(i).equals("3+")) {
						
						owners.remove(i);
						owners.add("3");
						owners.add("4");
						owners.add("5");
						owners.add("6");
						owners.add("7");
						owners.add("8");
						owners.add("9");
						owners.add("10");
						break;
					}
				}
			}
		}	
		
		//preparing data for query
		//budget
		if(usedCarFilter.getLowBudget()==null && usedCarFilter.getHighBudget()==null) {
			lowBudget=Integer.parseInt("0");
			highBudget=Integer.parseInt("50000000");
		}else {
			lowBudget=Integer.parseInt(usedCarFilter.getLowBudget()+"00000");
			highBudget=Integer.parseInt(usedCarFilter.getHighBudget()+"00000");
		}
		
		//km
		if((usedCarFilter.getLowKm()=="" || usedCarFilter.getLowKm()==null) && (usedCarFilter.getHighKm()=="" || usedCarFilter.getLowKm()==null)) {
			lowKm=Integer.parseInt("0");
			highKm=Integer.parseInt("500000");
		}else {
			lowKm=Integer.parseInt(usedCarFilter.getLowKm());
			highKm=Integer.parseInt(usedCarFilter.getHighKm());
		}
		
		//make
		if(usedCarFilter.getFilteredMakeList()==null) {
			makes.addAll(usedCarService.getAllBrandForFilterForDealer());
		}else {
			makes.addAll(usedCarFilter.getFilteredMakeList());
		}
		
		//model
		if(usedCarFilter.getFilteredModelList()==null && usedCarFilter.getFilteredMakeList()==null) {
			models.addAll(usedCarService.getAllModelsForFilterForDealer());
		}else if(usedCarFilter.getFilteredModelList()==null && usedCarFilter.getFilteredMakeList()!=null){
			models.addAll(usedCarService.getModelsByBrands(usedCarFilterModel.getFilteredMakeList()));
		}else {
			models.addAll(usedCarFilter.getFilteredModelList());
		}
		
		//fuel
		if(usedCarFilter.getFuelType()==null) {
			fuels.add("Petrol");
			fuels.add("Diesel");
			fuels.add("Electric");
			fuels.add("Hybrid");
		}else {
			fuels.addAll(usedCarFilter.getFuelType());
		}
		
		//transmission
		if(usedCarFilter.getTransmissionType()==null) {
			transmissions.add("Manual");
			transmissions.add("Automatic");
		}else {
			transmissions.addAll(usedCarFilter.getTransmissionType());
		}
		
		//owners
		if(usedCarFilter.getNoOfOwners()==null) {
			
			numberOfOwners.add("1");
			numberOfOwners.add("2");
			numberOfOwners.add("3");
			numberOfOwners.add("4");
			numberOfOwners.add("5");
			numberOfOwners.add("6");
			numberOfOwners.add("7");
			numberOfOwners.add("8");
			numberOfOwners.add("9");
			numberOfOwners.add("10");
			
		}else {
			numberOfOwners.addAll(owners);
		}
		System.out.println("budget-"+lowBudget+"-"+highBudget);
		System.out.println("km-"+lowKm+"-"+highKm);
		System.out.println("model-"+models);
		System.out.println("make-"+makes);
		System.out.println("fuel-"+fuels);
		System.out.println("transmission-"+transmissions);
		System.out.println("no of owners-"+numberOfOwners);
		
		//passing the query 
		List<UsedCarModel> filteredUsedCarListForDealer = usedCarService.getFilteredUsedCarListForDealer(lowBudget, highBudget, lowKm, highKm,makes, models,fuels,transmissions,numberOfOwners);
		System.out.println("filtered size-"+filteredUsedCarListForDealer.size());
		//setting images and data for this filtered list
		List<UsedCarModelCarrier> filteredUsedCarListForDealerWithImages=new ArrayList<>();
		 
		for(int i=0;i<filteredUsedCarListForDealer.size();i++) {
			 
			//creating an empty object-->then filling it below
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
		
			//used car data
			usedCarModelCarrier.setUsedCarModelData(filteredUsedCarListForDealer.get(i));
			DecimalFormat format=new DecimalFormat("##,##,###");
			usedCarModelCarrier.setUsedCarDisplaykm(format.format(filteredUsedCarListForDealer.get(i).getUsedCarKilometers()));
			usedCarModelCarrier.setUsedCarDisplayPrice(format.format(filteredUsedCarListForDealer.get(i).getUsedCarBasePrice()));
			//checking for images existance
			if(!fileHelper.getAllUsedCarImages(filteredUsedCarListForDealer.get(i)).isEmpty()) {
				//used car front image
				usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(filteredUsedCarListForDealer.get(i)).get(0));
			
			}
			System.out.println(fileHelper.getUsedCarVideo(filteredUsedCarListForDealer.get(i)));
			
			//check if bid is happend for this carId
			List<BidModel> bidModels= bidService.getBidModelByUsedCarId(filteredUsedCarListForDealer.get(i).getUsedCarId());
			
			//get top five bids for used car
			if(!bidModels.isEmpty()) {
				
 				List<BidModel> bids =bidService.getTopFiveBidValue(filteredUsedCarListForDealer.get(i).getUsedCarId());
				System.out.println(bids.size());
				usedCarModelCarrier.setHighestBid(bidService.getTopFiveBidValue(filteredUsedCarListForDealer.get(i).getUsedCarId()).get(0).getBidValue());
			}else {
				System.out.println("here");
				usedCarModelCarrier.setHighestBid("No Bids Yet!");
			}
			//getting all bids for used car
			List<BidModel> bidsForUsedCar=filteredUsedCarListForDealer.get(i).getBidForUsedCar();
			
			//extracting bid value for dealer
			for(int j=0;j<bidsForUsedCar.size();j++) {
				
				if(dealer.getDealerId()==bidsForUsedCar.get(j).getDealer().getDealerId()) {
				
					usedCarModelCarrier.setBidValueByDealer(bidsForUsedCar.get(j).getBidValue());
					break;
				}
			}
			filteredUsedCarListForDealerWithImages.add(usedCarModelCarrier);
			
		}
		  
		//list to display based on filterdata
		modelAndView.addObject("usedcardealerdata", filteredUsedCarListForDealerWithImages); 
		//filter data                                                                                                                                  
		modelAndView.addObject("filter",usedCarFilter);
		//dealer usedcar list for timer settings
		modelAndView.addObject("usedcardealer",usedCarWithImagesList);
		modelAndView.addObject("size", filteredUsedCarListForDealerWithImages.size());
		modelAndView.addObject("listsize",usedCarWithImagesList.size());
		System.out.println("total size-"+usedCarWithImagesList.size());
		modelAndView.setViewName("/usedcar/usedcar-list-dealer");
		
		response.setIntHeader("Refresh", 1200);
		return modelAndView; 
	}
	
	@RequestMapping("usedcardetails")
	public ModelAndView getUsedCarDetails(@RequestParam("id")int usedCarId,HttpServletRequest request,HttpSession session,ModelAndView modelAndView) {
		
		session=request.getSession();
		DealerModel dealer= (DealerModel) session.getAttribute("dealer");
			
		//getting current time
		Calendar currentDate=Calendar.getInstance();
		
		//getting list with selling-dealer and checking for currtime>endtime
		List<UsedCarModel> usedCarListForChecking=usedCarService.getAllUsedCarByStatus("selling-dealer");
		if(usedCarListForChecking.size()!=0) {
			for(int i=0;i<usedCarListForChecking.size();i++) {
				//checking if current time is greater than for a particular car then change status
				if(currentDate.getTime().compareTo(usedCarListForChecking.get(i).getUsedCarBidEndTime())>0) {
					
					System.out.println("status changed");
					usedCarListForChecking.get(i).setUsedCarStatus("bid-completed");
					usedCarService.addUsedCar(usedCarListForChecking.get(i));
				}
			}
		}	
		//getting the updated list selling-dealer
		//based on this all data needs to be arragned
		List<UsedCarModel> usedCarListForDealer=usedCarService.getAllUsedCarByStatus("selling-dealer");
		//send this on jsp
		List<UsedCarModelCarrier> usedCarWithImagesList=new ArrayList<>();
	
		if(usedCarListForDealer.size()!=0) {
			for(int i=0;i<usedCarListForDealer.size();i++) {
				
				
				//creating an empty object-->then filling it below
				UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
				//used car data
				usedCarModelCarrier.setUsedCarModelData(usedCarListForDealer.get(i));
				DecimalFormat format=new DecimalFormat("##,##,###");
				usedCarModelCarrier.setUsedCarDisplaykm(format.format(usedCarListForDealer.get(i).getUsedCarKilometers()));
				usedCarModelCarrier.setUsedCarDisplayPrice(format.format(usedCarListForDealer.get(i).getUsedCarBasePrice()));
				//checking for images existance
				if(!fileHelper.getAllUsedCarImages(usedCarListForDealer.get(i)).isEmpty()) {
					//used car front image
					usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarListForDealer.get(i)).get(0));
					
				}
				//check if bid is happend for this carId
				List<BidModel> bidModels= bidService.getBidModelByUsedCarId(usedCarListForDealer.get(i).getUsedCarId());
				
				//get top five bids for used car
				if(!bidModels.isEmpty()) {
					
	 				List<BidModel> bids =bidService.getTopFiveBidValue(usedCarListForDealer.get(i).getUsedCarId());
					System.out.println(bids.size());
					usedCarModelCarrier.setHighestBid(bidService.getTopFiveBidValue(usedCarListForDealer.get(i).getUsedCarId()).get(0).getBidValue());
				}else {
					System.out.println("here");
					usedCarModelCarrier.setHighestBid("No Bids Yet!");
				}
				//getting all bids for used car
				List<BidModel> bidsForUsedCar=usedCarListForDealer.get(i).getBidForUsedCar();
				
				//extracting bid value for dealer
				for(int j=0;j<bidsForUsedCar.size();j++) {
					
					if(dealer.getDealerId()==bidsForUsedCar.get(j).getDealer().getDealerId()) {
					
						usedCarModelCarrier.setBidValueByDealer(bidsForUsedCar.get(j).getBidValue());
						break;
					}
				}
				usedCarWithImagesList.add(usedCarModelCarrier);
	
			}
			
			System.out.println(usedCarWithImagesList.get(0).getUsedCarFrontImage());
		}else {
			System.out.println("no cars to show");
		}
			
	
		//usedcardetails data
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId);
		
		UsedCarModelCarrier usedCarModelCarrier =new UsedCarModelCarrier();
		
		if(!usedCarModel.isEmpty()) {
			
			usedCarModelCarrier.setUsedCarModelData(usedCarModel.get());
			DecimalFormat format=new DecimalFormat("##,##,###");
			usedCarModelCarrier.setUsedCarDisplaykm(format.format(usedCarModel.get().getUsedCarKilometers()));
			usedCarModelCarrier.setUsedCarDisplayPrice(format.format(usedCarModel.get().getUsedCarBasePrice()));
			
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
			
			
			//check if bid is happend for this carId
			List<BidModel> bidModels= bidService.getBidModelByUsedCarId(usedCarModel.get().getUsedCarId());
			
			//get top five bids for used car
			if(!bidModels.isEmpty()) {
				usedCarModelCarrier.setHighestBid(bidService.getTopFiveBidValue(usedCarModel.get().getUsedCarId()).get(0).getBidValue());
			}else {
				System.out.println("here");
				usedCarModelCarrier.setHighestBid("No Bids Yet!");
			}
			//getting all bids for used car
			List<BidModel> bidsForUsedCar=usedCarModel.get().getBidForUsedCar();
			
			//extracting bid value for dealer
			for(int j=0;j<bidsForUsedCar.size();j++) {
				
				if(dealer.getDealerId()==bidsForUsedCar.get(j).getDealer().getDealerId()) {
				System.out.println("bid by dealer set");
					usedCarModelCarrier.setBidValueByDealer(bidsForUsedCar.get(j).getBidValue());
					break;
				}
			}
			modelAndView.addObject("usedcardealer",usedCarWithImagesList);
			modelAndView.addObject("usedCarDetails", usedCarModelCarrier);
			modelAndView.setViewName("/usedcar/usedcar-details-dealer");
	
		}else {   
			System.out.println("error fetching used car data");
		} 
		
		return modelAndView;
	}
	 
	@RequestMapping("gotoaddusedcardetails")
	public ModelAndView gotoSellCarDetailsEntry(ModelAndView modelAndView) {
		
		modelAndView.setViewName("/usedcar/usedcar-add-details");
		return modelAndView;
	}
	  
	@PostMapping("addusedcar")
	public ModelAndView addUsedCar(@Valid @ModelAttribute("usedCar") UsedCarModel usedCar,BindingResult br,HttpSession session,HttpServletRequest request,ModelAndView modelAndView) {
		System.out.println(usedCar.getUsedCarBrand());
		
		if(br.hasErrors()) {
			System.out.println(br.getAllErrors());
			modelAndView.setViewName("/usedcar/usedcar-add-details");
		}else {
			UserEntity userEntity= (UserEntity)session.getAttribute("user");
			System.out.println("user-pass"+userEntity.getUserPassword());
			usedCar.setUsedCarStatus("ready-for-inspection");
			usedCar.setUserEntitySellCar(userEntity);
			
			UsedCarModel usedCarModel = usedCarService.addUsedCar(usedCar);
			
			if(usedCarModel!=null) {
				modelAndView.addObject("success", "your car data added successfully.you can now see it in your profile(my ads)");
				modelAndView.setViewName("forward:/index.jsp");
			}else {
				modelAndView.addObject("error","unable to add your car data please try again");
				modelAndView.setViewName("/usedcar/usedcar-add-details");
			}
			
		}	
		
		return modelAndView;
	}
	
	@RequestMapping("rejectusedcar")
	public ModelAndView rejectUsedCar(ModelAndView modelAndView) {
		
		return modelAndView;
	}
	
	@RequestMapping("usedcarlistdata")
	public ModelAndView getUsedCarListForAdmin(ModelAndView modelAndView) {
	
		List<UsedCarModel> usedCarList=usedCarService.getUsedCarList();
		modelAndView.addObject("usedCars", usedCarList);
		modelAndView.setViewName("");
		return modelAndView;
	}
	
/************************used car enquiry customer***************************/	
	
	@RequestMapping("usedcarlist-user")
	public ModelAndView getUsedCarListForUser(UsedCarFilterModel usedCarFilterModel,ModelAndView modelAndView,HttpServletRequest request,HttpSession session) {
		
		//taking current user
		session=request.getSession();
		UserEntity currentUser=(UserEntity)session.getAttribute("user");
		
		//getting filter data
		List<String> makes=new ArrayList<>();
		List<String> models=new ArrayList<>();
		List<String> fuels=new ArrayList<>();
		List<String> transmissions=new ArrayList<>();
		int lowBudget;
		int highBudget;
		int lowKm;
		int highKm;
		List<String> numberOfOwners=new ArrayList<>();
		
		//collecting filterdata from frontend
		UsedCarFilterModel usedCarFilter =new UsedCarFilterModel();
		List<String> owners=new ArrayList<>();
		if(usedCarFilterModel!=null) {
			
			if(usedCarFilterModel.getFilteredMakeList()!=null) {
				
				usedCarFilter.setFilteredMakeList(usedCarFilterModel.getFilteredMakeList());
				usedCarFilter.setFilteredModelList(usedCarFilterModel.getFilteredModelList());
				
				usedCarFilter.setFullModelList(usedCarService.getModelsByBrands(usedCarFilterModel.getFilteredMakeList()));
				usedCarFilter.setFullMakeList(usedCarService.getAllBrandForFilterForCustomer());
				
				
			}else if(usedCarFilterModel.getFilteredModelList()!=null) {
				usedCarFilter.setFilteredMakeList(usedCarFilterModel.getFilteredMakeList());
				usedCarFilter.setFilteredModelList(usedCarFilterModel.getFilteredModelList());
				
				usedCarFilter.setFullModelList(usedCarService.getAllModelsForFilterForCustomer());
				usedCarFilter.setFullMakeList(usedCarService.getAllBrandForFilterForCustomer());
			}else {
				usedCarFilter.setFullMakeList(usedCarService.getAllBrandForFilterForCustomer());
				usedCarFilter.setFullModelList(usedCarService.getAllModelsForFilterForCustomer());
			}
			usedCarFilter.setFuelType(usedCarFilterModel.getFuelType());
			usedCarFilter.setTransmissionType(usedCarFilterModel.getTransmissionType());
			usedCarFilter.setLowKm(usedCarFilterModel.getLowKm());
			usedCarFilter.setHighKm(usedCarFilterModel.getHighKm());
			usedCarFilter.setNoOfOwners(usedCarFilterModel.getNoOfOwners());
			usedCarFilter.setLowBudget(usedCarFilterModel.getLowBudget());
			usedCarFilter.setHighBudget(usedCarFilterModel.getHighBudget());
			
			//setting the 3+ for owners list
			if(usedCarFilter.getNoOfOwners()!=null) {
				for(int i=0;i<usedCarFilter.getNoOfOwners().size();i++) {
					owners.add(usedCarFilter.getNoOfOwners().get(i));
					if(usedCarFilter.getNoOfOwners().get(i).equals("3+")) {
						
						owners.remove(i);
						owners.add("3");
						owners.add("4");
						owners.add("5");
						owners.add("6");
						owners.add("7");
						owners.add("8");
						owners.add("9");
						owners.add("10");
						break;
					}
				}
			}
		}	
		
		//preparing data for query
		//budget
		if(usedCarFilter.getLowBudget()==null && usedCarFilter.getHighBudget()==null) {
			lowBudget=Integer.parseInt("0");
			highBudget=Integer.parseInt("50000000");
		}else {
			lowBudget=Integer.parseInt(usedCarFilter.getLowBudget()+"00000");
			highBudget=Integer.parseInt(usedCarFilter.getHighBudget()+"00000");
		}
		
		//km
		if((usedCarFilter.getLowKm()=="" || usedCarFilter.getLowKm()==null) && (usedCarFilter.getHighKm()=="" || usedCarFilter.getLowKm()==null)) {
			lowKm=Integer.parseInt("0");
			highKm=Integer.parseInt("500000");
		}else {
			lowKm=Integer.parseInt(usedCarFilter.getLowKm());
			highKm=Integer.parseInt(usedCarFilter.getHighKm());
		}
		
		//make
		if(usedCarFilter.getFilteredMakeList()==null) {
			makes.addAll(usedCarService.getAllBrandForFilterForCustomer());
		}else {
			makes.addAll(usedCarFilter.getFilteredMakeList());
		}
		
		//model
		if(usedCarFilter.getFilteredModelList()==null && usedCarFilter.getFilteredMakeList()==null) {
			models.addAll(usedCarService.getAllModelsForFilterForCustomer());
		}else if(usedCarFilter.getFilteredModelList()==null && usedCarFilter.getFilteredMakeList()!=null){
			models.addAll(usedCarService.getModelsByBrands(usedCarFilterModel.getFilteredMakeList()));
		}else {
			models.addAll(usedCarFilter.getFilteredModelList());
		}
		
		//fuel
		if(usedCarFilter.getFuelType()==null) {
			fuels.add("Petrol");
			fuels.add("Diesel");
			fuels.add("Electric");
			fuels.add("Hybrid");
		}else {
			fuels.addAll(usedCarFilter.getFuelType());
		}
		
		//transmission
		if(usedCarFilter.getTransmissionType()==null) {
			transmissions.add("Manual");
			transmissions.add("Automatic");
		}else {
			transmissions.addAll(usedCarFilter.getTransmissionType());
		}
		
		//owners
		if(usedCarFilter.getNoOfOwners()==null) {
			
			numberOfOwners.add("1");
			numberOfOwners.add("2");
			numberOfOwners.add("3");
			numberOfOwners.add("4");
			numberOfOwners.add("5");
			numberOfOwners.add("6");
			numberOfOwners.add("7");
			numberOfOwners.add("8");
			numberOfOwners.add("9");
			numberOfOwners.add("10");
			
		}else {
			numberOfOwners.addAll(owners);
		}
		System.out.println("budget-"+lowBudget+"-"+highBudget);
		System.out.println("km-"+lowKm+"-"+highKm);
		System.out.println("model-"+models);
		System.out.println("make-"+makes);
		System.out.println("fuel-"+fuels);
		System.out.println("transmission-"+transmissions);
		System.out.println("no of owners-"+numberOfOwners);
		
		//passing the query 
		List<UsedCarModel> filteredUsedCarListForCustomer = usedCarService.getFilteredUsedCarListForCustomer(lowBudget, highBudget, lowKm, highKm,makes, models,fuels,transmissions,numberOfOwners);
		System.out.println("filtered size-"+filteredUsedCarListForCustomer.size());
		//setting images and data for this filtered list
		
		//taking list for selling-customer
		List<UsedCarModel> usedCarListForCustomers = usedCarService.getAllUsedCarByStatus("selling-customer");
		
		List<UsedCarModelCarrier> usedCarModelCarriers=new ArrayList<>();
		
		//removing car uploaded by the same current customer
		for(int i=0;i<usedCarListForCustomers.size();i++) {
			
			if(usedCarListForCustomers.get(i).getUserEntitySellCar().getUserId()!=currentUser.getUserId()) {
				
				UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
				
				usedCarModelCarrier.setUsedCarModelData(usedCarListForCustomers.get(i));
				DecimalFormat format=new DecimalFormat("##,##,###");
				usedCarModelCarrier.setUsedCarDisplaykm(format.format(usedCarListForCustomers.get(i).getUsedCarKilometers()));
				usedCarModelCarrier.setUsedCarDisplayPrice(format.format(usedCarListForCustomers.get(i).getUsedCarBasePrice()));
				
				if(!fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)).isEmpty()) {
					usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)).get(0));
					usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)));
				}
				if(fileHelper.getUsedCarInspectionReport(usedCarListForCustomers.get(i))!=null) {
					usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarListForCustomers.get(i)));
				}
				usedCarModelCarriers.add(usedCarModelCarrier);
			}
		}
		System.out.println(usedCarModelCarriers.size());
		modelAndView.addObject("usedcarcustomer", usedCarModelCarriers);
		modelAndView.addObject("size", usedCarModelCarriers.size());
		modelAndView.setViewName("/usedcar/usedcar-list-user");
		
		return modelAndView;
	} 
	   
	@RequestMapping("usedcardetailscustomer")
	public ModelAndView getUsedCarDetailsForCustomer(ModelAndView modelAndView,HttpServletRequest request,HttpSession session,@RequestParam("carid")int carId) {
		
		
		//preparing details of used car
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(carId);
		
		UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
		
		usedCarModelCarrier.setUsedCarModelData(usedCarModel.get());
		DecimalFormat format=new DecimalFormat("##,##,###");
		usedCarModelCarrier.setUsedCarDisplaykm(format.format(usedCarModel.get().getUsedCarKilometers()));
		usedCarModelCarrier.setUsedCarDisplayPrice(format.format(usedCarModel.get().getUsedCarBasePrice()));
		//checking for images existance
		if(!(fileHelper.getAllUsedCarImages(usedCarModel.get()).isEmpty())  ) {
			//used car front image
			usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarModel.get()).get(0));
			
			//used car all images
			usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarModel.get()));
		
		}
			
		if(!fileHelper.getUsedCarVideo(usedCarModel.get()).isEmpty()) {
			usedCarModelCarrier.setUsedCarVideo(fileHelper.getUsedCarVideo(usedCarModel.get()));
		}
		
		//used car inspection report
		if(!(fileHelper.getUsedCarInspectionReport(usedCarModel.get())=="")) {
			
			usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarModel.get()));
		}
		
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
				DecimalFormat formater=new DecimalFormat("##,##,###");
				usedCarModelCarrierData.setUsedCarDisplaykm(formater.format(usedCarListForCustomers.get(i).getUsedCarKilometers()));
				usedCarModelCarrierData.setUsedCarDisplayPrice(formater.format(usedCarListForCustomers.get(i).getUsedCarBasePrice()));
				
				//checking for images existance
				if(!(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)).isEmpty())  ) {
					//used car front image
					usedCarModelCarrierData.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)).get(0));
					
					//used car all images
					usedCarModelCarrierData.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarListForCustomers.get(i)));
					
					
				
				}
				//used car video
				if(!fileHelper.getUsedCarVideo(usedCarListForCustomers.get(i)).isEmpty()) {
					usedCarModelCarrierData.setUsedCarVideo(fileHelper.getUsedCarVideo(usedCarListForCustomers.get(i)));
				}
				
				//used car inspection report
				if(!(fileHelper.getUsedCarInspectionReport(usedCarListForCustomers.get(i))=="")) {
					
					usedCarModelCarrierData.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarListForCustomers.get(i)));
				}
				
				usedCarModelCarriers.add(usedCarModelCarrierData);
			}
		}
		System.out.println("idhar hu"+usedCarModelCarrier.getUsedCarVideo());
		modelAndView.addObject("usedCarDetails", usedCarModelCarrier);
		
		modelAndView.addObject("usedcarcustomer", usedCarModelCarriers);
		
		modelAndView.setViewName("/usedcar/usedcar-details-customer"); 
		
		return modelAndView;
	}
	@RequestMapping("usedcarenquiry")
	public ModelAndView usedCarEnquiryByCustomer(@RequestParam("carid")int carId,@RequestParam("userid")int userId,ModelAndView modelAndView) {
		
		//getting usedcarmodel	
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(carId);
		//getting interested user
		UserEntity user= userService.getUserById(userId);
		
		UsedCarEnquiryCustomer enquiry=new UsedCarEnquiryCustomer();
		enquiry.setInterestedUser(user);
		enquiry.setEnquiryStatus("interested");
		enquiry.setUsedCarModelData(usedCarModel.get());
		
		usedCarEnquiryCustomerService.addEnquiry(enquiry);
		
		modelAndView.setViewName("forward:/usedcarlist-user");
		return modelAndView;
	}
	
}
