package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Game {
	private Board board = new Board();
	private List<Player> players = new ArrayList<Player>();
	private static final String[] TOKENS = {"Horse", "Iron", "Racecar", "Dog", "Top Hat", "Shoe", "Wheelbarrow", "Thimble"};
	public int ronda =1;
        
	public Game(int numberOfPlayers) {
		if(numberOfPlayers > TOKENS.length) {
			throw new IllegalArgumentException("Too many players!");
		}
		
		for (int i = 0; i < numberOfPlayers; i++) {
			Player player = new Player(TOKENS[i], board.getStartSquare(0), 0);
			players.add(player);
		}
	}
	
	public List<Square> getSquares() {
		return board.getSquares();
	}
	
	public List<Player> getPlayers() {
		return players;
	}

	public void playRound(int ronda) {
                int tirada=players.get(0).getDau();
                players.get(0).location=board.getStartSquare(tirada);
                //players.get(0).money+=10;
	}

        public int getRonda() {
            return ronda;
        }

        public void setRonda(int ronda) {
            this.ronda = ronda;
        }
        
}
