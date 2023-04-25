package com.controller.dealer;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.admin.AdminModel;
import com.model.dealer.DealerModel;
import com.model.newcar.NewCarEnquiryModel;
import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarModel;
import com.model.usedcar.UsedCarModelCarrier;
import com.model.util.EmailDetails;
import com.service.dealer.DealerService;
import com.service.newcar.NewCarEnquiryService;
import com.service.usedcar.BidService;
import com.service.usedcar.UsedCarService;
import com.service.util.EmailService;
import com.util.FileHelper;

@Controller
public class DealerController {

	@Autowired
	DealerService dealerService;
	@Autowired
	UsedCarService usedCarService;
	@Autowired
	FileHelper fileHelper;
	@Autowired
	BidService bidService;
	@Autowired
	EmailService emailService;
	
	
	
	
	@RequestMapping("dealerprofilepage")
	public ModelAndView editProfileDealerPage(@RequestParam("id")int dealerId,ModelAndView modelAndView) {
		System.out.println("id-"+dealerId);
		DealerModel dealerModel=dealerService.getDealerById(dealerId);
		
		modelAndView.addObject("dealerModel",dealerModel);
		modelAndView.setViewName("/dealer/dealer-profile");
		
		return modelAndView;
	}
	
	@RequestMapping("dealerdashboard")
	public ModelAndView dealerDashboard(ModelAndView modelAndView,HttpServletRequest request,HttpSession session) {
		
		session=request.getSession();
		DealerModel dealer = (DealerModel) session.getAttribute("dealer");
		
		modelAndView.addObject("bidsbydealer", dealer.getBidsByDealer().size());
		modelAndView.addObject("dealerpurchasedcars", dealer.getDealerBuyUsedCars().size());
		modelAndView.setViewName("/dealer/dealer-dashboard");
		return modelAndView;
	}
	
	@PostMapping("updatedealerprofile")
	public ModelAndView updateDealer(@Valid @ModelAttribute("dealerModel")DealerModel dealerModel,HttpSession session,HttpServletRequest request,BindingResult br,@RequestParam("id")int dealerId,ModelAndView modelandview) {
		
		
		if(br.hasErrors()) {
			modelandview.setViewName("/dealer/dealer-profile");
		}else {
			DealerModel dealer = dealerService.updateDealer(dealerModel,dealerId);
			
			if(dealer!=null) {
				modelandview.addObject("success", "Profile Updated Successfully!");
				
			}else {
				modelandview.addObject("msg", "error updating profile!");
			}
			modelandview.setViewName("forward:/dealerprofilepage?id="+dealer.getDealerId());
		}
		return modelandview;
	}
	
	@RequestMapping("deletebiddealer")
	public ModelAndView deleteBidByDealer(@RequestParam("bidid")int bidId,@RequestParam("dealerid")int dealerId,ModelAndView modelAndView) {
		
		boolean flag=bidService.deleteBid(bidId);
		if(flag) {
			modelAndView.addObject("msg","bid deleted successfully!");
		}else {
			modelAndView.addObject("msg","error deleting bid!");
		}
		modelAndView.setViewName("forward:/bidbydealer?dealerid="+dealerId);
		return modelAndView;
	}
	
