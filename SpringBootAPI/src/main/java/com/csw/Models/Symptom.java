package com.csw.Models;

import jakarta.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "symptoms")
public class Symptom {

    @Id
    @GeneratedValue  (strategy = GenerationType.IDENTITY)
    @Column(name="symptomId")
    private int symptomId;
    @Column(name="userId")
    private int userId;
    @Column(name="date")
    private Date date;
    @Column(name="abdominal_pain")
    private int abdominal_pain;
    @Column(name="diarrhea")
    private boolean diarrhea;
    @Column(name="urgency")
    private int urgency;
    @Column(name="constipation")
    private boolean constipation;
    @Column(name="bloody_stools")
    private boolean bloody_stools;
    @Column(name="fatigue")
    private boolean fatigue;
    @Column(name="fever")
    private boolean fever;
    @Column(name="nausea")
    private boolean nausea;
    @Column(name="vomiting")
    private boolean vomiting;
    @Column(name="flag")
    private boolean flag;
    @Column(name="other_symptoms")
    private String other_symptoms;
    @Column(name="notes")
    private String notes;

    public int getSymptomId() {
        return symptomId;
    }

    public void setSymptomId(int symptomId) {
        this.symptomId = symptomId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getAbdominal_pain() {
        return abdominal_pain;
    }

    public void setAbdominal_pain(int abdominal_pain) {
        this.abdominal_pain = abdominal_pain;
    }

    public boolean isDiarrhea() {
        return diarrhea;
    }

    public void setDiarrhea(boolean diarrhea) {
        this.diarrhea = diarrhea;
    }

    public int getUrgency() {
        return urgency;
    }

    public void setUrgency(int urgency) {
        this.urgency = urgency;
    }

    public boolean isConstipation() {
        return constipation;
    }

    public void setConstipation(boolean constipation) {
        this.constipation = constipation;
    }

    public boolean isBloody_stools() {
        return bloody_stools;
    }

    public void setBloody_stools(boolean bloody_stools) {
        this.bloody_stools = bloody_stools;
    }

    public boolean isFatigue() {
        return fatigue;
    }

    public void setFatigue(boolean fatigue) {
        this.fatigue = fatigue;
    }

    public boolean isFever() {
        return fever;
    }

    public void setFever(boolean fever) {
        this.fever = fever;
    }

    public boolean isNausea() {
        return nausea;
    }

    public void setNausea(boolean nausea) {
        this.nausea = nausea;
    }

    public boolean isVomiting() {
        return vomiting;
    }

    public void setVomiting(boolean vomiting) {
        this.vomiting = vomiting;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getOther_symptoms() {
        return other_symptoms;
    }

    public void setOther_symptoms(String other_symptoms) {
        this.other_symptoms = other_symptoms;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
