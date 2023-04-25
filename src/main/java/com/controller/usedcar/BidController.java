package com.controller.usedcar;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.dealer.DealerModel;
import com.model.usedcar.BidModel;
import com.model.usedcar.UsedCarModel;
import com.service.dealer.DealerService;
import com.service.usedcar.BidService;
import com.service.usedcar.UsedCarService;

@Controller
public class BidController {

	@Autowired
	BidService bidService;
	@Autowired
	DealerService dealerService;
	@Autowired
	UsedCarService usedCarService;
	
	@RequestMapping("addbid")
	public ModelAndView addBidValue(BidModel bidModel,@RequestParam("carid")int carId,@RequestParam("dealerid")int dealerId,ModelAndView modelAndView) {
		
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(carId);
		
		if(Integer.parseInt(bidModel.getBidValue()) >= usedCarModel.get().getUsedCarBasePrice()) {
			DealerModel dealerModel= dealerService.getDealerById(dealerId);
			
			//checking if dealer already bided
			BidModel bidData =  bidService.getBidModelByDealerIdAndCarId(dealerId, carId);
			
			if(bidData==null) {
				bidModel.setDealer(dealerModel);
				bidModel.setUsedCar(usedCarModel.get());
				bidModel.setBidStatus("interested");
				bidService.addBid(bidModel);
				modelAndView.addObject("success", "your bid has been accepted!");
			}else {
				bidData.setBidValue(bidModel.getBidValue());
				bidService.addBid(bidData);
				modelAndView.addObject("success", "your bid has been accepted!");
			}	
		}else {
			modelAndView.addObject("error", "bid must be greater than car base price!");
		}
		modelAndView.setViewName("forward:/usedcarlist-dealer");
		
		return modelAndView;
	}
}
