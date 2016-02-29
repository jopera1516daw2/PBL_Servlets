package com.monopoly.domain;

public class Square {

	private String name;
        protected int price;
        protected boolean comprado=false;
	
	public Square(String name, int price, boolean comprado) {
		this.name = name;
                this.price = price;
                this.comprado = comprado;
	}
	
	public String getName() {
		return name;
	}
        
        public int getPrice() {
		return price;
	}
}
