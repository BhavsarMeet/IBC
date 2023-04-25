package com.model.newcar;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Controller;

@Entity
public class NewCar {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carId;
	
	private String carBrand;
	
	@OneToMany(mappedBy = "newCar",cascade = CascadeType.ALL)
	private List<NewCarModel> carModel;

	public int getCarId() {
		return carId;
	}

	public void setCarId(int carId) {
		this.carId = carId;
	}

	public String getCarBrand() {
		return carBrand;
	}

	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}

	public List<NewCarModel> getCarModel() {
		return carModel;
	}

	public void setCarModel(List<NewCarModel> carModel) {
		this.carModel = carModel;
	}

}
