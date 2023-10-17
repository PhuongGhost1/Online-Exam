/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Asus
 */
public class QuestionList extends ArrayList<Question>{
    public QuestionList() {
    }

    public QuestionList(int numbersOfQuestion) {
        super(numbersOfQuestion);
    }

    public int getNumbersOfQuestion() {
        return this.size();
    }
}
