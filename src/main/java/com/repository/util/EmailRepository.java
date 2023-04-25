package com.repository.util;

import org.springframework.stereotype.Repository;

import com.model.util.EmailDetails;


public interface EmailRepository{

	
	 // Method
    // To send a simple email
    boolean sendSimpleMail(EmailDetails details);
 
    // Method
    // To send an email with attachment
    String sendMailWithAttachment(EmailDetails details);
	
}
