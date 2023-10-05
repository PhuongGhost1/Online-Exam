/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Excel;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

/**
 *
 * @author Asus
 */

//D:\ki 4(4.9.2023)\PRJ301\TestExcel.xlsx
public class ReadWriteExcel {
    public static void main(String[] args) throws FileNotFoundException {
        ReadWriteExcel obj = new ReadWriteExcel();
        String un = obj.ReadExcel("SheetTest", 1, 0);
        System.out.println("Username:" + un);
        String pw = obj.ReadExcel("SheetTest", 1, 1);
        System.out.println("Username:" + pw);
    }
    
    public String ReadExcel(String SheetName, int rNum, int cNum) throws FileNotFoundException{
        String data="";
        
        try{
            FileInputStream fis = new FileInputStream("D:\\ki 4(4.9.2023)\\PRJ301\\TestExcel.xlsx");
            Workbook wb =  WorkbookFactory.create(fis);
            Sheet s = wb.getSheet(SheetName);
            Row r = s.getRow(rNum);
            Cell c = r.getCell(cNum);
            data = c.getStringCellValue();
            
        }catch(Exception e){
            System.out.println("ReadExcek catch block");
            e.printStackTrace();
        }
        
        return data;
    }
}
