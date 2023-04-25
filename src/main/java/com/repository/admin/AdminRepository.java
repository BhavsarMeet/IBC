package com.repository.admin;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.model.admin.AdminModel;

@Repository
public interface AdminRepository extends JpaRepository<AdminModel,Integer>{

	AdminModel findByAdminEmail(String email);
	AdminModel findByAdminEmailAndAdminPassword(String email,String pwd);
}
