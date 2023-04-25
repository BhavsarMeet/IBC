package com.repository.newcar;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.newcar.NewCar;
import com.model.newcar.NewCarModel;

@Repository
public interface NewCarRepository extends JpaRepository<NewCar, Integer>{

	public NewCar getByCarBrand(String carBrand);

}
