package com.csw.Controllers;

import com.csw.Models.Meal;
import com.csw.Services.Exceptions.MealNotInsertedException;
import com.csw.Services.MealService;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping("/api/meals")
public class MealAPIController {

    private MealService mealService;

    public MealAPIController(MealService mealService) {
        this.mealService = mealService;
    }

    @GetMapping(path = "/{id}")
    public Meal getMealById(@PathVariable int id) {
        Meal meal = mealService.getMealById(id);
        if(meal == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Meal not found");
        }
        return meal;
    }

    @GetMapping(path = "")
    public List<Meal> getMeals() {
        List<Meal> meals = mealService.getMeals();
        if(meals == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Meals not found");
        }
        return meals;
    }

    @PostMapping(path = "")
    public Meal addMeal(@RequestBody Meal meal) throws MealNotInsertedException {
        return mealService.addMeal(meal);
    }

    @PutMapping(path = "/{id}")
    public Meal updateMeal(@PathVariable int id, @RequestBody Meal meal) {
        return mealService.updateMeal(id, meal);
    }

    @DeleteMapping(path = "/{id}")
    public void deleteMeal(@PathVariable int id) {
        mealService.deleteMeal(id);
        throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Meal deleted");
    }
}
