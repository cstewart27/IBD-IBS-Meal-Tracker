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
}
