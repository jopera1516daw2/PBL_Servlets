package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Game {
    private Board board = new Board();
    protected List<Player> players = new ArrayList<Player>();
    private static final String[] TOKENS = {"Coche", "Hamburguesa", "Avión", "Zapatilla", "Sombrero"};
    public int ronda =1;
    public int turno =0;
    public int numjugadores=0;
    public int p_money=0;
    public boolean podertirar=true;
    public boolean hastirado=false;
    public int tirada=1;

    public Game(int numberOfPlayers) {
            numjugadores=numberOfPlayers;
            if(numberOfPlayers > TOKENS.length) {
                    throw new IllegalArgumentException("No pueden jugar más de 5 jugadores.");
            }
            for (int i = 0; i < numberOfPlayers; i++) {
                    //int aleatorio=(int) Math.floor(Math.random()*numberOfPlayers + 1);
                    Player player = new Player(TOKENS[i], board.getStartSquare(0), 5000, 0, 0, i);
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

    public boolean isPodertirar() {
        return podertirar;
    }

    public void setPodertirar(boolean podertirar) {
        this.podertirar = podertirar;
    }

    public boolean isHastirado() {
        return hastirado;
    }

    public void setHastirado(boolean hastirado) {
        this.hastirado = hastirado;
    }

    public int getTirada() {
        return tirada;
    }

    public void setTirada(int tirada) {
        this.tirada = tirada;
    }

    
    public void pasarTurno(Game game){
        game.setPodertirar(true);
        game.setHastirado(false);
        if(game.getTurno()==(numjugadores-1)){
            game.setTurno(0);
            game.setRonda(game.getRonda()+1);
        }else{
            game.setTurno(game.getTurno()+1);
        }   
    }

    public void comprar(int ronda, int turno, Game game) {
        if(players.get(turno).isMuerto()==false){
            if(!"START".equals(players.get(turno).location.getName())){
                if(players.get(turno).money>=players.get(turno).location.price && players.get(turno).location.comprado==false){
                    players.get(turno).money-=players.get(turno).location.price;
                    players.get(turno).comprados.add(players.get(turno).location);
                    players.get(turno).location.comprado=true;

                    if(players.get(turno).money<=0){
                        //players.remove(players.get(turno));
                        players.get(turno).money=0;
                        players.get(turno).setMuerto(true);
                    }
                }
            }else{
                pasarTurno(game);
            }
        }else{
            pasarTurno(game);
        }
    }

    public void playRound(int ronda, int turno, Game game, int numberOfPlayers) {
        
        if(players.get(turno).isMuerto()==false){
            if(ronda==players.get(turno).getRondacarcel()+4){
                players.get(turno).setCarcel(false);
            }

            if(players.get(turno).isCarcel()==false){
                players.get(turno).setTirada(players.get(turno).getDau());
                
                this.tirada=players.get(turno).getTirada();
                
                //players.get(turno).setTirada(6);
                int antes=players.get(turno).getPosicion();
                players.get(turno).setPosicion((players.get(turno).getPosicion()+players.get(turno).getTirada())%28);
                int despues=players.get(turno).getPosicion();
                
                if(players.get(turno).getPosicion()==21){
                    players.get(turno).setPosicion(7);
                    players.get(turno).setCarcel(true);
                    players.get(turno).setRondacarcel(ronda);
                    pasarTurno(game);
                }
                
                if(players.get(turno).getPosicion()==7){
                    pasarTurno(game);
                }
                
                if(players.get(turno).getPosicion()==3){
                    players.get(turno).money-=200;
                    this.p_money = p_money+200;
                    pasarTurno(game);
                }
                if(players.get(turno).getPosicion()==11){
                    players.get(turno).money-=400;
                    this.p_money = p_money+400;
                    pasarTurno(game);                              
                 }
                if(players.get(turno).getPosicion()==17){
                    players.get(turno).money+=(int) Math.floor(Math.random()*(1500-500+1)+500); 
                    pasarTurno(game);                              
                 }
                if( players.get(turno).getPosicion()==23){
                    players.get(turno).money-=800;
                    this.p_money = p_money+800;
                    pasarTurno(game);

                 }
                if(players.get(turno).getPosicion()==14){
                    players.get(turno).money+=p_money;
                    this.p_money = 0;
                    pasarTurno(game);                              
                 }

                if(antes>despues){
                    players.get(turno).money+=800;
                }
                /*if(players.get(turno).getPosicion()==28){
                    players.get(turno).setPosicion(0);
                    players.get(turno).money+=800;
                }
                if(players.get(turno).getPosicion()==29){
                    players.get(turno).setPosicion(1);
                    players.get(turno).money+=800;
                }
                if(players.get(turno).getPosicion()==30){
                    players.get(turno).setPosicion(2);
                    players.get(turno).money+=800;
                }
                if(players.get(turno).getPosicion()==31){
                    players.get(turno).setPosicion(3);
                    players.get(turno).money+=800;
                }
                if(players.get(turno).getPosicion()==32){
                    players.get(turno).setPosicion(4);
                    players.get(turno).money+=800;
                }
                if(players.get(turno).getPosicion()==33){
                    players.get(turno).setPosicion(5);
                    players.get(turno).money+=800;
                }*/

                players.get(turno).location=board.getStartSquare(players.get(turno).getPosicion());
                for(int i=0;i<numjugadores;i++){
                    if(i!=turno){
                        if(players.get(i).comprados.contains(players.get(turno).location) && players.get(i).isMuerto()==false){
                            players.get(turno).money-=players.get(turno).location.price;
                            players.get(i).money+=players.get(turno).location.price;
                            game.setPodertirar(true);
                            game.setHastirado(false);
                            if(game.getTurno()==(numberOfPlayers-1)){
                                game.setTurno(0);
                                game.setRonda(game.getRonda()+1);
                            }else{
                                game.setTurno(game.getTurno()+1);
                            }     
                        }else if(players.get(i).comprados.contains(players.get(turno).location)){
                            pasarTurno(game);
                        }
                    }
                }
            }else{
                players.get(turno).setTirada(players.get(turno).getDau());
                
                this.tirada=players.get(turno).getTirada();
                
                if(players.get(turno).getTirada()==6){
                    players.get(turno).setCarcel(false);
                }
                pasarTurno(game);
            }

            if(players.get(turno).money<=0){
                //players.remove(players.get(turno));
                players.get(turno).money=0;
                players.get(turno).setMuerto(true);
            }
        }else{
            pasarTurno(game);
        }
    }    
}
