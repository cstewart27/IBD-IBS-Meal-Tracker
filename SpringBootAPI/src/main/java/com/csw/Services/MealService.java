package com.csw.Services;

import com.csw.Models.Meal;
import com.csw.Repositories.MealRepository;
import com.csw.Services.Exceptions.MealNotInsertedException;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MealService {

    private MealRepository mealRepository;

    public MealService(MealRepository mealRepository) {
        this.mealRepository = mealRepository;
    }

    public Meal getMealById(Integer id) {
        return mealRepository.findById(id).get();
    }

    public List<Meal> getMeals() {
        return mealRepository.findAll();
    }

    public Meal addMeal(Meal meal) throws MealNotInsertedException{
        Meal newMeal = mealRepository.save(meal);
        if(newMeal == null) {
            throw new MealNotInsertedException(meal, "Meal not inserted");
        }
        return newMeal;
    }

    public Meal updateMeal(int mealId, Meal meal) {
        return mealRepository.save(meal);
    }

    public void deleteMeal(int mealId) {
        mealRepository.deleteById(mealId);
    }
}

