package com.csw.Controllers;

import com.csw.Models.Symptom;
import com.csw.Repositories.SymptomRepository;
import com.csw.Services.Exceptions.SymptomNotInsertedException;
import com.csw.Services.SymptomService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping(path = "/api/symptoms")
public class SymptomAPIController {

    private SymptomService symptomService;

    public SymptomAPIController(SymptomService symptomService) {
        this.symptomService = symptomService;
    }

    @GetMapping(path = "/{id}")
    public Symptom getSymptomById(@PathVariable Integer id) {
        Symptom symptom = symptomService.getSymptomById(id);

        if (symptom == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Symptom not found");
        }
        return symptom;
    }

    @GetMapping(path = "")
    public List<Symptom> getSymptoms() {
        List<Symptom> symptoms = symptomService.getSymptoms();

        if (symptoms == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Symptoms not found");
        }
        return symptoms;
    }

    @PostMapping(path = "")
    public Symptom addSymptom(@RequestBody Symptom symptom) throws SymptomNotInsertedException {
        return symptomService.addSymptom(symptom);
    }

    @PutMapping(path = "/{id}")
    public Symptom updateSymptom(@PathVariable int id, @RequestBody Symptom symptom) {
        return symptomService.updateSymptom(id, symptom);
    }

    @DeleteMapping(path = "/{id}")
    public void deleteSymptom(@PathVariable int id) {
        symptomService.deleteSymptom(id);

        throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Symptom deleted");
    }
}
