package com.service.newcar;

import java.io.File;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StreamUtils;

import com.model.newcar.NewCarModel;
import com.model.newcar.NewCarVariants;
import com.repository.newcar.NewCarModelRepository;
import com.util.TitleCaseData;

@Service
public class NewCarModelService {

	@Autowired
	NewCarModelRepository newCarModelRepository;
	@Autowired
	TitleCaseData titleCaseData;
	
	public NewCarModel addNewCarModel(NewCarModel newCarModel) {
		newCarModel.setCarModelName(titleCaseData.toTitleCase(newCarModel.getCarModelName()));
		return newCarModelRepository.save(newCarModel);
	} 
	
	public NewCarModel getNewCarModelByModelName(String modelName) {
		return newCarModelRepository.getByCarModelName(modelName);
	}
	
	public List<NewCarVariants> getNewCarVariantsByModelName(String modelName){
		return getNewCarModelByModelName(modelName).getCarVariants();
	}
	
	public List<NewCarModel> getAllCarModel(){
		return newCarModelRepository.findAll();
	}
	
	
	
	public List<byte[]> getAllNewCarImages(NewCarModel ncm) throws IOException{
		final String dir="E:\\workspace-spring-tool-suite-4-4.14.1.RELEASE\\IBC-web\\src\\main\\resources"
				+ "\\static\\pictures\\newcar"+"\\"+ncm.getNewCar().getCarBrand()+"\\"+ncm.getCarModelName()+"\\";
		System.out.println("hi"+dir);
		
		File file = new File(dir);
		if(file.exists()) {
	    File[] fileList = file.listFiles(); // List files inside the main dir
	    System.out.println(fileList.length);
	    
	    List<byte[]> paths = new ArrayList<byte[]>();
	    if (fileList != null) {
	        for (int i = 0; i < fileList.length; i++) {
	        	File imgFile = new File(dir+fileList[i].getName());
	        	FileInputStream imgStream = new FileInputStream(imgFile);
	        	System.out.println(imgStream.toString());
	            byte[] bytes = StreamUtils.copyToByteArray(imgStream);
	            paths.add(bytes);
	        }
	    }return paths;}
	    return null;
	}
	
	
	public String getAllNewCarImagesPath(NewCarModel ncm) throws IOException{
		final String dir="E:\\workspace-spring-tool-suite-4-4.14.1.RELEASE\\IBC-web\\src\\main\\resources"
				+ "\\static\\pictures\\newcar"+"\\"+ncm.getNewCar().getCarBrand()+"\\"+ncm.getCarModelName()+"\\";
		
		String filename ="";
		File file = new File(dir);
		if(file.exists()) {
	    File[] fileList = file.listFiles();
	    if (fileList != null) {
	        for (int i = 0; i < fileList.length; i++) {
	        	String tempfilename = fileList[i].getName().substring(0,fileList[i].getName().lastIndexOf('.'));
	        	if(fileList[i].getName().substring(0,4).equals("exte")) {
	        		filename= fileList[i].getName();break;
	        	}else {continue;}
	        	}
	        
	    }
	    return filename;
		}else {
			return filename;
		}
	}

	public NewCarModel getNewCarModelById(int modelId) {
		
		return newCarModelRepository.getByCarModelId(modelId);
	}
	
	//filter methods
	public List<NewCarModel> getAllNewCarModelsForFilter(){
		return newCarModelRepository.findAll();
	} 
	
	public List<NewCarModel> getNewCarModelsByBrands(List<Integer> ids){
		return newCarModelRepository.getNewCarModelsByNewCar(ids);
	}
}
