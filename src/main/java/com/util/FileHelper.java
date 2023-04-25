package com.util;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.model.newcar.NewCarModel;
import com.model.usedcar.UsedCarModel;


@Component
public class FileHelper{

	public final String UPLOAD_DIR="D:\\Meet study\\Frameworks\\Spring\\workspace-spring-tool-suite\\IBC\\src\\main\\resources\\static\\pictures\\newcar";
	public final String UPLOAD_DIR_USEDCAR="D:\\Meet study\\Frameworks\\Spring\\workspace-spring-tool-suite\\IBC\\src\\main\\resources\\static\\pictures\\usedcar";
	public final String UPLOAD_DIR_USEDCAR_INS_REPORT="D:\\Meet study\\Frameworks\\Spring\\workspace-spring-tool-suite\\IBC\\src\\main\\resources\\static\\inspection-report\\used-car";
	
	public String getExtension(MultipartFile file) {
	
		
		String val="";
		for(int i=0;i<file.getOriginalFilename().length();i++) {
			if(file.getOriginalFilename().charAt(i)=='.')
				val=file.getOriginalFilename().substring(i);
		}
		return val;
	}
	
	public Boolean uploadFile(MultipartFile file,String brand,String model,String name,int count) {
		
		boolean flag=false;
		String ext=getExtension(file);
		try {
			Path dirPathObj = Paths.get(UPLOAD_DIR+"\\"+brand+"\\"+model+"\\"+name);
			boolean dirExists=Files.exists(dirPathObj);
			
			if(!dirExists) {
				Files.createDirectories(dirPathObj);
			}
			Files.copy(file.getInputStream(), Paths.get(UPLOAD_DIR+"\\"+brand+"\\"+model+"\\"+name+"\\"+brand+"_"+model+"_"+name+"_"+count+ext));
			
			flag=true;
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return flag;
		
	}
	
	public Boolean uploadUsedCarFile(MultipartFile file,String brand,String model,String name,int count,String email,String platNumber) {
		
		boolean flag=false;
		String ext=getExtension(file);
		try {
			Path dirPathObj = Paths.get(UPLOAD_DIR_USEDCAR+"\\"+email+"\\"+platNumber+"\\"+brand+"\\"+model);
			boolean dirExists=Files.exists(dirPathObj);
			
			if(!dirExists) {
				Files.createDirectories(dirPathObj);
			}
			Files.copy(file.getInputStream(), Paths.get(UPLOAD_DIR_USEDCAR+"\\"+email+"\\"+platNumber+"\\"+brand+"\\"+model+"\\"+name+count+ext));
			
			flag=true;
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return flag;
		
	}
	
	public Boolean uploadUsedCarVideo(MultipartFile file,String brand,String model,String name,int count,String email,String platNumber) {
		
		boolean flag=false;
		String ext=getExtension(file);
		try {
			Path dirPathObj = Paths.get(UPLOAD_DIR_USEDCAR+"\\"+email+"\\"+platNumber+"\\"+brand+"\\"+model+"\\video\\");
			boolean dirExists=Files.exists(dirPathObj);
			
			if(!dirExists) {
				Files.createDirectories(dirPathObj);
				
			}Files.copy(file.getInputStream(), Paths.get(UPLOAD_DIR_USEDCAR+"\\"+email+"\\"+platNumber+"\\"+brand+"\\"+model+"\\video\\"+model+"-video-"+count+ext));
			flag=true;
			System.out.println("true");
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return flag;
		
	}
	
	public List<String> getAllNewCarImages(String brand,String model,String name,String car) throws IOException{
		
		List<String> results = new ArrayList<String>();
		try {
		File[] files = new File(UPLOAD_DIR+"\\"+brand+"\\"+model+"\\"+name).listFiles();
		//If this pathname does not denote a directory, then listFiles() returns null. 

		for (File file : files) {
		    if (file.isFile()) {
		    	StringBuffer temp = new StringBuffer("\\"+brand+"\\"+model+"\\"+name+"\\");
		        temp.append(file.getName());
		    	results.add(temp.toString());
		    }
		}		
		}catch(Exception e){
			System.out.println("could not fetch files");
		}

	    return results;
	}
	
	public String getUsedCarVideo(UsedCarModel usedCar){
		String result = "";
		
		try {
		File[] files = new File(UPLOAD_DIR_USEDCAR+"\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\GJ01-8055\\"+usedCar.getUsedCarBrand()+"\\"+usedCar.getUsedCarModelName()+"\\video\\").listFiles();
		//If this pathname does not denote a directory, then listFiles() returns null. 
			System.out.println(UPLOAD_DIR_USEDCAR+"\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\GJ01-8055\\"+usedCar.getUsedCarBrand()+"\\"+usedCar.getUsedCarModelName()+"\\video\\");
			for (File file : files) {
			    if (file.isFile()) {
			    	System.out.println("video present");
			    	StringBuffer temp = new StringBuffer("\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\"+"GJ01-8055"+"\\"+usedCar.getUsedCarBrand()+"\\"+usedCar.getUsedCarModelName()+"\\video\\");
			        temp.append(file.getName());
			    	result=temp.toString();
			    }
			    System.out.println("file not present");
			}
		}catch(Exception e){
			System.out.println("could not fetch video");
		}
		return result;
	}
	
	public List<String> getAllUsedCarImages(UsedCarModel usedCar){
		List<String> results = new ArrayList<String>();
		
		try {
		File[] files = new File(UPLOAD_DIR_USEDCAR+"\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\GJ01-8055\\"+usedCar.getUsedCarBrand()+"\\"+usedCar.getUsedCarModelName()).listFiles();
		//If this pathname does not denote a directory, then listFiles() returns null. 
		System.out.println("images of used_car-"+files);	
		System.out.println(UPLOAD_DIR_USEDCAR+"\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\GJ01-8055\\"+usedCar.getUsedCarBrand()+"\\"+usedCar.getUsedCarModelName());
			for (File file : files) {
			    if (file.isFile()) {
			    	StringBuffer temp = new StringBuffer("\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\"+"GJ01-8055"+"\\"+usedCar.getUsedCarBrand()+"\\"+usedCar.getUsedCarModelName()+"\\");
			        temp.append(file.getName());
			    	results.add(temp.toString());
			    }
			}
		}catch(Exception e){
			System.out.println("could not fetch files");
		}
		return results;
	}
	
	public String getUsedCarInspectionReport(UsedCarModel usedCar){
		
		String results="";
		File[] files = new File(UPLOAD_DIR_USEDCAR_INS_REPORT+"\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\").listFiles();
		//If this pathname does not denote a directory, then listFiles() returns null. 
		try {
		for (File file : files) {
		    if (file.isFile()) {
		    	StringBuffer temp = new StringBuffer("\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\");
		        if(file.getName().equalsIgnoreCase(usedCar.getPlatNumber()+".pdf")) {
		        	temp.append(file.getName());
		            results=temp.toString();
		        }
		    }else {
		    	System.out.println("no files");
		    }
		}	
		}catch(Exception e){
			System.out.println("could not fetch files");
		}
		
		return results;
	}
}
