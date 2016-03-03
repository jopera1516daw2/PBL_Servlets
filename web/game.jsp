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
                    <input type="submit" name="tirar" value="Tirar"/>
                    <input type="submit" name="comprar" value="Comprar"/>
                    <input type="submit" name="pasar" value="Pasar"/>
                    <input type="hidden" name="newGame" value="false"/>
                </form>
                <br/>
                <p>Ronda: <b>${game.ronda}</b></p>
                <c:forEach items="${game.players}" var="player">
                    <c:if test="${game.turno==player.numPlayer}">
                        <p style="color:red;"><b>${player.token}</b> ha sacado un ${player.tirada}. Ahora está en <b>${player.location.name}</b> (Posicion: ${player.posicion}) i tiene <b>${player.money} euros</b></p>
                    </c:if>
                    <c:if test="${game.turno!=player.numPlayer}">
                        <p><b>${player.token}</b> ha sacado un ${player.tirada}. Ahora está en <b>${player.location.name}</b> (Posicion: ${player.posicion}) i tiene <b>${player.money} euros</b></p>
                    </c:if>    
                </c:forEach>
                    <p>Parquing: <b>${game.p_money}</b></p>    
                <p><a href="/PBL_Servlets/index.jsp">Reiniciar Juego</a></p>
            </div> 
            <table>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>START</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='START'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Barcelona</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Barcelona'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>2000 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Santander</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Santander'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                        <%--<c:forEach items="${player.comprados}" var="comprado">--%>
                                            <%--<c:if test="${comprado.name=='Santander'}">--%>
                                                
                                            <%--</c:if>--%>
                                        <%--</c:forEach>--%>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>200 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA1'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>- 200 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Albacete</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Albacete'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>250 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Melilla</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Melilla'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>175 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Vigo</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Vigo'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>400 $</b></div>
                        </div>
                    </td>
                   <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>CÁRCEL</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='CÁRCEL'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda" style="margin-top: 55px"><b>Tres turnos sin tirar</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Cádiz</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Cádiz'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>800 $</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Valencia</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Valencia'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>1500 $</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Elche</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Elche'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>600 $</b></div>            
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Badajoz</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Badajoz'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>635 $</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Sabadell</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Sabadell'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>250 $</b></div>            
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Pamplona</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Pamplona'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>450 $</b></div>            
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Alicante</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Alicante'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>600 $</b></div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA2'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>- 400 $</b></div>            
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA4'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>- 800 $</b></div>  
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Madrid</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Madrid'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>2200 $</b></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Bilbao</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Bilbao'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>1400 $</b></div>            
                            </div>
                        </div>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Gran Canaria</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Gran Canaria'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>1300 $</b></div>            
                            </div>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>VE A LA CÁRCEL</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='VE A LA CÁRCEL'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Mallorca</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Mallorca'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>1000 $</b></div>            
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Sevilla</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Sevilla'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>1650 $</b></div>            
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Ceuta</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Ceuta'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                                <div class="footercelda"><b>850 $</b></div>            
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA3'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>- 600 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Gijón</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Gijón'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>775 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda"><b>Málaga</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Málaga'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda"><b>1000 $</b></div>
                        </div>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>PARKING</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='PARKING'}">
                                        <c:if test="${player.token=='Ferrari'}">
                                            <img src="images/coche.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Hamburguesa'}">
                                            <img src="images/hamburguesa.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Avión'}">
                                            <img src="images/avion.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Zapatilla'}">
                                            <img src="images/zapatilla.png" width="20" height="20"/>
                                        </c:if>
                                        <c:if test="${player.token=='Sombrero'}">
                                            <img src="images/sombrero.png" width="20" height="20"/>
                                        </c:if>
                                    </c:if>                                    
                                </c:forEach>
                            </div>
                            <div class="footercelda" style="margin-top: 55px"><b>Recoge todo el dinero</b></div>
                        </div>
                    </td>
                </tr>
            </table>
            
        </center>
    </body>
</html>