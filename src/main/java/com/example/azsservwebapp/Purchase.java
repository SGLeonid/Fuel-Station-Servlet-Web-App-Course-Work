package com.example.azswebapp;

public class Purchase {
    public Purchase(
            int id,
            int userId,
            int fuelId,
            float discount,
            float amount,
            float price,
            String purchaseDate
    ) {
        this.id = id;
        this.userId = userId;
        this.fuelId = fuelId;
        this.discount = discount;
        this.amount = amount;
        this.price = price;
        this.purchaseDate = purchaseDate;
    }

    private int id;
    private int userId;
    private int fuelId;
    private float discount;
    private float amount;
    private float price;
    private String purchaseDate;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    public int getFuelId() { return fuelId; }
    public void setFuelId(int fuelId) { this.fuelId = fuelId; }
    public float getAmount() { return amount; }
    public void setAmount(float amount) { this.amount = amount; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public String getPurchaseDate() { return purchaseDate; }
    public void setPurchaseDate(String purchaseDate) { this.purchaseDate = purchaseDate; }
    public float getDiscount() { return discount; }
    public void setDiscount(float discount) { this.discount = discount; }
}
