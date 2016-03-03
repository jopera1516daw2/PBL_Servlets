package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Board {
    private List<Square> squares = new ArrayList<Square>();

    private static final String[] SQUARE_NAMES = 
    {"START",
         "Barcelona",
         "Santander",
         "MULTA1",
         "Albacete",
         "Melilla",
         "Vigo",
         "CÁRCEL",
         "Valencia",
         "Badajoz",
         "Pamplona",
         "MULTA2",
         "Madrid",
         "Gran Canaria",
         "PARKING",
         "Málaga",
         "Gijón",
         "MULTA3",
         "Ceuta",
         "Sevilla",
         "Mallorca",
         "VE A LA CÁRCEL",
         "Bilbao",
         "MULTA4",
         "Alicante",
         "Sabadell",
         "Elche",
         "Cádiz"
    };

    private static final int[] SQUARE_PRICES = 
    {0,
         2000,
         200,
         0,
         250,
         175,
         400,
         0,
         1500,
         635,
         450,
         0,
         2200,
         1300,
         0,
         1000,
         775,
         0,
         850,
         1650,
         1000,
         0,
         1400,
         0,
         600,
         250,
         600,
         800
    };

    public Board() {
        for (int i = 0; i < 28; i++) {
            switch (i) {
            case 0:
                    squares.add(new Square("START",0, false));
                    break;
            case 3:
                    squares.add(new Square("MULTA1",0, false));
                    break;
            case 7:
                    squares.add(new Square("CÁRCEL",0, false));
                    break;
            case 11:
                    squares.add(new Square("MULTA2",0, false));
                    break;
            case 14:
                    squares.add(new Square("PARKING",0, false));
                    break;
            case 17:
                    squares.add(new Square("MULTA3",0, false));
                    break;
            case 21:
                    squares.add(new Square("START",0, false));
                    break;
            case 23:
                    squares.add(new Square("MULTA4",0, false));
                    break;
            default:
                    squares.add(new Square(SQUARE_NAMES[i],SQUARE_PRICES[i], false));
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
