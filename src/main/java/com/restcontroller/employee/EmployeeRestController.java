package com.restcontroller.employee;

import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lowagie.text.DocumentException;
import com.model.employee.CreateCarWithInpection;
import com.model.inspection.InspectionEntity;
import com.model.response.ResponseEntity;
import com.model.usedcar.UsedCarModel;
import com.service.usedcar.UsedCarService;
import com.util.InspectReport;

@CrossOrigin
@RestController
public class EmployeeRestController {
	
	@Autowired
	UsedCarService usedCarService;
	@Autowired
	InspectReport inspectReport;
	
	
	@PostMapping("/sendinspecteddata")
	public ResponseEntity getInspectedCar(@RequestBody CreateCarWithInpection carData,@RequestParam("platNumber")String platnumber) {
		
		UsedCarModel usedCar = carData.getUsedCarModel();
		usedCar.setPlatNumber(platnumber);
		InspectionEntity inspection =  carData.getInspection();
		boolean result =false;
		try {
			result = inspectReport.generatePdf(inspection,usedCar);
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(!result) {
			return new ResponseEntity(-1,"Error",null);
		} else
			return new ResponseEntity(200,"Inspection report generated","generated");
		
	}
}
