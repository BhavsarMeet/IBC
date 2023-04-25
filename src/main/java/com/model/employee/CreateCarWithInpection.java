package com.model.employee;

import com.model.inspection.InspectionEntity;
import com.model.usedcar.UsedCarModel;

public class CreateCarWithInpection {

	private UsedCarModel usedCarModel;
	private InspectionEntity inspection;
	
	public CreateCarWithInpection(UsedCarModel usedCarModel, InspectionEntity inspection) {
		super();
		this.usedCarModel = usedCarModel;
		this.inspection = inspection;
	}
	public UsedCarModel getUsedCarModel() {
		return usedCarModel;
	}
	public void setUsedCarModel(UsedCarModel usedCarModel) {
		this.usedCarModel = usedCarModel;
	}
	public InspectionEntity getInspection() {
		return inspection;
	}
	public void setInspection(InspectionEntity inspection) {
		this.inspection = inspection;
	}
	
	
}
