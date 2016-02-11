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
            
         
            <div id="mensaje">
                <img src="images/Monopoly-logo.jpg" width="200" height="80"/>
                <br/><br/>
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
            
            
            
            <table>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>START</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='START'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Barcelona</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Barcelona'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Santander</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Santander'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA1'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Albacete</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Albacete'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Melilla</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Melilla'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Vigo</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Vigo'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                   <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>CÁRCEL</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='CÁRCEL'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Cádiz</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Cádiz'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Valencia</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Valencia'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Elche</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Elche'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Badajoz</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Badajoz'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Sabadell</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Sabadell'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Pamplona</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Pamplona'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Alicante</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Alicante'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA2'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA4'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Madrid</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Madrid'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Bilbao</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Bilbao'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Gran Canaria</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Gran Canaria'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>VE A LA CÁRCEL</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='VE A LA CÁRCEL'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Mallorca</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Mallorca'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Sevilla</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Sevilla'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Ceuta</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Ceuta'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA3'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Gijón</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Gijón'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Málaga</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Málaga'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>PARKING</b></div>
                            <div id="pos"
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='PARKING'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <font class="ferrari"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <font class="hamburguesa"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <font class="avion"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <font class="zapatilla"><b>${player.token}</b></font>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <font class="sombrero"><b>${player.token}</b></font>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            
        </center>
    </body>
</html>