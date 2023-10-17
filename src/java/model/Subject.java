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
public class Subject {
    private String id;
    private String name;
    private ArrayList<LearningObjective> learningObjective;
    private ArrayList<LecturerSubject> lecturerSubject;
    private ArrayList<StudentSubject> studentSubject;
    
    public Subject() {
    }

    public Subject(String id, String name, ArrayList<LearningObjective> learningObjective, ArrayList<LecturerSubject> lecturerSubject, ArrayList<StudentSubject> studentSubject) {
        this.id = id;
        this.name = name;
        this.learningObjective = learningObjective;
        this.lecturerSubject = lecturerSubject;
        this.studentSubject = studentSubject;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<LearningObjective> getLearningObjective() {
        return learningObjective;
    }

    public void setLearningObjective(ArrayList<LearningObjective> learningObjective) {
        this.learningObjective = learningObjective;
    }

    public ArrayList<LecturerSubject> getLecturerSubject() {
        return lecturerSubject;
    }

    public void setLecturerSubject(ArrayList<LecturerSubject> lecturerSubject) {
        this.lecturerSubject = lecturerSubject;
    }

    public ArrayList<StudentSubject> getStudentSubject() {
        return studentSubject;
    }

    public void setStudentSubject(ArrayList<StudentSubject> studentSubject) {
        this.studentSubject = studentSubject;
    }
}
