package com.controller.employee;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;
import java.util.Random;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.admin.AdminModel;
import com.model.employee.EmployeeModel;
import com.model.usedcar.UsedCarModel;
import com.model.util.EmailDetails;
import com.service.employee.EmployeeService;
import com.service.usedcar.UsedCarService;
import com.service.util.EmailService;

@Controller
public class EmployeeController {

	@Autowired
	UsedCarService usedCarService;
	@Autowired
	EmployeeService employeeService;
	@Autowired
	EmailService emailService;
	
	@RequestMapping("/employeedashboard")
	public ModelAndView gotoEmployeeDashboard(ModelAndView modelAndView) {
		
	
	
		modelAndView.setViewName("/employee/employee-dashboard");
		
		return modelAndView;
	}
	
	@RequestMapping("employeeprofilepage")
	public ModelAndView editProfileEmployeePage(@RequestParam("id")int employeeId,ModelAndView modelAndView) {
		
		EmployeeModel employeeModel=employeeService.getEmployeeById(employeeId);
		
		modelAndView.addObject("employeeModel",employeeModel);
		modelAndView.setViewName("/employee/employee-profile");
		
		return modelAndView;
	}
	
	@PostMapping("updateemployeeprofile")
	public ModelAndView updateEmployee(@RequestParam("id")int employeeId,@Valid @ModelAttribute("employeeModel") EmployeeModel employeeModel,BindingResult br,ModelAndView modelandview) {
		
		if(br.hasErrors()) {
			modelandview.setViewName("/employee/employee-profile");
		}else {
			EmployeeModel employee = employeeService.updateEmployee(employeeModel,employeeId);
			
			if(employee!=null) {
				modelandview.addObject("success", "Profile Updated Successfully!");
			}else {
				modelandview.addObject("success", "error updating profile!");
			}
			modelandview.setViewName("forward:/employeeprofilepage?id="+employee.getEmployeeId());
		}
		return modelandview;
	}
	
	@RequestMapping("inspectioncardetailsemployee")
	public  ModelAndView getInspectionCarDetailsForEmployee(@RequestParam("usedcarid")int usedCarId,ModelAndView modelAndView){
		
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId); 
		if(!usedCarModel.isEmpty()) {
			modelAndView.addObject("car", usedCarModel.get());
		}else {
			modelAndView.addObject("error","error fetching details");
		}
		modelAndView.setViewName("/employee/inspectioncar-details-employee");
		return modelAndView;
	}
	
	
	
	@RequestMapping("inspectiondone")
	public ModelAndView employeeInspectionDone(ModelAndView modelAndView,@RequestParam("usedcarid") int usedCarId) {
		System.out.println("car id-"+usedCarId);
		Optional<UsedCarModel> usedCarModel = usedCarService.getUsedCarById(usedCarId);
		if(!usedCarModel.isEmpty()) {
			usedCarModel.get().setUsedCarStatus("Inspection Done");
			usedCarService.addUsedCar(usedCarModel.get());
		}else {
			System.out.println("no such car found!");
		}
		modelAndView.setViewName("forward:/inspectioncarlist?page=1");
		modelAndView.addObject("success","Car Sent for Admin Approval");
		return modelAndView;
	}
	
	@PostMapping("addemployee")
	public ModelAndView addEmployee(@Valid @ModelAttribute("employee") EmployeeModel employee,BindingResult br,ModelAndView modelAndView){
		
		if(br.hasErrors()) {
			
			modelAndView.addObject("err", "error happned");
			modelAndView.setViewName("/admin/add-employee");
		}else {
			Random rand=new Random();
			String employeePassword=employee.getEmployeeName()+"@IBCE"+rand.nextInt((9999 - 100) + 1) + 10;
			employee.setEmployeePassword(employeePassword);
			
			EmployeeModel employeeData = employeeService.addEmployee(employee);
			if(employeeData!= null) {
				//preparing and sending email
				EmailDetails details=new EmailDetails();
				
				details.setRecipient(employee.getEmployeeEmail());
				details.setSubject("IBC family welcomes you");
				details.setMsgBody("Congratulation!!you have joined IBC as an Employee\n\nAccount Details:\nEmail:"+employee.getEmployeeEmail()+"\nPassword:"+employeePassword+"\n\nYou can login with this details.\n\nNOTE:we recommend you to change your password once login\n\nRegards,\nIBC Team");
				
				boolean flag=emailService.sendSimpleMail(details);
				if(flag) {
					modelAndView.addObject("msg","invitation email sent to employee");
				}else {
					modelAndView.addObject("msg","error sending mail to employee");
				}
				modelAndView.addObject("msg","employee added succefully!");
			}else {
				modelAndView.addObject("msg","error creating employee.please check the data entered");
			}
			modelAndView.setViewName("forward:/ibcemployeedetailspage");
		}	
		return modelAndView;
	}
	
	@RequestMapping("inspectioncarlist")
	public ModelAndView gotoInspectionCarDetails(@RequestParam("page")String pageNum,ModelAndView modelAndView) {
		
		int recordsPerPage=5;
		int page=1; 
		int noOfRecords=usedCarService.getAllUsedCarByStatus("under inspection").size();
		
		if(pageNum!=null) {
			
			page=Integer.parseInt(pageNum);
			
			List<UsedCarModel> usedCarUnderInspectionList = usedCarService.getUsedCarByStatusPagination("under inspection",(page-1)*recordsPerPage,recordsPerPage);
			int noOfPages=(int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			
			modelAndView.addObject("currentPage",page);
			modelAndView.addObject("noOfPages",noOfPages);
			modelAndView.addObject("usedCarUnderInspection",usedCarUnderInspectionList);
		}
		
		modelAndView.setViewName("/employee/inspection-car-list");
		return modelAndView;
	}
	
}
