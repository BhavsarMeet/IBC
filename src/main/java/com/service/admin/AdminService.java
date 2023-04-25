package com.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.admin.AdminModel;
import com.model.user.UserEntity;
import com.repository.admin.AdminRepository;
import com.util.TitleCaseData;

@Service
public class AdminService  {

	@Autowired
	AdminRepository adminRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	public AdminModel addAdmin(AdminModel adminModel) {
		adminModel.setAdminName(titleCaseData.toTitleCase(adminModel.getAdminName()));
		
		return adminRepository.save(adminModel);
	}
	
	public AdminModel getAdminById(int id) {
		return adminRepository.findById(id).orElse(null);
	}
	
	public  AdminModel updateAdmin(AdminModel adminModel,int adminId) {
		
		AdminModel updatedAdmin = getAdminById(adminId);
		
		updatedAdmin.setAdminName(adminModel.getAdminName());
		updatedAdmin.setAdminEmail(adminModel.getAdminEmail());
		updatedAdmin.setAdminPhone(adminModel.getAdminPhone());
		updatedAdmin.setAdminPassword(adminModel.getAdminPassword());
		
		return adminRepository.save(updatedAdmin);
	}
	
	public List<AdminModel> getAllAdmin(){
		return adminRepository.findAll();
	}
	
	public AdminModel updateAdmin(AdminModel newAdminModel,String email) {
		
		AdminModel oldAdminModel = getAdminByEmail(email);
		oldAdminModel.setAdminEmail(newAdminModel.getAdminEmail());
		oldAdminModel.setAdminName(newAdminModel.getAdminName());
		oldAdminModel.setAdminPhone(newAdminModel.getAdminPhone());
		
		adminRepository.save(oldAdminModel);
		return oldAdminModel;
	}
	
	public void deleteAdmin(int id) {
		adminRepository.deleteById(id);
	}
	
	public AdminModel getAdminByEmail(String email) {
		return adminRepository.findByAdminEmail(email);
	}
	public AdminModel getAdminByEmailAndAdminPassword(String email,String pwd) {
		return adminRepository.findByAdminEmailAndAdminPassword(email, pwd);
	}
}
