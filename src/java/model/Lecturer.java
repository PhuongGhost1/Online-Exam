/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Asus
 */
public class Lecturer extends Person{
    private ArrayList<LecturerSubject> lecturerSubjectList;
    public Lecturer() {
    }

    public Lecturer(ArrayList<LecturerSubject> lecturerSubjectList) {
        this.lecturerSubjectList = lecturerSubjectList;
    }

    public Lecturer(ArrayList<LecturerSubject> lecturerSubjectList, String id, String fullname, String email, String password) {
        super(id, fullname, email, password);
        this.lecturerSubjectList = lecturerSubjectList;
    }

    public ArrayList<LecturerSubject> getLecturerSubjectList() {
        return lecturerSubjectList;
    }

    public void setLecturerSubjectList(ArrayList<LecturerSubject> lecturerSubjectList) {
        this.lecturerSubjectList = lecturerSubjectList;
    }
}
