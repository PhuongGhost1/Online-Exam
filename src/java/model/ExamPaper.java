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
public class ExamPaper {
    private String id;
    private String name;
    private String description;
    private QuestionList questionList;
    private ArrayList<ExamPaperQuestion> examPaperQuestion;
    private String lecturerId;
     
    public ExamPaper() {
    }

    public ExamPaper(String id, String name, String description, QuestionList questionList, ArrayList<ExamPaperQuestion> examPaperQuestion, String lecturerId) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.questionList = questionList;
        this.examPaperQuestion = examPaperQuestion;
        this.lecturerId = lecturerId;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberOfQuestion() {
        if(questionList == null) return 0;
        return questionList.getNumbersOfQuestion();
    }

    public QuestionList getQuestionList() {
        return questionList;
    }

    public void setQuestionList(QuestionList questionList) {
        this.questionList = questionList;
    }

    public ArrayList<ExamPaperQuestion> getExamPaperQuestion() {
        return examPaperQuestion;
    }

    public void setExamPaperQuestion(ArrayList<ExamPaperQuestion> examPaperQuestion) {
        this.examPaperQuestion = examPaperQuestion;
    }

    public String getLecturerId() {
        return lecturerId;
    }

    public void setLecturerId(String lecturerId) {
        this.lecturerId = lecturerId;
    }   
}
