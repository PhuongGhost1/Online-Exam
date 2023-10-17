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
public class Question {
    private String id;
    private int difficulty;
    private String description;
    private byte[] attachment;
    private LearningObjective learningObjective;
    private ArrayList<Answer> answerArraylist;
    private ArrayList<ExamPaperQuestion> examPaperQuestion;
    
    public Question() {
    }

    public Question(String id, int difficulty, String description, byte[] attachment, LearningObjective learningObjective, ArrayList<Answer> answerArraylist, ArrayList<ExamPaperQuestion> examPaperQuestion) {
        this.id = id;
        this.difficulty = difficulty;
        this.description = description;
        this.attachment = attachment;
        this.learningObjective = learningObjective;
        this.answerArraylist = answerArraylist;
        this.examPaperQuestion = examPaperQuestion;
    } 

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(int difficulty) {
        this.difficulty = difficulty;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public byte[] getAttachment() {
        return attachment;
    }

    public void setAttachment(byte[] attachment) {
        this.attachment = attachment;
    }

    public ArrayList<Answer> getAnswerArraylist() {
        return answerArraylist;
    }

    public void setAnswerArraylist(ArrayList<Answer> answerArraylist) {
        this.answerArraylist = answerArraylist;
    }

    public LearningObjective getLearningObjective() {
        return learningObjective;
    }

    public void setLearningObjective(LearningObjective learningObjective) {
        this.learningObjective = learningObjective;
    }

    public ArrayList<ExamPaperQuestion> getExamPaperQuestion() {
        return examPaperQuestion;
    }

    public void setExamPaperQuestion(ArrayList<ExamPaperQuestion> examPaperQuestion) {
        this.examPaperQuestion = examPaperQuestion;
    }   
}
