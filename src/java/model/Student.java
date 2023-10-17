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
public class Student extends Person{
    private String group;
    private ArrayList<Student> student;
    private ArrayList<StudentExam> studentExam;
    private ArrayList<StudentSubject> studentSubject; 

    public Student() {
    }

    public Student(String id, String fullname, String email, String password, String group, ArrayList<Student> student, ArrayList<StudentExam> studentExam, ArrayList<StudentSubject> studentSubject) {
        super(id, fullname, email, password);
        this.group = group;
        this.student = student;
        this.studentExam = studentExam;
        this.studentSubject = studentSubject;
    } 

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public ArrayList<Student> getStudent() {
        return student;
    }

    public void setStudent(ArrayList<Student> student) {
        this.student = student;
    }

    public ArrayList<StudentExam> getStudentExam() {
        return studentExam;
    }

    public void setStudentExam(ArrayList<StudentExam> studentExam) {
        this.studentExam = studentExam;
    }

    public ArrayList<StudentSubject> getStudentSubject() {
        return studentSubject;
    }

    public void setStudentSubject(ArrayList<StudentSubject> studentSubject) {
        this.studentSubject = studentSubject;
    }
}
