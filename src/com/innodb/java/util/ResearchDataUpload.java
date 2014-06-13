package com.innodb.java.util;

import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ResearchDataUpload {

	public static void main(String[] args) {
		try {
			FileInputStream file = new FileInputStream(new File("C:\\Users\\User\\Desktop\\Data Files\\sent data files\\Eastern University.xlsx"));

			XSSFWorkbook workbook = new XSSFWorkbook(file);

			XSSFSheet sheet = workbook.getSheetAt(0);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row r = rowIterator.next();
				
				Cell facultyCell=r.getCell(1);
				if(facultyCell!=null && facultyCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create faculty
					
				}
				Cell deptCell=r.getCell(2);
				if(deptCell!=null && deptCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create department
					
				}
				Cell nameCell=r.getCell(3);
				if(nameCell!=null && nameCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create person
					
				}
				Cell genderCell=r.getCell(4);
				if(genderCell!=null && genderCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create person
					
					
				}
				Cell designationCell=r.getCell(6);
				if(designationCell!=null && designationCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create person
				
				}
				Cell academicsCell=r.getCell(9);
				if(academicsCell!=null && academicsCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create person
					
				}
				Cell emailCell=r.getCell(7);
				if(emailCell!=null && emailCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create communication details
					
				}
				
				Cell phoneCell=r.getCell(8);
				if(phoneCell!=null && phoneCell.getCellType() != Cell.CELL_TYPE_BLANK){
					//create communication details
					
				}
					
				
			}
			file.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
