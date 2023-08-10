package com.csw.Models;
import java.sql.Date;
import jakarta.persistence.*;

@Entity
@Table(name = "meals")
public class Meal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="mealId")
    private int mealId;

    @Column(name="userId")
    private int userId;

    @Column(name = "favorite")
    private boolean favorite;

    @Column(name = "mealName")
    private String mealName;

    @Column(name = "date")
    private Date date;

    @Column(name = "calories")
    private double calories;

    @Column(name = "serving_size_g")
    private double serving_size_g;

    @Column(name = "fat_total_g")
    private double fat_total_g;

    @Column(name = "fat_saturated_g")
    private double fat_saturated_g;

    @Column(name = "protein_g")
    private double protein_g;

    @Column(name = "sodium_mg")
    private double sodium_mg;

    @Column(name = "potassium_mg")
    private double potassium_mg;

    @Column(name = "cholesterol_mg")
    private double cholesterol_mg;

    @Column(name = "carbohydrates_total_g")
    private double carbohydrates_total_g;

    @Column(name = "fiber_g")
    private double fiber_g;

    @Column(name = "sugar_g")
    private double sugar_g;

    public int getMealId() {
        return mealId;
    }

    public void setMealId(int mealId) {
        this.mealId = mealId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public boolean isFavorite() {
        return favorite;
    }

    public void setFavorite(boolean favorite) {
        this.favorite = favorite;
    }

    public String getMealName() {
        return mealName;
    }

    public void setMealName(String mealName) {
        this.mealName = mealName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getCalories() {
        return calories;
    }

    public void setCalories(double calories) {
        this.calories = calories;
    }

    public double getServing_size_g() {
        return serving_size_g;
    }

    public void setServing_size_g(double serving_size_g) {
        this.serving_size_g = serving_size_g;
    }

    public double getFat_total_g() {
        return fat_total_g;
    }

    public void setFat_total_g(double fat_total_g) {
        this.fat_total_g = fat_total_g;
    }

    public double getFat_saturated_g() {
        return fat_saturated_g;
    }

    public void setFat_saturated_g(double fat_saturated_g) {
        this.fat_saturated_g = fat_saturated_g;
    }

    public double getProtein_g() {
        return protein_g;
    }

    public void setProtein_g(double protein_g) {
        this.protein_g = protein_g;
    }

    public double getSodium_mg() {
        return sodium_mg;
    }

    public void setSodium_mg(double sodium_mg) {
        this.sodium_mg = sodium_mg;
    }

    public double getPotassium_mg() {
        return potassium_mg;
    }

    public void setPotassium_mg(double potassium_mg) {
        this.potassium_mg = potassium_mg;
    }

    public double getCholesterol_mg() {
        return cholesterol_mg;
    }

    public void setCholesterol_mg(double cholesterol_mg) {
        this.cholesterol_mg = cholesterol_mg;
    }

    public double getCarbohydrates_total_g() {
        return carbohydrates_total_g;
    }

    public void setCarbohydrates_total_g(double carbohydrates_total_g) {
        this.carbohydrates_total_g = carbohydrates_total_g;
    }

    public double getFiber_g() {
        return fiber_g;
    }

    public void setFiber_g(double fiber_g) {
        this.fiber_g = fiber_g;
    }

    public double getSugar_g() {
        return sugar_g;
    }

    public void setSugar_g(double sugar_g) {
        this.sugar_g = sugar_g;
    }
}
