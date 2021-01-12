package com.company;

public class Main {

    public static void main(String[] args) {
        DatabaseSource dbSource = new DatabaseSource();
        int totalAmount = dbSource.getTotalAmount();
        System.out.println("Total amount on passengers in the current airport = " + totalAmount);
    }
}
