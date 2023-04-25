package com.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.user.UserEntity;


@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	public UserEntity findByUserEmailAndUserPassword(String email,String password);
	public UserEntity findByUserEmail(String email);
	
	
}
