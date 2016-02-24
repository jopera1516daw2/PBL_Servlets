package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Game {
	private Board board = new Board();
	private List<Player> players = new ArrayList<Player>();
	private static final String[] TOKENS = {"Ferrari", "Hamburguesa", "Avión", "Zapatilla", "Sombrero"};
	public int ronda =1;
        public int turno =0;
        public int numjugadores=0;
        public int p_money=0;
          
	public Game(int numberOfPlayers) {
                numjugadores=numberOfPlayers;
		if(numberOfPlayers > TOKENS.length) {
			throw new IllegalArgumentException("Too many players!");
		}
		
		for (int i = 0; i < numberOfPlayers; i++) {
                        //int aleatorio=(int) Math.floor(Math.random()*numberOfPlayers + 1);
			Player player = new Player(TOKENS[i], board.getStartSquare(0), 1000, 0, 0, i);
			players.add(player);
		}
	}
	
	public List<Square> getSquares() {
		return board.getSquares();
	}
	
	public List<Player> getPlayers() {
		return players;
	}
        public int getP_money() {
                    return p_money;
                }
        public int getRonda() {
            return ronda;
        }

        public void setRonda(int ronda) {
            this.ronda = ronda;
        }
        
        public int getTurno() {
            return turno;
        }

        public void setTurno(int turno) {
            this.turno = turno;
        }
        
        public int getNumjugadores() {
            return numjugadores;
        }

        public void setNumjugadores(int numjugadores) {
            this.numjugadores = numjugadores;
        }

        public void comprar(int ronda, int turno) {
            if(players.get(turno).money>=players.get(turno).location.price){
                players.get(turno).money-=players.get(turno).location.price;
            }
        }
        
	public void playRound(int ronda, int turno, Game game, int numberOfPlayers) {
            
                if(ronda==players.get(turno).getRondacarcel()+4){
                    players.get(turno).setCarcel(false);
                }
                
                if(players.get(turno).isCarcel()==false){
                    players.get(turno).setTirada(players.get(turno).getDau());
                    players.get(turno).setPosicion(players.get(turno).getPosicion()+players.get(turno).getTirada());
                    
                    if(players.get(turno).getTirada()==6){
                        players.get(turno).setCarcel(false);
                    }
                    
                    if(players.get(turno).getPosicion()==7){
                        players.get(turno).setCarcel(true);
                        players.get(turno).setRondacarcel(ronda);
                    }

                    if(players.get(turno).getPosicion()==3 && players.get(turno).money>=200){
                        players.get(turno).money-=200;
                        this.p_money = p_money+200;
                        /*if(game.getTurno()==(numberOfPlayers-1)){
                            game.setTurno(0);
                            game.setRonda(game.getRonda()+1);
                        }else{
                            game.setTurno(game.getTurno()+1);
                        }*/
                    }
                    if(players.get(turno).getPosicion()==11 && players.get(turno).money>=400){
                        players.get(turno).money-=400;
                        this.p_money = p_money+400;
                              
                     }
                    if(players.get(turno).getPosicion()==17 && players.get(turno).money>=600){
                                players.get(turno).money-=600;
                               this.p_money = p_money+600;
                              
                     }
                    if( players.get(turno).getPosicion()==23 && players.get(turno).money>=800){
                                players.get(turno).money-=800;
                               this.p_money = p_money+800;
                              
                     }
                    if(players.get(turno).getPosicion()==14){
                                players.get(turno).money+=p_money;
                               this.p_money = 0;
                              
                     }

                    if(players.get(turno).getPosicion()==28){
                        players.get(turno).setPosicion(0);
                        players.get(turno).money+=200;
                    }
                    if(players.get(turno).getPosicion()==29){
                        players.get(turno).setPosicion(1);
                        players.get(turno).money+=200;
                    }
                    if(players.get(turno).getPosicion()==30){
                        players.get(turno).setPosicion(2);
                        players.get(turno).money+=200;
                    }
                    if(players.get(turno).getPosicion()==31){
                        players.get(turno).setPosicion(3);
                        players.get(turno).money+=200;
                    }
                    if(players.get(turno).getPosicion()==32){
                        players.get(turno).setPosicion(4);
                        players.get(turno).money+=200;
                    }
                    if(players.get(turno).getPosicion()==33){
                        players.get(turno).setPosicion(5);
                        players.get(turno).money+=200;
                    }

                    players.get(turno).location=board.getStartSquare(players.get(turno).getPosicion());
                }
            
	}        
        
}
