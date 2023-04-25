package com.restcontroller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.model.response.ResponseEntity;
import com.model.user.UserEntity;
import com.service.user.UserService;

@CrossOrigin
@RestController
public class UserRestController {

	@Autowired
	UserService userService;
	
	@GetMapping("/users")
	public ResponseEntity getUsers() {
		List<UserEntity> user = userService.getUsers();
		if(null == user) {
			return new  ResponseEntity(-1,"Error adding user!",null);
		}else {
			return new ResponseEntity(200, "User retrived successfully.",user);
		}
	}
	
	
	@PostMapping("/restadduser")
	public ResponseEntity addUser(@RequestBody UserEntity user) {
		UserEntity userdata = userService.addUser(user);
		if(userdata == null) {
			return new ResponseEntity(-1,"Error adding user!",null);
		}
		else {
			return new ResponseEntity(200, "User added successfully.",user);
		}
	}
	
}
