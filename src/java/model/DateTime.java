/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

/**
 *
 * @author Asus
 */
public class DateTime {
    private static final String DATE_TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
    
    private LocalDateTime localDateTime;

    public DateTime() {
    }

    public DateTime(String localDateTime) {
        if(isValidDateTime(localDateTime)){
            this.localDateTime = parseStringToDateTime(localDateTime);
        }
    }

    @Override
    public String toString() {
        return localDateTime.format(DateTimeFormatter.ofPattern(DATE_TIME_PATTERN));
    }
    
    
    public static boolean isValidDateTime(String inputDateTime) {
        try {
            LocalDateTime parsedDateTime = parseStringToDateTime(inputDateTime);
            LocalDateTime currentDateTime = LocalDateTime.now();
            return parsedDateTime.isAfter(currentDateTime);
        } catch (DateTimeParseException e) {
            return false;
        }
    }
    
    public static LocalDateTime parseStringToDateTime(String dateTimeString) {
        try {
            return LocalDateTime.parse(dateTimeString, DateTimeFormatter.ofPattern(DATE_TIME_PATTERN));
        } catch (DateTimeParseException e) {
            e.printStackTrace();
            return null;
        }
    }
}
