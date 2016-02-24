package com.monopoly.domain;

public class Square {

	private String name;
        protected int price;
	
	public Square(String name, int price) {
		this.name = name;
                this.price = price;
	}
	
	public String getName() {
		return name;
	}
        
        public int getPrice() {
		return price;
	}
}
