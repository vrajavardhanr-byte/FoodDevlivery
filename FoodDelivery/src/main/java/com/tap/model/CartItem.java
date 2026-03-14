package com.tap.model;



public class CartItem {

    private int id;
    private String name;
    private double price;
    private int quantity;

    // Constructor
    public CartItem(int id,String name,double price,int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    // Setter
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // Total price for this item
    public double getTotal() {
        return price * quantity;
    }
}