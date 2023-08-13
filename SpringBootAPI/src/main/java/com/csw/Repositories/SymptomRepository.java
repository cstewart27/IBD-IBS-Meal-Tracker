package com.csw.Repositories;

import com.csw.Models.Symptom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SymptomRepository extends JpaRepository<Symptom, Integer> {
}
