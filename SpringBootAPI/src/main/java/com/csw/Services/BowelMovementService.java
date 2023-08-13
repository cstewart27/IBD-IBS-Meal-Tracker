package com.csw.Services;

import com.csw.Models.BowelMovement;
import com.csw.Repositories.BowelMovementRepository;
import com.csw.Services.Exceptions.BowelMovementNotInsertedException;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BowelMovementService {

    private BowelMovementRepository bowelMovementRepository;

    public BowelMovementService(BowelMovementRepository bowelMovementRepository) {
        this.bowelMovementRepository = bowelMovementRepository;
    }

    public BowelMovement getBowelMovementById(Integer id){
        return bowelMovementRepository.findById(id).get();
    }

    public List<BowelMovement> getBowelMovements() {
        return bowelMovementRepository.findAll();
    }

    public BowelMovement addBowelMovement(BowelMovement bowelMovement) throws BowelMovementNotInsertedException{
        BowelMovement newBowelMovement = bowelMovementRepository.save(bowelMovement);

        if(bowelMovement == null) {
            throw new BowelMovementNotInsertedException(bowelMovement, "BowelMovement not inserted");
        }

        return newBowelMovement;
    }

    public BowelMovement updateBowelMovement(int bowelMovementId, BowelMovement bowelMovement) {
        return bowelMovementRepository.save(bowelMovement);
    }

    public void deleteBowelMovement(int bowelMovementId) {
        bowelMovementRepository.deleteById(bowelMovementId);
    }
}
