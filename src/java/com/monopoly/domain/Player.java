package com.monopoly.domain;

public class Player {

	private String token;
	protected Square location;
	protected int money;
        protected int dau;
	
	public Player(String token, Square startSquare, int money) {
		this.location = startSquare;
		this.token = token;
                this.money = money;
	}
	
	public Square getLocation() {
		return location;
	}
	
	public String getToken() {
		return token;
	}
	
	public int getMoney() {
		return money;
	}

        public int getDau() {
            dau=(int) Math.floor(Math.random()*6 + 1);
            return dau;
        }
        
}
