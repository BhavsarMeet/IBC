package com.model.newcar;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.apache.catalina.User;

import com.model.user.UserEntity;

@Entity
public class NewCarModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carModelId;
	
	private String carModelName;
	
	@ManyToOne
	private NewCar newCar;
	
	@OneToMany(mappedBy = "carModel",cascade = CascadeType.ALL)
	private List<NewCarVariants> carVariants;
	
	
	
	public int getCarModelId() {
		return carModelId;
	}
	public void setCarModelId(int carModelId) {
		this.carModelId = carModelId;
	}
	public String getCarModelName() {
		return carModelName;
	}
	public void setCarModelName(String carModelName) {
		this.carModelName = carModelName;
	}
	public NewCar getNewCar() {
		return newCar;
	}
	public void setNewCar(NewCar newCar) {
		this.newCar = newCar;
	}
	public List<NewCarVariants> getCarVariants() {
		return carVariants;
	}
	public void setCarVariants(List<NewCarVariants> carVariants) {
		this.carVariants = carVariants;
	}
	

}
