package com.monopoly.domain;

public class Player {

	private String token;
	protected Square location;
	protected int money;
        protected int dau;
        public int tirada =0;
        public int posicion=0;
        public int rondacarcel;
        public boolean carcel=false;
	
	public Player(String token, Square startSquare, int money, int tirada, int posicion) {
		this.location = startSquare;
		this.token = token;
                this.money = money;
                this.tirada = tirada;
                this.posicion = posicion;
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
        
        public int getPosicion() {
            return posicion;
        }

        public void setPosicion(int posicion) {
            this.posicion = posicion;
        }

        public int getTirada() {
            return tirada;
        }

        public void setTirada(int tirada) {
            this.tirada = tirada;
        }

        public int getRondacarcel() {
            return rondacarcel;
        }

        public void setRondacarcel(int rondacarcel) {
            this.rondacarcel = rondacarcel;
        }

        public boolean isCarcel() {
            return carcel;
        }

        public void setCarcel(boolean carcel) {
            this.carcel = carcel;
        }
        
        
        
}
