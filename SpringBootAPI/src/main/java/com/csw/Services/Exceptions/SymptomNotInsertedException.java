package com.csw.Services.Exceptions;

import com.csw.Models.Symptom;

public class SymptomNotInsertedException extends Exception{

    private Symptom symptom;

    public SymptomNotInsertedException(Symptom symptom, String message) {
        super(message);
        this.symptom = symptom;
    }

    public Symptom getSymptom() {
        return symptom;
    }
}
