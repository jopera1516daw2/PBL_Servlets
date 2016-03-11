package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Player {
	private String token;
	protected Casilla location;
	protected int money = 5000;
        protected List<Casilla> comprados = new ArrayList<Casilla>();
        protected int dau;
        public int tirada =0;
        public int posicion=0;
        public int rondacarcel;
        public boolean carcel=false;
        public int numPlayer=0;
        public boolean muerto=false;
	
	public Player(String token, Casilla startCasilla, int money, int tirada, int posicion, int num) {
		this.location = startCasilla;
		this.token = token;
                this.money = money;
                this.tirada = tirada;
                this.posicion = posicion;
                this.numPlayer = num;
	}
	
	public Casilla getLocation() {
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

        public int getNumPlayer() {
            return numPlayer;
        }

        public void setNumPlayer(int numPlayer) {
            this.numPlayer = numPlayer;
        }

        public boolean isMuerto() {
            return muerto;
        }

        public void setMuerto(boolean muerto) {
            this.muerto = muerto;
        }
        
        public List<Casilla> getComprados() {
		return comprados;
	}
        
}
