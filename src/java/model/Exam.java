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
public class Exam {
    public enum ExamType {
        Assginment,
        Progresstest,
        FE
    }
    
    private String id;
    private ExamType examType;
    private DateTime timeStart;
    private DateTime timeEnd;
    private String enrollKey;
    private boolean isShuffleQuestion;
    private boolean isShuffleAnswer;
    private float gradeWeight;
    private String description;
    private ArrayList<StudentExam> studentExam;
    private String examPaperId;
    private String lecturerId;

    public Exam() {
    }

    public Exam(String id, ExamType examType, DateTime timeStart, DateTime timeEnd, String enrollKey, boolean isShuffleQuestion, boolean isShuffleAnswer, int gradeWeight, String description, ArrayList<StudentExam> studentExam, String examPaperId, String lecturerId) {
        this.id = id;
        this.examType = examType;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
        this.enrollKey = enrollKey;
        this.isShuffleQuestion = isShuffleQuestion;
        this.isShuffleAnswer = isShuffleAnswer;
        this.gradeWeight = (float) gradeWeight/100;
        this.studentExam = studentExam;
        this.examPaperId = examPaperId;
        this.lecturerId = lecturerId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public ExamType getExamType() {
        return examType;
    }

    public void setExamType(ExamType examType) {
        this.examType = examType;
    }

    public DateTime getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(DateTime timeStart) {
        this.timeStart = timeStart;
    }

    public DateTime getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(DateTime timeEnd) {
        this.timeEnd = timeEnd;
    }

    public String getEnrollKey() {
        return enrollKey;
    }

    public void setEnrollKey(String enrollKey) {
        this.enrollKey = enrollKey;
    }

    public boolean isIsShuffleQuestion() {
        return isShuffleQuestion;
    }

    public void setIsShuffleQuestion(boolean isShuffleQuestion) {
        this.isShuffleQuestion = isShuffleQuestion;
    }

    public boolean isIsShuffleAnswer() {
        return isShuffleAnswer;
    }

    public void setIsShuffleAnswer(boolean isShuffleAnswer) {
        this.isShuffleAnswer = isShuffleAnswer;
    }

    public float getGradeWeight() {
        return gradeWeight;
    }

    public void setGradeWeight(int gradeWeight) {
        this.gradeWeight = (float)gradeWeight / 100;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ArrayList<StudentExam> getStudentExam() {
        return studentExam;
    }

    public void setStudentExam(ArrayList<StudentExam> studentExam) {
        this.studentExam = studentExam;
    } 

    public String getExamPaperId() {
        return examPaperId;
    }

    public void setExamPaperId(String examPaperId) {
        this.examPaperId = examPaperId;
    }

    public String getLecturerId() {
        return lecturerId;
    }

    public void setLecturerId(String lecturerId) {
        this.lecturerId = lecturerId;
    } 
}
