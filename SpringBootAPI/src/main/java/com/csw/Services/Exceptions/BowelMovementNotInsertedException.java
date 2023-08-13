package com.csw.Services.Exceptions;

import com.csw.Models.BowelMovement;

public class BowelMovementNotInsertedException extends Exception {

    private BowelMovement bowelMovement;
    public BowelMovementNotInsertedException(BowelMovement bowelMovement, String message) {
        super(message);
        this.bowelMovement = bowelMovement;
    }

    public BowelMovement getBowelMovement() {
        return bowelMovement;
    }
}
