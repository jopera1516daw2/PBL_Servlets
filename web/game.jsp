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
         <div id="contenidor" style="display:flex;">
             <div style="text-align: center; position:absolute; float:right; margin:0 auto;">
                 <p>Lista de compras</p><hr>
                <c:forEach items="${game.players}" var="player">
                    <c:if test="${player.token=='Coche'}">
                        <img src="images/coche.png" width="20" height="20"/><br>
                    </c:if>
                    <c:if test="${player.token=='Hamburguesa'}">
                        <img src="images/hamburguesa.png" width="20" height="20"/><br>
                    </c:if>
                    <c:if test="${player.token=='Avión'}">
                        <img src="images/avion.png" width="20" height="20"/><br>
                    </c:if>
                    <c:if test="${player.token=='Zapatilla'}">
                        <img src="images/zapatilla.png" width="20" height="20"/><br>
                    </c:if>
                    <c:if test="${player.token=='Sombrero'}">
                        <img src="images/sombrero.png" width="20" height="20"/><br>
                    </c:if>    
                    
                    <c:forEach items="${player.comprados}" var="comprado">
                    <font style="font-size: 12px;">${comprado.name} - ${comprado.price} $</font><br>
                    </c:forEach>
                    <br><hr>
                </c:forEach>
            </div>
            <table style="margin:0 auto;">
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>START</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='START'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>+ 800 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#B43104;"><b>Sabadell</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Sabadell'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>175 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#B43104;"><b>Santander</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Santander'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>200 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA1'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>- 200 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#01DFA5;"><b>Albacete</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Albacete'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>250 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#01DFA5;"><b>Melilla</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Melilla'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>325 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#FE642E;"><b>Vigo</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Vigo'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>400 $</b></footer>
                    </td>
                   <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>CÁRCEL</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='CÁRCEL'}">
                                        <c:if test="${player.token=='Coche'}">
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
                       <footer class="footercelda" style="position:absolute; margin-left: 20px;"><b>3 turnos</b></footer>
                    </td>                
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#2E2EFE;"><b>Madrid</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Cádiz'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>2200 $</b></footer>
                    </td>
                    <td colspan="6">
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
                        </div> 
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#FE642E;"><b>Pamplona</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Pamplona'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>450 $</b></footer>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#2E2EFE;"><b>Barcelona</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Barcelona'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>2000 $</b></footer>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#3ADF00;"><b>Alicante</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Alicante'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>600 $</b></footer>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#9A2EFE;"><b>Sevilla</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Sevilla'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1650 $</b></footer>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#3ADF00;"><b>Elche</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Elche'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>635 $</b></footer>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#9A2EFE;"><b>Valencia</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Valencia'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1500 $</b></footer>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA2'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>- 400 $</b></footer>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>MULTA</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='MULTA4'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>- 800 $</b></footer>
                    </td>
                    <td></td><td></td>
                    <td colspan="2">
                        <div style="display:flex;">
                            <c:if test="${game.tirada==1}">
                                <img src="images/1.png" style="margin: 0 auto; width: 50px; height: 50px;"/>
                            </c:if>
                            <c:if test="${game.tirada==2}">
                                <img src="images/2.png" style="margin: 0 auto; width: 50px; height: 50px;"/>
                            </c:if>
                            <c:if test="${game.tirada==3}">
                                <img src="images/3.png" style="margin: 0 auto; width: 50px; height: 50px;"/>
                            </c:if>
                            <c:if test="${game.tirada==4}">
                                <img src="images/4.png" style="margin: 0 auto; width: 50px; height: 50px;"/>
                            </c:if>
                            <c:if test="${game.tirada==5}">
                                <img src="images/5.png" style="margin: 0 auto; width: 50px; height: 50px;"/>
                            </c:if>
                            <c:if test="${game.tirada==6}">
                                <img src="images/6.png" style="margin: 0 auto; width: 50px; height: 50px;"/>
                            </c:if> 
                        </div>
                    </td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#FE2E2E;"><b>Badajoz</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Badajoz'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>700 $</b></footer>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#848484;"><b>Bilbao</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Bilbao'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1400 $</b></footer>
                    </td>
                    <td></td><td></td>
                    <td colspan="2">
                        <div style="display:flex">
                            <a style="margin: 0 auto; cursor:pointer;" href="/PBL_Servlets/index.jsp"><input type="button" style="font-size: 15px; cursor:pointer;" value="Reiniciar Juego"</a>
                        </div>
                    </td><td></td><td></td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#FE2E2E;"><b>Cádiz</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Cádiz'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>800 $</b></footer>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:red;"><b>VE A LA CÁRCEL</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='VE A LA CÁRCEL'}">
                                        <c:if test="${player.token=='Coche'}">
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
                            <div class="titulocelda" style="background-color:#848484;"><b>Gran Canaria</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Gran Canaria'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1350 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#FE2EF7;"><b>Málaga</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Málaga'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1300 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#FE2EF7;"><b>Mallorca</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Mallorca'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1125 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>SUERTE</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='SUERTE'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left:7px;"><b>+ 500/1500 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#F7FE2E;"><b>Gijón</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Gijón'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>1000 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="background-color:#F7FE2E;"><b>Ceuta</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='Ceuta'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 25px;"><b>925 $</b></footer>
                    </td>
                    <td>
                        <div class="box">
                            <div class="titulocelda" style="color:green;"><b>PARKING</b></div>
                            <div id="pos">
                                <c:forEach items="${game.players}" var="player">
                                    <c:if test="${player.location.name=='PARKING'}">
                                        <c:if test="${player.token=='Coche'}">
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
                        <footer class="footercelda" style="position:absolute; margin-left: 0px;"><b>+ todo el dinero</b></footer>
                    </td>
                </tr>
         </div>
    </body>
</html>