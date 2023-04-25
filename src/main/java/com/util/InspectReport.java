package com.util;


import java.awt.Color;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

import com.lowagie.text.*;
import com.lowagie.text.pdf.*;
import com.model.inspection.InspectionEntity;
import com.model.usedcar.UsedCarModel;

@Component
public class InspectReport {
	
	public boolean generatePdf(InspectionEntity inspection,UsedCarModel usedCar) throws DocumentException, IOException {
		
		boolean flag = false;
		try {
	    Document document = new Document(PageSize.A4);
	    FileOutputStream file = new FileOutputStream("D:\\Meet study\\Frameworks\\Spring\\workspace-spring-tool-suite\\IBC\\src\\main\\resources\\static\\inspection-report\\dummy.pdf");
	    
        PdfWriter.getInstance(document, file);
         
        document.open();
        Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
        font.setSize(18);
        font.setColor(Color.BLUE);
         
        Paragraph p = new Paragraph("Exterior", font);
        p.setAlignment(Paragraph.ALIGN_CENTER);
         
        document.add(p);
         
        PdfPTable table = new PdfPTable(4);
        table.setWidthPercentage(100f);
        table.setWidths(new float[] {3.5f, 3.0f,3.5f,3.5f});
        table.setSpacingBefore(10);
         
		 PdfPCell cell = new PdfPCell();
	        cell.setBackgroundColor(Color.BLUE);
	        cell.setPadding(5);
	         
	        Font font1 = FontFactory.getFont(FontFactory.HELVETICA);
	        font1.setColor(Color.WHITE);
	        cell.setPhrase(new Phrase("Inspection Field", font1));
	        table.addCell(cell);
	        cell.setPhrase(new Phrase(" ", font));
	        table.addCell(cell);
	        cell.setPhrase(new Phrase("Inspection Field", font1));
	        table.addCell(cell);
	        cell.setPhrase(new Phrase(" ", font));
	        table.addCell(cell);
	        
	        table.addCell("Bumper Front");
	        table.addCell(inspection.getBumperFront());
	        table.addCell("Bumper Grill");
	        table.addCell(inspection.getBumperGrill());
	        table.addCell("Headlight Front LHS");
	        table.addCell(inspection.getHeadlightFrontLeft());
	        table.addCell("Headlight Front RHS");
	        table.addCell(inspection.getHeadlightFrontRight());
	        table.addCell("Fog light front LHS");
	        table.addCell(inspection.getFogLightFrontLeft());
	        table.addCell("Fog light front RHS");
	        table.addCell(inspection.getFogLightFrontRight());
	        table.addCell("Cowl top");
	        table.addCell(inspection.getCowlTop());
	        table.addCell("Bonnet");
	        table.addCell(inspection.getBonnet());
	        table.addCell("Windshield");
	        table.addCell(inspection.getWindSheild());
	        table.addCell("Wiper Blade Front");
	        table.addCell(inspection.getWiperBladeFront());
	        table.addCell("Fender(right)");
	        table.addCell(inspection.getFenderRight());
	        table.addCell("Indicator lamp front right");
	        table.addCell(inspection.getIndicatorLampFrontRight());
	        table.addCell("ORVM Right");
	        table.addCell(inspection.getOrvmRight());
	        table.addCell("Pillars[RHS A Pillar]");
	        table.addCell(inspection.getaPillarRhs());
	        table.addCell("Pillars[RHS B Pillar]");
	        table.addCell(inspection.getbPillarRhs());
	        table.addCell("Pillars[RHS C Pillar]");
	        table.addCell(inspection.getcPillarRhs());
	        table.addCell("Running Board right");
	        table.addCell(inspection.getRunningBoardRight());
	        table.addCell("Door [Front Right]");
	        table.addCell(inspection.getDoorFr());
	        table.addCell("Door [Rear Right]");
	        table.addCell(inspection.getDoorRr());
	        table.addCell("Door Handle [Front Right]");
	        table.addCell(inspection.getDoorHandleFr());
	        table.addCell("Door Handle [Rear Right]");
	        table.addCell(inspection.getDoorHandleRr());
	        table.addCell("Door Trim [Front Right]");
	        table.addCell(inspection.getDoorTrimFr());
	        table.addCell("Door Trim [Rear Right]");
	        table.addCell(inspection.getDoorTrimRr());
	        table.addCell("Weather strip [Front right]");
	        table.addCell(inspection.getWeatherStripFr());
	        table.addCell("Weather strip [Rear right]");
	        table.addCell(inspection.getWeatherStripRr());
	        table.addCell("Qt glass Right");
	        table.addCell(inspection.getQtGlassRight());
	        table.addCell("Qt panel Right");
	        table.addCell(inspection.getQtPanelRight());
	        table.addCell("Opening latch [Dicky]");
	        table.addCell(inspection.getOpeningLatchDicky());
	        table.addCell("Opening latch [Bonnet]");
	        table.addCell(inspection.getOpeningLatchBonnet());
	        table.addCell("Opening latch [Fuel lid]");
	        table.addCell(inspection.getOpeningLatchFuelLid());
	        table.addCell("Grab Handle");
	        table.addCell(inspection.getGrabHandle());
	        table.addCell("Bumper Rear");
	        table.addCell(inspection.getBumperRear());
	        table.addCell("Dicky");
	        table.addCell(inspection.getDicky());
	        table.addCell("High mounted stop lamp");
	        table.addCell(inspection.getHighMountedStopLamp());
	        table.addCell("Tail light [Rear right]");
	        table.addCell(inspection.getTailLightRr());
	        table.addCell("Tail light [Rear left]");
	        table.addCell(inspection.getTailLightRl());
	        table.addCell("Windshield (rear)");
	        table.addCell(inspection.getWindShieldRear());
	        table.addCell("Qt. panel left");
	        table.addCell(inspection.getQtPanelLeft());
	        table.addCell("Qt. glass left");
	        table.addCell(inspection.getQtGlassLeft());
	        table.addCell("Fuel lid");
	        table.addCell(inspection.getFuelLid());
	        table.addCell("Door [Rear left]");
	        table.addCell(inspection.getDoorRl());
	        table.addCell("Door [Front left]");
	        table.addCell(inspection.getDoorFl());
	        table.addCell("Door Handle [Rear left]");
	        table.addCell(inspection.getDoorHandleRl());
	        table.addCell("Door Handle [Front left]");
	        table.addCell(inspection.getDoorHandleFl());
	        table.addCell("Door glass [Front left]");
	        table.addCell(inspection.getDoorGlassFl());
	        table.addCell("Door glass [Rear left]");
	        table.addCell(inspection.getDoorGlassRl());
	        table.addCell("Door Trim [Front left]");
	        table.addCell(inspection.getDoorTrimFl());
	        table.addCell("Door Trim [Rear left]");
	        table.addCell(inspection.getDoorTrimRl());
	        table.addCell("Weather strip [Front left]");
	        table.addCell(inspection.getWeatherStripFl());
	        table.addCell("Weather strip [Rear left]");
	        table.addCell(inspection.getWeatherStripRl());
	        table.addCell("Running board (left)");
	        table.addCell(inspection.getRunningBoardLeft());
	        table.addCell("Pillars [LHS A pillar]");
	        table.addCell(inspection.getaPillarLhs());
	        table.addCell("Pillars [LHS B pillar]");
	        table.addCell(inspection.getbPillarLhs());
	        table.addCell("Pillars [LHS C pillar]");
	        table.addCell(inspection.getcPillarLhs());
	        table.addCell("ORVM-Vision Clarity(left)");
	        table.addCell(inspection.getOrvmLeft());
	        table.addCell("Fender (left)");
	        table.addCell(inspection.getFenderLeft());
	        table.addCell("Indicator lamp (front left)");
	        table.addCell(inspection.getIndicatorLampFl());
	        table.addCell("Fender lining (left)");
	        table.addCell(inspection.getFenderLiningLeft());
	        table.addCell("Roof");
	        table.addCell(inspection.getRoof());
	        table.addCell("Wheels");
	        table.addCell(inspection.getWheels());
	        table.addCell("Wheel Cover & Hub Caps");
	        table.addCell(inspection.getWheelCoverAndHubCaps());
	        table.addCell("Pillar trims [LHS B Pillar])");
	        table.addCell(inspection.getPillarTrimsLhsB());
	        table.addCell("Pillar trims [LHS C Pillar])");
	        table.addCell(inspection.getPillarTrimsLhsC());
	        table.addCell("Door beading [Front RHS]");
	        table.addCell(inspection.getDoorBeadingFr());
	        table.addCell("Door beading [Front LHS]");
	        table.addCell(inspection.getDoorBeadingFl());
	        table.addCell("Glove box");
	        table.addCell(inspection.getGloveBox());
	        table.addCell("Pillar trims [RHS A Pillar])");
	        table.addCell(inspection.getPillarTrimRhsA());
	        table.addCell("Pillar trims [RHS B Pillar])");
	        table.addCell(inspection.getPillarTrimRhsB());
	        table.addCell("Pillar trims [RHS C Pillar])");
	        table.addCell(inspection.getPillarTrimRhsC());
	        table.addCell("Door beading [Rear RHS]");
	        table.addCell(inspection.getDoorBeadingRr());
	        table.addCell("Door beading [Rear LHS]");
	        table.addCell(inspection.getDoorBeadingRl());
	        table.addCell("Antenna");
	        table.addCell(inspection.getAntenna());
	        table.addCell("Car logo");
	        table.addCell(inspection.getCarLogo());
	        
	        document.add(table);
	        
	        Paragraph p1 = new Paragraph("Engine", font);
	        p1.setAlignment(Paragraph.ALIGN_CENTER);
	        document.add(p1);
	        
	        PdfPTable table2 = new PdfPTable(4);
	        table2.setWidthPercentage(100f);
	        table2.setWidths(new float[] {3.5f, 3.0f,3.5f,3.5f});
	        table2.setSpacingBefore(10);
	         
			 PdfPCell cell1 = new PdfPCell();
		        cell1.setBackgroundColor(Color.BLUE);
		        cell1.setPadding(5);
		        
		        cell1.setPhrase(new Phrase("Inspection Field", font1));
		        table2.addCell(cell1);
		        cell1.setPhrase(new Phrase(" ", font));
		        table2.addCell(cell1);
		        cell1.setPhrase(new Phrase("Inspection Field", font1));
		        table2.addCell(cell1);
		        cell1.setPhrase(new Phrase(" ", font));
		        table2.addCell(cell1);
		        
		        table2.addCell("Engine oil");
		        table2.addCell(inspection.getEngineOil());
		        table2.addCell("Washer fluid");
		        table2.addCell(inspection.getWasherFluid());
		        table2.addCell("Break fluid");
		        table2.addCell(inspection.getBreakFluid());
		        table2.addCell("Power steering oil");
		        table2.addCell(inspection.getPowerSteeringOil());
		        table2.addCell("Coolant");
		        table2.addCell(inspection.getCoolant());
		        table2.addCell("Radiator Coolant Reservoir cap");
		        table2.addCell(inspection.getRaditorCoolantReservoirCap());
		        table2.addCell("Radiator grill");
		        table2.addCell(inspection.getRaditorGrill());
		        table2.addCell("Air filter body");
		        table2.addCell(inspection.getAirFilterBody());
		        table2.addCell("Battery");
		        table2.addCell(inspection.getBattery());
		        table2.addCell("Battery voltage (static)");
		        table2.addCell(inspection.getStaticBatteryVoltage());
		        table2.addCell("Battery voltage (charging)");
		        table2.addCell(inspection.getChargingBatteryVoltage());
		        table2.addCell("Pulley / tensioners / Belt operations");
		        table2.addCell(inspection.getPulleyTensionersBeltOperations());
		        table2.addCell("Radiator  Fan");
		        table2.addCell(inspection.getRadiatorFan());
		        table2.addCell("Master Cylinder and Booster");
		        table2.addCell(inspection.getMasterCylinderAndBooster());
		        table2.addCell("Self-starter operation");
		        table2.addCell(inspection.getSelfStarterOperation());
		        table2.addCell("Engine health observation");
		        table2.addCell(inspection.getEngineHealthObservation());
		        
		    document.add(table2);
		    
		    Paragraph p2 = new Paragraph("Steering,Suspension & Brakes", font);
	        p2.setAlignment(Paragraph.ALIGN_CENTER);
	        document.add(p2);
	        
	        PdfPTable table3 = new PdfPTable(4);
	        table3.setWidthPercentage(100f);
	        table3.setWidths(new float[] {3.5f, 3.0f,3.5f,3.5f});
	        table3.setSpacingBefore(10);
	         
			 PdfPCell cell2 = new PdfPCell();
		        cell2.setBackgroundColor(Color.BLUE);
		        cell2.setPadding(5);
		        cell2.setPhrase(new Phrase("Inspection Field", font1));
		        table3.addCell(cell1);
		        cell2.setPhrase(new Phrase(" ", font));
		        table3.addCell(cell1);
		        cell2.setPhrase(new Phrase("Inspection Field", font1));
		        table3.addCell(cell1);
		        cell2.setPhrase(new Phrase(" ", font));
		        table3.addCell(cell1);
		        
		        table3.addCell("Clutch set");
		        table3.addCell(inspection.getClutchSet());
		        table3.addCell("Gear shifting");
		        table3.addCell(inspection.getGearShiting());
		        table3.addCell("Breaks");
		        table3.addCell(inspection.getBreaks());
		        table3.addCell("handbrake");
		        table3.addCell(inspection.getHandbrake());
		        table3.addCell("Steering column");
		        table3.addCell(inspection.getSteeringColumn());
		        table3.addCell("Suspension noise");
		        table3.addCell(inspection.getSunspensionNoise());
		        table3.addCell("Steering mounted controls");
		        table3.addCell(inspection.getSteeringMountedControls());
		        
		        document.add(table3);
		        
	        document.close();	
	        file.close();
	        
	        Path dirPathObj = Paths.get("E:\\workspace-spring-tool-suite-4-4.14.1.RELEASE\\IBC-web\\src\\main\\resources\\static\\inspection-report\\used-car\\"+usedCar.getUserEntitySellCar().getUserEmail());
	        boolean dirExists=Files.exists(dirPathObj);
			
			if(!dirExists) {
				Files.createDirectories(dirPathObj);
				System.out.println("created..."+usedCar.getPlatNumber());
			}
		    FileInputStream fi = new FileInputStream("E:\\workspace-spring-tool-suite-4-4.14.1.RELEASE\\IBC-web\\src\\main\\resources\\static\\inspection-report\\dummy.pdf");
		    
		    Files.copy(fi, Paths.get("E:\\workspace-spring-tool-suite-4-4.14.1.RELEASE\\IBC-web\\src\\main\\resources\\static\\inspection-report\\used-car\\"+usedCar.getUserEntitySellCar().getUserEmail()+"\\"+usedCar.getPlatNumber()+".pdf"));  
		    flag = true;
		    }
		catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
}
