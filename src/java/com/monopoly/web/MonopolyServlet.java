package com.monopoly.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monopoly.domain.Game;

/**
 * Servlet implementation class MonopolyServlet
 */
@WebServlet({ "/MonopolyServlet", "/Monopoly", "/Play" })
public class MonopolyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String PLAY  = "game.jsp";
	private static String RESET = "index.jsp";
        int numberOfPlayers;
        //int ronda=0;
    /**
     * Default constructor. 
     */
    public MonopolyServlet() {
        // TODO Auto-generated constructor stub user.properties.file=/home/dgs/.netbeans/8.1/build.properties
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	private void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String forward = PLAY;
		boolean newGame = Boolean.parseBoolean(request.getParameter("newGame"));
		Game game = (Game)request.getSession().getAttribute("game");
                
		
		if(newGame) {
                        //game.ronda=0;
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
			game.playRound(game.getRonda(), game.getTurno());
                        if(game.getTurno()==(numberOfPlayers-1)){
                            game.setTurno(0);
                            game.setRonda(game.getRonda()+1);
                        }else{
                            game.setTurno(game.getTurno()+1);
                        }
                 
		}
		
		request.getRequestDispatcher(forward).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

}
