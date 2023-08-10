package com.csw.Services.Exceptions;

import com.csw.Models.Meal;

public class MealNotInsertedException extends Exception {

    private Meal meal;

    public MealNotInsertedException(Meal meal, String message) {
        super(message);
        this.meal = meal;
    }
}
