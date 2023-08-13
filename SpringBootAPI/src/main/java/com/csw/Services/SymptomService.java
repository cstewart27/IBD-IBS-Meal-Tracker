package com.csw.Services;

import com.csw.Models.Symptom;
import com.csw.Repositories.SymptomRepository;
import com.csw.Services.Exceptions.SymptomNotInsertedException;
import jakarta.persistence.Column;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SymptomService {

    private SymptomRepository symptomRepository;

    public SymptomService(SymptomRepository symptomRepository) {
        this.symptomRepository = symptomRepository;
    }

    public Symptom getSymptomById(Integer id){
        return symptomRepository.findById(id).get();
    }

    public List<Symptom> getSymptoms() {
        return symptomRepository.findAll();
    }

    public Symptom addSymptom(Symptom symptom) throws SymptomNotInsertedException{
        Symptom newSymptom = symptomRepository.save(symptom);

        if(symptom == null) {
            throw new SymptomNotInsertedException(symptom, "Symptom not inserted");
        }

        return newSymptom;
    }

    public Symptom updateSymptom(int symptomId, Symptom symptom) {
        return symptomRepository.save(symptom);
    }

    public void deleteSymptom(int symptomId) {
        symptomRepository.deleteById(symptomId);
    }
}
