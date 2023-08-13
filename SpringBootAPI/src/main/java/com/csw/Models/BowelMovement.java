package com.csw.Models;
import jakarta.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "bowel_movements")
public class BowelMovement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="bmId")
    private int bmId;
    @Column(name="userId")
    private int userId;
    @Column(name="date")
    private Date date;
    @Column(name="bristol_stool_scale")
    private int bristol_stool_scale;
    @Column(name="abdominal_pain")
    private int abdominal_pain;
    @Column(name="blood")
    private int blood;
    @Column(name="flag")
    private boolean flag;
    @Column(name="other_details")
    private String other_details;

    public int getBmId() {
        return bmId;
    }

    public void setBmId(int bmId) {
        this.bmId = bmId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getBristol_stool_scale() {
        return bristol_stool_scale;
    }

    public void setBristol_stool_scale(int bristol_stool_scale) {
        this.bristol_stool_scale = bristol_stool_scale;
    }

    public int getAbdominal_pain() {
        return abdominal_pain;
    }

    public void setAbdominal_pain(int abdominal_pain) {
        this.abdominal_pain = abdominal_pain;
    }

    public int getBlood() {
        return blood;
    }

    public void setBlood(int blood) {
        this.blood = blood;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getOther_details() {
        return other_details;
    }

    public void setOther_details(String other_details) {
        this.other_details = other_details;
    }
}
