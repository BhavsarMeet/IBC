package com.service.user;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.newcar.NewCarEnquiryModel;
import com.model.newcar.NewCarVariants;
import com.model.usedcar.UsedCarEnquiryCustomer;
import com.model.usedcar.UsedCarModel;
import com.model.user.UserEntity;
import com.repository.user.UserRepository;
import com.util.TitleCaseData;


@Service
public class UserService {

	@Autowired
	UserRepository userRepo;
	@Autowired
	TitleCaseData titleCaseData;
	
	
	public UserEntity addUser(UserEntity user) {
		user.setUserName(titleCaseData.toTitleCase(user.getUserName()));
		return userRepo.save(user);
	}
	
	public UserEntity getUserById(int id) {
		return userRepo.findById(id).orElse(null);
	}
	
	public UserEntity getUserByUserEmailAndUserPassword(String email,String password) {
		return userRepo.findByUserEmailAndUserPassword(email, password);
	}
	
	public List<UserEntity> getUsers() {
		return userRepo.findAll();
	}
	
	
	public  UserEntity updateUser(UserEntity sb,int userId) {
		
		UserEntity newUser = getUserById(userId);
		
		newUser.setUserName(sb.getUserName());
		newUser.setUserEmail(sb.getUserEmail());
		newUser.setUserPhoneNumber(sb.getUserPhoneNumber());
		newUser.setUserAddress(sb.getUserAddress());
		
		return userRepo.save(newUser);
	}
	
	public UserEntity updateUserPassword(String password,int userId) {
		
		UserEntity updatedUser=getUserById(userId); 
		
		updatedUser.setUserPassword(password);
		
		return userRepo.save(updatedUser);
	}

	public String deleteUser(int id) {
		userRepo.deleteById(id);
		return "User's Account Deleted...";
	} 
	public UserEntity getUserByEmail(String email) {
		return userRepo.findByUserEmail(email);
	}
	public List<NewCarEnquiryModel> getNewCarEnquiryByUser(int userId){
		return getUserById(userId).getNewCarEnquiryByUser();
	}
	public List<UsedCarEnquiryCustomer> getUsedCarEnquiryByCustomer(int userId){
		return getUserById(userId).getInquiryForUsedCarByUser();
	}
	public List<NewCarVariants> getNewCarPurchasedByUser(int userId){
		return getUserById(userId).getNewCarsPurchasedByUser();
	}
	public List<UsedCarModel> getusedCarPurchasedByUser(int userId){
		return getUserById(userId).getUserBuyUsedCars();
	}
	public List<UsedCarModel> getUsedCarAdByUser(int userId){
		return getUserById(userId).getUserSellCars();
	}
	
}
