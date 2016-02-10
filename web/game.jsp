<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Monopoly</title>
        <link rel="stylesheet" type="text/css" href="style/monopoly.css">
    </head>
    <body>
        <center>
            <img src="images/Monopoly-logo.jpg" width="200" height="80"/>
         
            <div id="mensaje">
                <form action="Play">
                    <input type="submit" value="Play a Round"/>
                    <input type="hidden" name="newGame" value="false"/>
                </form>
                <br/>
                <p>Ronda: <b>${game.ronda}</b></p>
                <c:forEach items="${game.players}" var="player">
                    <p><b>${player.token}</b> ha sacado un ${player.tirada}. Ahora está en <b>${player.location.name}</b> (Posicion: ${player.posicion}) i tiene <b>${player.money} euros</b></p>
                </c:forEach>
                <p><a href="/PBL_Servlets/index.jsp">Reset Game</a></p>
                
            </div>
            
            <br/>
            
            
            <table>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>START</b></div>
                            <div id="pos1-1"
                                <c:forEach items="${game.players}" var="player">
                                    <p class="token"><b>${player.token}</b></p>
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Barcelona</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Santander</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Albacete</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Melilla</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Vigo</b></div>
                        </div>
                    </td>
                   <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>CÁRCEL</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Cádiz</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Valencia</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Elche</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Badajoz</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Sabadell</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Pamplona</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Alicante</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Madrid</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Bilbao</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Gran Canaria</b></div>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>VE A LA CÁRCEL</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Mallorca</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Sevilla</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Ceuta</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Gijón</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Málaga</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>PARKING</b></div>
                        </div>
                    </td>
                </tr>
            </table>
            
        </center>
    </body>
</html>