package com.controller.common;

import java.io.IOException;
import java.lang.StackWalker.Option;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.admin.AdminModel;
import com.model.common.GeneralInquiryModel;
import com.model.common.LoginModel;
import com.model.dealer.DealerModel;
import com.model.employee.EmployeeModel;
import com.model.newcar.InputNewCarEntity;
import com.model.newcar.NewCarVariants;
import com.model.user.UserEntity;
import com.model.util.EmailDetails;
import com.service.admin.AdminService;
import com.service.common.GeneralInquiryService;
import com.service.dealer.DealerService;
import com.service.employee.EmployeeService;
import com.service.newcar.NewCarVariantsService;
import com.service.usedcar.UsedCarService;
import com.service.user.UserService;
import com.service.util.EmailService;
import com.util.FileHelper;




@Controller
public class CommonController {

	@Autowired
	AdminService adminService;
	@Autowired
	UserService userService;
	@Autowired
	DealerService dealerService;
	@Autowired
	UsedCarService usedCarService;
	@Autowired
	EmployeeService employeeService;
	@Autowired
	EmailService emailService;
	@Autowired
	NewCarVariantsService newCarVariantsService;
	@Autowired
	FileHelper fileHelper;
	@Autowired
	GeneralInquiryService generalInquiryService;
	
	//home page for user
	@RequestMapping("/")
	public ModelAndView HomePage(ModelAndView modelAndView) {
		
		modelAndView.setViewName("redirect:/index");
		return modelAndView;
	}
	
