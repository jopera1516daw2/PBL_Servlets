package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Board {
    private List<Square> Squares = new ArrayList<Square>();

    public Board() {   
        for (int i = 0; i < 28; i++) {
            switch (i) {
            case 0:
                    Squares.add(new Square("START",0, false));
                    break;
            case 1: 
                    Squares.add(new Square("Sabadell",175, false));
                    break;
            case 2: 
                    Squares.add(new Square("Santander",200, false));
                    break;
            case 3:
                    Squares.add(new Square("MULTA1",0, false));
                    break;
            case 4: 
                    Squares.add(new Square("Albacete",250, false));
                    break;
            case 5: 
                    Squares.add(new Square("Melilla",325, false));
                    break;
            case 6: 
                    Squares.add(new Square("Vigo",400, false));
                    break;
            case 7:
                    Squares.add(new Square("CÁRCEL",0, false));
                    break;
            case 8: 
                    Squares.add(new Square("Pamplona",450, false));
                    break;
            case 9: 
                    Squares.add(new Square("Alicante",600, false));
                    break;
            case 10: 
                    Squares.add(new Square("Elche",635, false));
                    break;
            case 11:
                    Squares.add(new Square("MULTA2",0, false));
                    break;
            case 12: 
                    Squares.add(new Square("Badajoz",700, false));
                    break;
            case 13: 
                    Squares.add(new Square("Cádiz",800, false));
                    break;
            case 14:
                    Squares.add(new Square("PARKING",0, false));
                    break;
            case 15: 
                    Squares.add(new Square("Ceuta",925, false));
                    break;
            case 16: 
                    Squares.add(new Square("Gijón",1000, false));
                    break;
            case 17:
                    Squares.add(new Square("SUERTE",0, false));
                    break;
            case 18: 
                    Squares.add(new Square("Mallorca",1125, false));
                    break;
            case 19: 
                    Squares.add(new Square("Málaga",1300, false));
                    break;
            case 20: 
                    Squares.add(new Square("Gran Canaria",1350, false));
                    break;
            case 21:
                    Squares.add(new Square("VE A LA CÁRCEL",0, false));
                    break;
            case 22: 
                    Squares.add(new Square("Bilbao",1400, false));
                    break;
            case 23:
                    Squares.add(new Square("MULTA4",0, false));
                    break;
            case 24: 
                    Squares.add(new Square("Valencia",1500, false));
                    break;
            case 25: 
                    Squares.add(new Square("Sevilla",1650, false));
                    break;
            case 26: 
                    Squares.add(new Square("Barcelona",2000, false));
                    break;
            case 27: 
                    Squares.add(new Square("Madrid",2200, false));
                    break;
            }
        }
    }

    public List<Square> getSquares() {
        return Squares;
    }

    public Square getStartSquare(int i) {
        return Squares.get(i);
    }
}
