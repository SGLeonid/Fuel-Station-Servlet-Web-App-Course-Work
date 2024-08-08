package com.example.azswebapp;

public class Fuel {
    public Fuel(
            int id,
            String mark,
            float pricePerLitter
    ) {
        this.id = id;
        this.mark = mark;
        this.pricePerLitter = pricePerLitter;
    }

    private int id;
    private String mark;
    private float pricePerLitter;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getMark() { return mark; }
    public void setMark(String mark) { this.mark = mark; }
    public float getPricePerLitter() { return pricePerLitter; }
    public void setPricePerLitter(float pricePerLitter) { this.pricePerLitter = pricePerLitter; }
}