	@RequestMapping("bidbydealer")
	public ModelAndView getDealerBids(@RequestParam("dealerid")int dealerId,ModelAndView modelAndView) {
		
		//based on this all data needs to be arragned
		List<BidModel> bidsByDealer = dealerService.getBidsByDealer(dealerId);
		//send this on jsp
		List<UsedCarModelCarrier> usedCarWithAllData=new ArrayList<>();
		
		for(int i=0;i<bidsByDealer.size();i++) {
			
			//creating an empty object-->then filling it below
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
			
			//check if bid is not rejected
			if(!bidsByDealer.get(i).getBidStatus().equalsIgnoreCase("rejected-admin") && !bidsByDealer.get(i).getBidStatus().equalsIgnoreCase("rejected-dealer") ) {
				//bid by dealer value 
				DecimalFormat format=new DecimalFormat("##,##,###");
				usedCarModelCarrier.setBidValueByDealer(format.format(Integer.parseInt(bidsByDealer.get(i).getBidValue())));
				usedCarModelCarrier.setBidId(bidsByDealer.get(i).getBidId());
				
				//checking for images existance
				if(!fileHelper.getAllUsedCarImages(bidsByDealer.get(i).getUsedCar()).isEmpty()) {
					//used car front image
					usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(bidsByDealer.get(i).getUsedCar()).get(0));
				}
				//used car data
				usedCarModelCarrier.setUsedCarModelData(bidsByDealer.get(i).getUsedCar());
				DecimalFormat formater=new DecimalFormat("##,##,###");
				usedCarModelCarrier.setUsedCarDisplaykm(format.format(bidsByDealer.get(i).getUsedCar().getUsedCarKilometers()));
				
				usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(bidsByDealer.get(i).getUsedCar().getUsedCarBasePrice()));
				//get top five bids for used car
				usedCarModelCarrier.setHighestBid(bidService.getTopFiveBidValue(bidsByDealer.get(i).getUsedCar().getUsedCarId()).get(0).getBidValue());
				
				if(bidsByDealer.get(i).getBidStatus().equalsIgnoreCase("deal-initiated")) {
					System.out.println("deal init");
					usedCarModelCarrier.setDealAsk("Congratulations!you have won this car and futher you need to clear 30% of the payment.please contact Ibc for the same.thank you for participating in bid.");
				}
				usedCarWithAllData.add(usedCarModelCarrier);
			}
				
		}
		
		modelAndView.addObject("bidsByDealer", usedCarWithAllData);
		modelAndView.setViewName("/dealer/dealerbids");
		return modelAndView;
	}
	
	@RequestMapping("purchasedcardetailsdealer")
	public ModelAndView getPurchasedCarDeatilsForDealer(HttpServletRequest request,HttpSession session,@RequestParam("dealerid")int dealerId,@RequestParam("carid")int carId,ModelAndView modelAndView) {
			
		//list for showing used cars
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
				DecimalFormat formater=new DecimalFormat("##,##,###");
				usedCarModelCarrier.setUsedCarDisplaykm(formater.format(usedCarListForDealer.get(i).getUsedCarKilometers()));
				
				usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(usedCarListForDealer.get(i).getUsedCarBasePrice()));
				//checking for images existance
				if(!(fileHelper.getAllUsedCarImages(usedCarListForDealer.get(i)).isEmpty())  ) {
					//used car front image
					usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarListForDealer.get(i)).get(0));
					
					//used car all images
					usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarListForDealer.get(i)));
					
				}

				//used car video
				if(!fileHelper.getUsedCarVideo(usedCarListForDealer.get(i)).isEmpty()) {
					usedCarModelCarrier.setUsedCarVideo(fileHelper.getUsedCarVideo(usedCarListForDealer.get(i)));
				}
			
				
				//used car inspection report
				if(!(fileHelper.getUsedCarInspectionReport(usedCarListForDealer.get(i))=="")) {
					
					usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarListForDealer.get(i)));
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
						DecimalFormat format=new DecimalFormat("##,##,###");
						usedCarModelCarrier.setBidValueByDealer(format.format(Integer.parseInt(bidsForUsedCar.get(j).getBidValue())));
						break;
					}
				}
				usedCarWithImagesList.add(usedCarModelCarrier);
	
			}
			
			System.out.println(usedCarWithImagesList.get(0).getUsedCarFrontImage());
			modelAndView.addObject("usedcardealer",usedCarWithImagesList);
		}else {
			System.out.println("no cars to show");
		}
			
		//details for purchased car
		List<UsedCarModel> usedCarModels = dealerService.getUsedCarPurchasedByDealer(dealerId);
		
		UsedCarModelCarrier usedCarModelCarrier =new UsedCarModelCarrier();
		
		for(int i=0;i<usedCarModels.size();i++) {
			
			if(usedCarModels.get(i).getUsedCarId()==carId) {
				if(!usedCarModels.isEmpty()) {
					
					usedCarModelCarrier.setUsedCarModelData(usedCarModels.get(i));
					DecimalFormat formater=new DecimalFormat("##,##,###");
					
					usedCarModelCarrier.setUsedCarDisplaykm(formater.format(usedCarModels.get(i).getUsedCarKilometers()));
					
					usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(usedCarModels.get(i).getUsedCarBasePrice()));
					if(!fileHelper.getAllUsedCarImages(usedCarModels.get(i)).isEmpty()) {
						usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarModels.get(i)));
					}
					if(fileHelper.getUsedCarInspectionReport(usedCarModels.get(i))!=null) {
						usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarModels.get(i)));
					}
					//checking for images existance
					if(!(fileHelper.getAllUsedCarImages(usedCarModels.get(i)).isEmpty())  ) {
						//used car front image
						usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarModels.get(i)).get(0));
						
						//used car all images
						usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarModels.get(i)));
						
						
					
					}
					//used car video
					if(!fileHelper.getUsedCarVideo(usedCarModels.get(i)).isEmpty()) {
						usedCarModelCarrier.setUsedCarVideo(fileHelper.getUsedCarVideo(usedCarModels.get(i)));
					}
					//used car inspection report
					if(!(fileHelper.getUsedCarInspectionReport(usedCarModels.get(i))=="")) {
						
						usedCarModelCarrier.setUsedCarInspectionReport(fileHelper.getUsedCarInspectionReport(usedCarModels.get(i)));
					}
					modelAndView.addObject("usedCarDetails", usedCarModelCarrier);
					System.out.println("usedcarvideo"+usedCarModelCarrier.getUsedCarVideo());
					modelAndView.setViewName("/dealer/purchasedcar-details-dealer");
			
				}else {
					System.out.println("error fetching used car data");
				}
			}
		}
		return modelAndView;
	}
	
	@RequestMapping("usedcarpurchasedbydealer")
	public ModelAndView usedCarPurchasedByDealer(@RequestParam("dealerid")int dealerId,ModelAndView modelAndView) {
		
		List<UsedCarModel> usedCarModels = dealerService.getUsedCarPurchasedByDealer(dealerId);
			
		//send this on jsp
		List<UsedCarModelCarrier> usedCarWithImagesList=new ArrayList<>();
	
		for(int i=0;i<usedCarModels.size();i++) {
			
			//creating an empty object-->then filling it below
			UsedCarModelCarrier usedCarModelCarrier=new UsedCarModelCarrier();
		
			//used car data
			usedCarModelCarrier.setUsedCarModelData(usedCarModels.get(i));
			DecimalFormat formater=new DecimalFormat("##,##,###");
			usedCarModelCarrier.setUsedCarDisplaykm(formater.format(usedCarModels.get(i).getUsedCarKilometers()));
			
			usedCarModelCarrier.setUsedCarDisplayPrice(formater.format(usedCarModels.get(i).getUsedCarBasePrice()));
			if(!fileHelper.getAllUsedCarImages(usedCarModels.get(i)).isEmpty()) {
				
				//used car front image
				usedCarModelCarrier.setUsedCarFrontImage(fileHelper.getAllUsedCarImages(usedCarModels.get(i)).get(0));
				//used car all images
				usedCarModelCarrier.setUsedCarImages(fileHelper.getAllUsedCarImages(usedCarModels.get(i)));
			}
//			//check if bid is happend for this carId
//			List<BidModel> bidModels= bidService.getBidModelByUsedCarId(usedCarModels.get(i).getUsedCarId());
//			
//			//get top five bids for used car
//			if(!bidModels.isEmpty()) {
//				usedCarModelCarrier.setHighestBid(bidService.getTopFiveBidValue(usedCarListForDealer.get(i).getUsedCarId()).get(0).getBidValue());
//			}else {
//				System.out.println("here");
//				usedCarModelCarrier.setHighestBid("No Bids Yet!");
//			}
//			//getting all bids for used car
//			List<BidModel> bidsForUsedCar=usedCarModels.get(i).getBidForUsedCar();
//			
//			//extracting bid value for dealer
//			for(int j=0;j<bidsForUsedCar.size();j++) {
//				
//				if(dealerId==bidsForUsedCar.get(j).getDealer().getDealerId()) {
//				DecimalFormat format=new DecimalFormat("##,##,###");
//					usedCarModelCarrier.setBidValueByDealer(format.format(bidsForUsedCar.get(j).getBidValue()));
//					break;
//				}
//			}
			usedCarWithImagesList.add(usedCarModelCarrier);

		}
		
		modelAndView.addObject("dealerpurchasedcar",usedCarWithImagesList);
		modelAndView.setViewName("/dealer/purchasedcar-dealer");
		
		return modelAndView;
		
		
	}
	@RequestMapping("dealunderprocess")
	public ModelAndView dealStartProcess(@RequestParam("dealerid")int dealerId,@RequestParam("carid")int carId,ModelAndView modelAndView) {
		
		BidModel bidModel = bidService.getBidModelByDealerIdAndCarId(dealerId, carId);
		
		bidModel.setBidStatus("deal-in progress");
		bidService.addBid(bidModel);
		
		modelAndView.addObject("dealerid",dealerId);
		modelAndView.addObject("msg", "you can now contact IBC for futher process or wait for IBC to contact you.Thank You");
		modelAndView.setViewName("forward:/bidbydealer");
		return modelAndView;
	}
	
	@RequestMapping("dealrejectedbydealer")
	public ModelAndView dealRejectProcessByDealer(@RequestParam("dealerid")int dealerId,@RequestParam("carid")int carId,ModelAndView modelAndView) {
		
		BidModel bidModel = bidService.getBidModelByDealerIdAndCarId(dealerId, carId);
		
		bidModel.setBidStatus("rejected-dealer");
		bidService.addBid(bidModel);
		
		modelAndView.addObject("dealerid",dealerId);
		modelAndView.setViewName("forward:/bidbydealer?dealerid="+dealerId);
		return modelAndView;
	}
	@PostMapping("adddealer")
	public ModelAndView addDealer(@Valid @ModelAttribute("dealer")DealerModel dealer,BindingResult br,ModelAndView modelAndView){
		
		if(br.hasErrors()) {
			System.out.println("still has error");
			System.out.println(br.getFieldError().getDefaultMessage());
			modelAndView.addObject("err", "error happned");
			modelAndView.setViewName("/admin/add-dealer");
		}else {
			System.out.println("no error");
			Random rand=new Random();
			String dealerPassword=dealer.getDealerName()+"@IBCD"+rand.nextInt((9999 - 100) + 1) + 10;
			dealer.setDealerPassword(dealerPassword);
			
			DealerModel dealerData= dealerService.addDealer(dealer);
			
			if(dealerData!=null) {
				//preparing and sending email
				EmailDetails details=new EmailDetails();
				
				details.setRecipient(dealer.getDealerEmail());
				details.setSubject("IBC family welcomes you");
				details.setMsgBody("Congratulation!!you have joined IBC as a Dealer\n\nAccount Details:\nEmail:"+dealer.getDealerEmail()+"\nPassword:"+dealerPassword+"\n\nYou can login with this details.\nNOTE:we recommend you to change your password once login\n\nRegards,\nIBC Team");
				
				boolean flag=emailService.sendSimpleMail(details);
				
				if(flag) {
					modelAndView.addObject("msg","invitation email send to dealer");
				}else {
					modelAndView.addObject("msg","error sending mail to dealer");
				}
				modelAndView.addObject("msg","dealer added succefully!");
			}else {	
				modelAndView.addObject("msg","error creating dealer.please check the data entered");
			}
			modelAndView.setViewName("forward:/ibcdealerdetailspage");
		}
		return modelAndView;
	}
}