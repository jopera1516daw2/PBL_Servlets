package com.monopoly.domain;

import java.util.ArrayList;
import java.util.List;

public class Tablero {
    private List<Casilla> Casillas = new ArrayList<Casilla>();

    public Tablero() {   
        for (int i = 0; i < 28; i++) {
            switch (i) {
            case 0:
                    Casillas.add(new Casilla("START",0, false));
                    break;
            case 1: 
                    Casillas.add(new Casilla("Sabadell",175, false));
                    break;
            case 2: 
                    Casillas.add(new Casilla("Santander",200, false));
                    break;
            case 3:
                    Casillas.add(new Casilla("MULTA1",0, false));
                    break;
            case 4: 
                    Casillas.add(new Casilla("Albacete",250, false));
                    break;
            case 5: 
                    Casillas.add(new Casilla("Melilla",325, false));
                    break;
            case 6: 
                    Casillas.add(new Casilla("Vigo",400, false));
                    break;
            case 7:
                    Casillas.add(new Casilla("CÁRCEL",0, false));
                    break;
            case 8: 
                    Casillas.add(new Casilla("Pamplona",450, false));
                    break;
            case 9: 
                    Casillas.add(new Casilla("Alicante",600, false));
                    break;
            case 10: 
                    Casillas.add(new Casilla("Elche",635, false));
                    break;
            case 11:
                    Casillas.add(new Casilla("MULTA2",0, false));
                    break;
            case 12: 
                    Casillas.add(new Casilla("Badajoz",700, false));
                    break;
            case 13: 
                    Casillas.add(new Casilla("Cádiz",800, false));
                    break;
            case 14:
                    Casillas.add(new Casilla("PARKING",0, false));
                    break;
            case 15: 
                    Casillas.add(new Casilla("Ceuta",925, false));
                    break;
            case 16: 
                    Casillas.add(new Casilla("Gijón",1000, false));
                    break;
            case 17:
                    Casillas.add(new Casilla("SUERTE",0, false));
                    break;
            case 18: 
                    Casillas.add(new Casilla("Mallorca",1125, false));
                    break;
            case 19: 
                    Casillas.add(new Casilla("Málaga",1300, false));
                    break;
            case 20: 
                    Casillas.add(new Casilla("Gran Canaria",1350, false));
                    break;
            case 21:
                    Casillas.add(new Casilla("VE A LA CÁRCEL",0, false));
                    break;
            case 22: 
                    Casillas.add(new Casilla("Bilbao",1400, false));
                    break;
            case 23:
                    Casillas.add(new Casilla("MULTA4",0, false));
                    break;
            case 24: 
                    Casillas.add(new Casilla("Valencia",1500, false));
                    break;
            case 25: 
                    Casillas.add(new Casilla("Sevilla",1650, false));
                    break;
            case 26: 
                    Casillas.add(new Casilla("Barcelona",2000, false));
                    break;
            case 27: 
                    Casillas.add(new Casilla("Madrid",2200, false));
                    break;
            }
        }
    }

    public List<Casilla> getCasillas() {
        return Casillas;
    }

    public Casilla getStartCasilla(int i) {
        return Casillas.get(i);
    }
}
