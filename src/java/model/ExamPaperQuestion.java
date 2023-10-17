/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Asus
 */
public class ExamPaperQuestion {
    private String examPaperId;
    private String questionId;

    public ExamPaperQuestion() {
    }

    public ExamPaperQuestion(String examPaperId, String questionId) {
        this.examPaperId = examPaperId;
        this.questionId = questionId;
    }

    public String getExamPaperId() {
        return examPaperId;
    }

    public void setExamPaperId(String examPaperId) {
        this.examPaperId = examPaperId;
    }

    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }   
}
