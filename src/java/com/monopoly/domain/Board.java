package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Board {

	private List<Square> squares = new ArrayList<Square>();
	//private static final String COMMUNITY_CHEST = "Community Chest";
	//private static final String CHANCE = "Chance";
	
	private static final String[] SQUARE_NAMES = 
		   {"START",
			"Barcelona",
			"Santander",
			"MULTA",
			"Albacete",
			"Melilla",
			"Vigo",
			"CÁRCEL",
			"Valencia",
			"Badajoz",
			"Pamplona",
			"MULTA",
			"Madrid",
			"Gran Canaria",
			"PARKING",
			"Málaga",
			"Gijón",
			"MULTA",
			"Ceuta",
			"Sevilla",
			"Mallorca",
			"VE A LA CÁRCEL",
			"Bilbao",
			"MULTA",
			"Alicante",
			"Sabadell",
			"Elche",
			"Cádiz"};
	
	public Board() {
		for (int i = 0; i < 28; i++) {
			switch (i) {
			case 0:
				squares.add(new Square("START"));
				break;

			default:
				squares.add(new Square(SQUARE_NAMES[i]));
				break;
			}
		}
	}
	
	public List<Square> getSquares() {
		return squares;
	}

	public Square getStartSquare(int i) {
		return squares.get(i);
	}
}
