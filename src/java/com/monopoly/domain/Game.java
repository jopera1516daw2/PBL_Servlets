package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Game {
	private Board board = new Board();
	private List<Player> players = new ArrayList<Player>();
	private static final String[] TOKENS = {"Ferrari", "Hamburguesa", "Avión", "Zapatilla", "Sombrero"};
	public int ronda =1;
        public int numjugadores=0;
        
	public Game(int numberOfPlayers) {
                numjugadores=numberOfPlayers;
		if(numberOfPlayers > TOKENS.length) {
			throw new IllegalArgumentException("Too many players!");
		}
		
		for (int i = 0; i < numberOfPlayers; i++) {
                        //int aleatorio=(int) Math.floor(Math.random()*numberOfPlayers + 1);
			Player player = new Player(TOKENS[i], board.getStartSquare(0), 0, 0, 0);
			players.add(player);
		}
	}
	
	public List<Square> getSquares() {
		return board.getSquares();
	}
	
	public List<Player> getPlayers() {
		return players;
	}

        public int getRonda() {
            return ronda;
        }

        public void setRonda(int ronda) {
            this.ronda = ronda;
        }

        public int getNumjugadores() {
            return numjugadores;
        }

        public void setNumjugadores(int numjugadores) {
            this.numjugadores = numjugadores;
        }

	public void playRound(int ronda) {
                for (int i = 0; i < numjugadores; i++) {
                    if(ronda==players.get(i).getRondacarcel()+4){
                        players.get(i).setCarcel(false);
                    }
                }
                    for (int i = 0; i < numjugadores; i++) {
                        if(players.get(i).isCarcel()==false){
                            players.get(i).setTirada(players.get(i).getDau());
                            players.get(i).setPosicion(players.get(i).getPosicion()+players.get(i).getTirada());

                            if(players.get(i).getPosicion()==7){
                                players.get(i).setCarcel(true);
                                players.get(i).setRondacarcel(ronda);
                            }
                            
                            if(players.get(i).getPosicion()==3 ||players.get(i).getPosicion()==11 || players.get(i).getPosicion()==17 || players.get(i).getPosicion()==23){
                                players.get(i).money-=100;
                            }

                            if(players.get(i).getPosicion()==28){
                                players.get(i).setPosicion(0);
                                players.get(i).money+=200;
                            }
                            if(players.get(i).getPosicion()==29){
                                players.get(i).setPosicion(1);
                                players.get(i).money+=200;
                            }
                            if(players.get(i).getPosicion()==30){
                                players.get(i).setPosicion(2);
                                players.get(i).money+=200;
                            }
                            if(players.get(i).getPosicion()==31){
                                players.get(i).setPosicion(3);
                                players.get(i).money+=200;
                            }
                            if(players.get(i).getPosicion()==32){
                                players.get(i).setPosicion(4);
                                players.get(i).money+=200;
                            }
                            if(players.get(i).getPosicion()==33){
                                players.get(i).setPosicion(5);
                                players.get(i).money+=200;
                            }

                            players.get(i).location=board.getStartSquare(players.get(i).getPosicion());
                        }
                    }
                //players.get(0).money+=10;
	}        
        
}