	@RequestMapping("index")
	public ModelAndView IndexPage(ModelAndView modelAndView,HttpSession session) {
		

		List<NewCarVariants> newCarVariants = newCarVariantsService.getAllVariants();
		
		List<InputNewCarEntity> newCarList1= new ArrayList();
		List<InputNewCarEntity> newCarList2= new ArrayList();
		List<InputNewCarEntity> newCarList3= new ArrayList();
		List<InputNewCarEntity> newCarList4= new ArrayList();
		
		for(int j=0;j<newCarVariants.size();j++) {
			
			InputNewCarEntity ince=new InputNewCarEntity();
			
			ince.setCarModelId(newCarVariants.get(j).getCarModel().getCarModelId());
			ince.setCarBrand(newCarVariants.get(j).getCarModel().getNewCar().getCarBrand());
			ince.setCarVariantName(newCarVariants.get(j).getCarVariantName());
			ince.setCarBodyType(newCarVariants.get(j).getCarBodyType());
			ince.setCarDoors(newCarVariants.get(j).getCarDoors());
			ince.setCarEngineCapacity(newCarVariants.get(j).getCarEngineCapacity());
			ince.setCarEngineType(newCarVariants.get(j).getCarEngineType());
			ince.setCarFuelType(newCarVariants.get(j).getCarFuelType());
			ince.setCarLaunchingDate(newCarVariants.get(j).getCarLaunchingDate());
			ince.setCarManufacturingYear(newCarVariants.get(j).getCarManufacturingYear());
			ince.setCarMileage(newCarVariants.get(j).getCarMileage());
			ince.setCarModelName(newCarVariants.get(j).getCarModel().getCarModelName());
			DecimalFormat format=new DecimalFormat("##,##,###");
			ince.setDisplayCarPrice(format.format(newCarVariants.get(j).getCarPrice()));
			ince.setCarSeatingCapacity(newCarVariants.get(j).getCarSeatingCapacity());
			ince.setCarTransmissionType(newCarVariants.get(j).getCarTransmissionType());
			ince.setCarVariantId(newCarVariants.get(j).getCarVariantId());

			try {
				if(!fileHelper.getAllNewCarImages(newCarVariants.get(j).getCarModel().getNewCar().getCarBrand(),newCarVariants.get(j).getCarModel().getCarModelName(), "exterior","newcar").isEmpty()){
					ince.setImageFrontView(fileHelper.getAllNewCarImages(newCarVariants.get(j).getCarModel().getNewCar().getCarBrand(),newCarVariants.get(j).getCarModel().getCarModelName(), "exterior","newcar").get(0));
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(j>=0 && j<=1) {
				newCarList1.add(ince);
			}else if(j>=2 && j<=3) {
				newCarList2.add(ince);
			}else if(j>=4 && j<=5) {
				newCarList3.add(ince);
			}else if(j>=6 && j<=7) {
				newCarList4.add(ince);
			}else {
				break;
			}
		}
		modelAndView.addObject("carlist1", newCarList1);
		modelAndView.addObject("carlist2", newCarList2);
		modelAndView.addObject("carlist3", newCarList3);
		modelAndView.addObject("carlist4", newCarList4);
		modelAndView.setViewName("forward:/index.jsp");
		return modelAndView;
	}
	 
	@RequestMapping("forgotpasswordpage")
	public ModelAndView gotoForgotPasswordPage(ModelAndView modelAndView) {
		
		modelAndView.setViewName("/common/forgot-password-page");
		return modelAndView;
	}
	
	@RequestMapping("checkmail")
	public ModelAndView checkMail(@RequestParam("email")String email,ModelAndView modelAndView) {
		System.out.println("check mail");
		UserEntity user= userService.getUserByEmail(email);
		if(user!=null) {
			String otp=new DecimalFormat("000000").format(new Random().nextInt(999999));
			System.out.println("its user");
			EmailDetails details =new EmailDetails();
			details.setRecipient(email);
			details.setSubject("IBC-Email Verification");
			details.setMsgBody("Hello,\n\nTo verify your email by sharing this OTP: "+otp+"\n\nBest Regards,\nTeam-IBCCARZ");
			emailService.sendSimpleMail(details);
			
			modelAndView.setViewName("/common/verify-userdealer-otp");
			modelAndView.addObject("email", email);
			modelAndView.addObject("originalotp", otp);
			modelAndView.addObject("type", "user");
		}else{
			DealerModel dealer=dealerService.getDealerByEmail(email);
			if(dealer!=null) {
				String otp=new DecimalFormat("000000").format(new Random().nextInt(999999));
				System.out.println("its dealer");
			
				EmailDetails details =new EmailDetails();
				details.setRecipient(email);
				details.setSubject("IBC-Email Verification");
				details.setMsgBody("Hello,\n\nTo verify your email by sharing this OTP: "+otp+"\n\nBest Regards,\nTeam-IBCCARZ");
				emailService.sendSimpleMail(details);	
				
				modelAndView.setViewName("/common/verify-userdealer-otp");
				modelAndView.addObject("email", email);
				modelAndView.addObject("type", "dealer");
				modelAndView.addObject("originalotp", otp);
			}else {
				System.out.println("no dealer no user");
				modelAndView.addObject("error", "no such email registered");
				modelAndView.setViewName("forward:/index");	
			}
		}
		return modelAndView;
	}
	
	@RequestMapping("verifyuserdealerotp")
	public ModelAndView verifyUserDealerOTP(@RequestParam("type")String type,@RequestParam("email")String email,@RequestParam("password")String password,@RequestParam("originalotp")String originalOTP,@RequestParam("otp")String otp,ModelAndView modelAndView) {
		
		if(otp.trim().equalsIgnoreCase(originalOTP)) {
			
			if(type.trim().equalsIgnoreCase("user")) {
				UserEntity user=userService.getUserByEmail(email);
				if(user!=null) {
					userService.updateUserPassword(password,user.getUserId());
					modelAndView.addObject("success", "password updated successfully,try login");
					modelAndView.setViewName("forward:/index");	
				}else {
					modelAndView.addObject("error", "error updating password,try again later");
					modelAndView.setViewName("forward:/index");	
				}
			}else if(type.trim().equalsIgnoreCase("dealer")){
				DealerModel dealer=dealerService.getDealerByEmail(email);
				
				if(dealer!=null) {
					dealerService.updateDealerPassword(password, dealer.getDealerId());
					modelAndView.addObject("success", "password updated successfully,try login");
					modelAndView.setViewName("forward:/index");	
				}else {
					modelAndView.addObject("error", "error updating password,try again later");
					modelAndView.setViewName("forward:/index");	
				}
			}else {
				modelAndView.addObject("error", "error updating password,try again later");
				modelAndView.setViewName("forward:/index");	
			}
		}else {
			modelAndView.addObject("error", "OTP entered was wrong");
			modelAndView.setViewName("forward:/index");	
		}
		
		return modelAndView;
	}	
	
	@RequestMapping("contactus")
	public ModelAndView contactUsPage(@RequestParam("email")Optional<String> email,ModelAndView modelAndView) {
		
		if(!email.isEmpty()) {
			System.out.println("email found");
			modelAndView.addObject("email",email.get());
		}
		modelAndView.setViewName("/common/contact-us");
		return modelAndView;
	}
	
	@RequestMapping("aboutus")
	public ModelAndView aboutUsPage(ModelAndView modelAndView) {
		
		modelAndView.setViewName("/common/about-us");
		return modelAndView;
	}
	
	
	@RequestMapping("errorpage")
	public ModelAndView errorPage(ModelAndView modelAndView) {
		
		modelAndView.setViewName("/common/error");
		return modelAndView;
	}
	
	@PostMapping("changepassword")
	public ModelAndView changePassword(@RequestParam("newpass")
	String newpass,@RequestParam("id")int id,@RequestParam("type")String type,@RequestParam("oldpass")String oldPassword
	,@RequestParam("renewpass")String reNewPassword,ModelAndView modelAndView) {
		
		Pattern pattern = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,20}$");
		Matcher m = pattern.matcher(newpass);
		
		if((newpass==null || newpass=="") && type.equalsIgnoreCase("dealer")) {
			modelAndView.addObject("emptyerror", "password cannot be empty");
			modelAndView.setViewName("/dealer/dealer-profile");
		}else if((newpass.length()<8 && newpass.length()>30) && type.equalsIgnoreCase("dealer")){
			modelAndView.addObject("sizeerror", "password must be of 8-30 characters");
			modelAndView.setViewName("/dealer/dealer-profile");
		}else if(!m.matches() && type.equalsIgnoreCase("dealer")){
			System.out.println("pattern didnt match");
			modelAndView.addObject("patternerror", "password should be strong(atleast 1-number,alphabet(1-lower and 1-upper)and 1-special-character needed!)");
			modelAndView.setViewName("/dealer/dealer-profile");
		}else if((newpass==null || newpass=="") && type.equalsIgnoreCase("user")) {
			modelAndView.addObject("emptyerror", "password cannot be empty");
			modelAndView.setViewName("/user/user-profile");
		}else if((newpass.length()<8 && newpass.length()>30) && type.equalsIgnoreCase("user")){
			modelAndView.addObject("sizeerror", "password must be of 8-30 characters");
			modelAndView.setViewName("/user/user-profile");
		}else if(!m.matches() && type.equalsIgnoreCase("user")){
			System.out.println("pattern didnt match");
			modelAndView.addObject("patternerror", "password should be strong(atleast 1-number,alphabet(1-lower and 1-upper)and 1-special-character needed!)");
			modelAndView.setViewName("/user/user-profile");
		}else {
		
			if(type.equalsIgnoreCase("dealer")) {
					
				DealerModel dealerModel= dealerService.getDealerById(id);
				
				if(dealerModel.getDealerPassword().equals(oldPassword)) {
					if(newpass.equals(reNewPassword)) {
						
						dealerService.updateDealerPassword(reNewPassword, id);
						modelAndView.addObject("success", "password updated successfully!");
						
					}else {
						modelAndView.addObject("msg","password and confirm password didnot match!");
					}
					
				}else {
					modelAndView.addObject("msg","old password entered is wrong!");
				}
				modelAndView.setViewName("forward:/dealerprofilepage?id="+id);
			}
			else if(type.equalsIgnoreCase("user")) {
				
				UserEntity userModel= userService.getUserById(id);
				
				if(userModel.getUserPassword().equals(oldPassword)) {
					if(newpass.equals(reNewPassword)) {
						
						userService.updateUserPassword(reNewPassword, id);
						modelAndView.addObject("success", "password updated successfully!");
						
					}else {
						modelAndView.addObject("msg","password and confirm password didnot match!");
					}
					
				}else {
					modelAndView.addObject("msg","old password entered is wrong!");
				}
			}
			modelAndView.setViewName("forward:/userprofilepage?userid="+id);
		}
		return modelAndView;
	}
	
	//home page for employee
	@RequestMapping("/ibc-login")
	public ModelAndView EmployeeHomePage(ModelAndView modelAndView) {
	
		modelAndView.setViewName("redirect:/ibc-login.jsp");
		return modelAndView;
	}
	
	//login for admin role
	@PostMapping("/ibclogin")
	public ModelAndView login(LoginModel loginModel,HttpSession session,HttpServletRequest request,ModelAndView modelAndView) {
		
		System.out.println(loginModel.getEmail());
		System.out.println(loginModel.getPassword());
		
		AdminModel admin=adminService.getAdminByEmail(loginModel.getEmail());
		EmployeeModel employeeModel=null;
		
		if(admin!=null){
			
			if(admin.getAdminPassword().equals(loginModel.getPassword())){
//				modelAndView.addObject("admin",admin);
//				session.setAttribute("admin", admin);
//				System.err.println("admin logged in");
				session=request.getSession();
				session.setAttribute("admin", admin);
				
				modelAndView.addObject("success","login successfull!");
				modelAndView.setViewName("forward:/admindashboard");
			}
			else {
				System.out.println("error while logging--admin");
				modelAndView.addObject("error","invalid credentials!");
				modelAndView.setViewName("forward:/ibc-login.jsp");
			}
		}else if((employeeModel=employeeService.getEmployeeByEmployeeEmailAndEmployeePassword(loginModel.getEmail(),loginModel.getPassword()))!=null) {
	
			session=request.getSession();
			session.setAttribute("employee", employeeModel);
			
			modelAndView.addObject("success","login successfull!");
			modelAndView.setViewName("forward:/employeedashboard");
		}
		else {
			System.out.println("error while logging--admin");
			modelAndView.addObject("error","invalid credentials!");
			modelAndView.setViewName("forward:/ibc-login.jsp");
		}
		 
			return modelAndView; 
	}
	  
	@PostMapping("generalinquiry")
	public ModelAndView setGeneralInquiry(GeneralInquiryModel inquiry,ModelAndView modelAndView) {
		
		inquiry.getMessage().trim();
		GeneralInquiryModel generalInquiryModel= generalInquiryService.addInquiry(inquiry);
		if(generalInquiryModel==null) {
			modelAndView.addObject("error", "error placing inquiry,please try again later.");
		}else {
			modelAndView.addObject("success", "inquiry placed successfully,you will be contacted soon!");
		}
		modelAndView.setViewName("/common/contact-us");
		return modelAndView;
	} 
	
	@GetMapping("generalinquirylistadmin")
	public ModelAndView getGeneralInquiryListForAdmin(ModelAndView modelAndView) {
		
		List<GeneralInquiryModel> generalInquiryList = generalInquiryService.getAllInquiries();
		System.out.println(generalInquiryList.size());
		modelAndView.addObject("inquiries", generalInquiryList);
		modelAndView.setViewName("/admin/general-enquiry-list");
		return modelAndView;
	}
	
	@RequestMapping("deletegeneralinquiry")
	public ModelAndView deleteGeneralInquiry(@RequestParam("inqid")int inqId,ModelAndView modelAndView) {
		
		boolean flag=generalInquiryService.deleteInquiry(inqId);
		if(flag) {
			modelAndView.addObject("success", "Inquiry deleted successfully!");
		}else {
			modelAndView.addObject("error", "error deleting inquiry");
		}
		List<GeneralInquiryModel> generalInquiryList = generalInquiryService.getAllInquiries();
		
		
		modelAndView.setViewName("forward:/generalinquirylistadmin");
		return modelAndView;
	}
	@RequestMapping("sendotptouser")
	public ModelAndView sendOtpForUserRegister(UserEntity user,Optional<String> val,ModelAndView modelAndView) {
		
		if(userService.getUserByEmail(user.getUserEmail())==null) {
			String otp=new DecimalFormat("000000").format(new Random().nextInt(999999));
			System.out.println(otp);
			modelAndView.addObject("userEntity", user);
			modelAndView.addObject("originalotp", otp);
			modelAndView.addObject("val", val.get());
			
			
			EmailDetails details=new EmailDetails();
			details.setRecipient(user.getUserEmail());
			details.setSubject("IBC-Email Verification");
			details.setMsgBody("Hello,\n\nTo verify your email share OTP: "+otp+" with admin.\n\nBest Regards,\nTeam-IBCCARZ");
			
			emailService.sendSimpleMail(details);
			
			modelAndView.setViewName("/common/verify-userregister-otp");
		}else {
			modelAndView.addObject("error", "user already exists with this email,try registering with different email");
			modelAndView.setViewName("forward:/index");
		}
		return modelAndView;
	}
	
	//login for user and dealer purchase used car
	@PostMapping("/userdealerlogin")
	public ModelAndView userDealerlogin(LoginModel loginModel,@RequestParam("val") String val,Optional<Integer> varid,HttpServletRequest request,HttpSession session,ModelAndView modelAndView) {
		  
		System.out.println(loginModel.getEmail());
		System.out.println(loginModel.getPassword());
		System.out.println("val"+val);
		System.out.println("varid"+varid.isEmpty());

		 
		if(val.equalsIgnoreCase("sellyourcar,register")) {
			
			modelAndView.setViewName("forward:/sendotptouser");
		}
		else { 
			UserEntity userEntity=userService.getUserByUserEmailAndUserPassword(loginModel.getEmail(), loginModel.getPassword());
			
			if(userEntity!=null){
		 	 
				session=request.getSession();
				session.setAttribute("user", userEntity);
				
				if(val.equalsIgnoreCase("buyusedcar")) {
					System.out.println("buy used car login-user");
					modelAndView.addObject("success","login successfull!");
					modelAndView.setViewName("forward:/usedcarlist-user");
				}
				if(val.equalsIgnoreCase("sellyourcar")) {
			 		System.out.println("sellyourcar login-user");
			 		modelAndView.addObject("success","login successfull!");
					modelAndView.setViewName("forward:/gotoaddusedcardetails");
				}    
				if(val.equalsIgnoreCase("newcaruser")) {
					System.out.println("newcaruser login-user");
					modelAndView.addObject("success","login successfull!");
					modelAndView.setViewName("forward:/newcarlist");
					
				}	
				if(val.equalsIgnoreCase("navigate")) {
					System.out.println("navigate login-user");
					modelAndView.addObject("success","login successfull!");
					modelAndView.setViewName("forward:/index");
				}
				
			}
			else if(userEntity==null){
				
				DealerModel dealerModel=dealerService.getDealerByEmailAndPassword(loginModel.getEmail(), loginModel.getPassword());
				
				if(dealerModel!=null) { 
					session=request.getSession();
					session.setAttribute("dealer", dealerModel);
					
					System.out.println("dealer login");
					modelAndView.addObject("success","login successfull!");
					modelAndView.setViewName("forward:/dealerdashboard");
					
				}  
				else { 
					System.out.println("error while logging--dealer");
					modelAndView.addObject("error","invalid credentials!");
					modelAndView.setViewName("forward:/index");
				}
			} 
			else {
				System.out.println("error while logging--user");
				modelAndView.addObject("error","invalid credentials!");
				modelAndView.setViewName("forward:/index");
			}
		} 
		return modelAndView; 
	}
	
	
	//logout for all role
	@RequestMapping("/logout")
	public ModelAndView logout(@RequestParam("role")String role,ModelAndView modelAndView,HttpSession session,HttpServletRequest request) {
		
		session=request.getSession();
		if(role.equalsIgnoreCase("admin")) {
			System.out.println("admin removed");
			session.removeAttribute("admin");
			session.invalidate();
			modelAndView.setViewName("forward:/ibc-login");
		}
		else if(role.equalsIgnoreCase("employee")) {
			System.out.println("employee removed");
			session.removeAttribute("employee");	
			session.invalidate();
			modelAndView.setViewName("redirect:/ibc-login");
		}else if(role.equalsIgnoreCase("user")) {
			System.out.println("user removed");
			session.removeAttribute("user");
			session.invalidate();
			modelAndView.setViewName("redirect:/index");
		}else if(role.equalsIgnoreCase("dealer")) {
			System.out.println("dealer removed");
			session.removeAttribute("dealer");
			session.invalidate(); 
			modelAndView.setViewName("redirect:/index");
			
		}else {
			System.err.println("problem in role,some other role came");
		}
		
		
		return modelAndView;
	}
	
	//redirect to user-dealer login page
	@RequestMapping("userdealerloginpage")
	public ModelAndView gotouserDealerLogin(@RequestParam("val") String val,ModelAndView modelAndView) {
		
		modelAndView.addObject("val",val);
		
		modelAndView.setViewName("/common/user-dealer-login");
		return modelAndView;
	}
	
	@RequestMapping("sendotp")
	public ModelAndView sendOTP(@RequestParam("email")String email,@RequestParam("type")String type,ModelAndView modelAndView) {
		
		
		if(type.equalsIgnoreCase("dealer")) {
			DealerModel dealers = dealerService.getDealerByEmail(email);
			if(dealers!=null) {
				modelAndView.addObject("msg", "account register with same email!,try using another mail");
				modelAndView.setViewName("forward:/ibcdealerdetailspage");
			}else {
				String otp=new DecimalFormat("000000").format(new Random().nextInt(999999));
				System.out.println(otp);
				EmailDetails details=new EmailDetails();
				details.setRecipient(email);
				details.setSubject("IBC-Email Verification");
				details.setMsgBody("Hello,\n\nTo verify your email share OTP: "+otp+" with admin.\n\nBest Regards,\nTeam-IBCCARZ");
				
				if(emailService.sendSimpleMail(details)) {
					System.out.println("here");
					modelAndView.setViewName("/common/verify-otp");
					modelAndView.addObject("type",type);
					modelAndView.addObject("email",email);
					modelAndView.addObject("originalotp", otp);
				}else {
					modelAndView.addObject("msg", "error creating account,please try again later!");
					modelAndView.setViewName("forward:/ibcdealerdetailspage");
				}
			}
			
		}else if(type.equalsIgnoreCase("employee")) {
			
			List<EmployeeModel> employees = employeeService.getEmployeeByEmail(email);
			if(!employees.isEmpty()) {
				modelAndView.addObject("msg", "account register with same email!,try using another mail");
				modelAndView.setViewName("forward:/ibcemployeedetailspage");
			}else {
				String otp=new DecimalFormat("000000").format(new Random().nextInt(999999));
				System.out.println(otp);
				EmailDetails details=new EmailDetails();
				details.setRecipient(email);
				details.setSubject("IBC-Email Verification");
				details.setMsgBody("Hello,\n\nTo verify your email share OTP: "+otp+" with admin.\n\nBest Regards,\nTeam-IBCCARZ");
				
				if(emailService.sendSimpleMail(details)) {
					
					modelAndView.setViewName("/common/verify-otp");
					modelAndView.addObject("type",type);
					modelAndView.addObject("email",email);
					modelAndView.addObject("originalotp", otp);
				}else {
					modelAndView.addObject("msg", "error creating account,please try again later!");
					modelAndView.setViewName("forward:/ibcemployeedetailspage");
				}
			}
		}
		
		return modelAndView;
	}
	
	@RequestMapping("verifyotp")
	public ModelAndView verifyOTP(@RequestParam("type")String type,@RequestParam("email")String email,@RequestParam("originalotp")String originalOTP,@RequestParam("otp")String otp,ModelAndView modelAndView) {
		
		if(originalOTP.trim().equalsIgnoreCase(otp.trim())) {
			modelAndView.addObject("msg", "Email Verified");
			modelAndView.addObject("email",email);
			if(type.equalsIgnoreCase("dealer")) {
				modelAndView.setViewName("/admin/add-dealer");
			}else if(type.equalsIgnoreCase(("employee"))) {
				modelAndView.setViewName("/admin/add-employee");
			
			}else {
				modelAndView.addObject("msg", "Wrong OTP");
				modelAndView.setViewName("forward:/ibcdealerdetailspage");
			}
		}else {
			modelAndView.addObject("msg", "Wrong OTP");
			modelAndView.setViewName("forward:/ibcdealerdetailspage");
		}
		return modelAndView;
	}	
}
