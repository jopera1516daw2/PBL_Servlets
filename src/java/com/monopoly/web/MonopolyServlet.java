package com.monopoly.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monopoly.domain.Game;


@WebServlet({ "/MonopolyServlet", "/Monopoly", "/Play" })
public class MonopolyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String PLAY  = "game.jsp";
	private static String RESET = "index.jsp";
        int numberOfPlayers;
    /**
     * Default constructor. 
     */
    public MonopolyServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	private void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
                
                String forward= PLAY;
		boolean newGame = Boolean.parseBoolean(request.getParameter("newGame"));
          
                String tirar=String.valueOf(request.getParameter("tirar"));
                String comprar=request.getParameter("comprar");
                String pasar=request.getParameter("pasar");
                
		Game game = (Game)request.getSession().getAttribute("game");
                
		if(newGame) {
                        numberOfPlayers = Integer.parseInt(request.getParameter("numberOfPlayers"));
			try {
				game = new Game(numberOfPlayers);
			} catch (IllegalArgumentException e) {
				request.setAttribute("message", e.getMessage());
				forward = RESET;			
			}
			
			request.getSession().setAttribute("game", game);
		} 
		else {
                    if("Tirar".equals(tirar) && game.isPodertirar()==true){
                        game.setPodertirar(false);
                        game.setHastirado(true);
                        game.playRound(game.getRonda(), game.getTurno(), game, numberOfPlayers);
                    }
                    if("Comprar".equals(comprar) && game.isHastirado()==true){
                        game.setPodertirar(true);
                        game.setHastirado(false);
                        game.comprar(game.getRonda(), game.getTurno(), game);
                        if(game.getTurno()==(numberOfPlayers-1)){
                            game.setTurno(0);
                            game.setRonda(game.getRonda()+1);
                        }else{
                            game.setTurno(game.getTurno()+1);
                        }                        
                    }
                    
                    if("Pasar".equals(pasar) && game.isHastirado()==true){
                        game.setPodertirar(true);
                        game.setHastirado(false);
                        if(game.getTurno()==(numberOfPlayers-1)){
                            game.setTurno(0);
                            game.setRonda(game.getRonda()+1);
                        }else{
                            game.setTurno(game.getTurno()+1);
                        }                        
                    }
		}
		request.getRequestDispatcher(forward).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

}
