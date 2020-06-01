<%-- 
    Document   : Veterinaria
    Created on : 18-may-2020, 21:15:56
    Author     : marcolopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
import ="java.sql.Connection"        
import ="java.sql.DriverManager"        
import ="java.sql.ResultSet"        
import ="java.sql.Statement"        
import ="java.sql.SQLException"        
        
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diarios</title>
    </head>
    <body>
         <header>
			<nav id="navegacion">
				<ul>
                                        <li><a href="index.html">Inicio</a></li>
					<li><a href="diarios.jsp">Diario</a></li>
					<li><a href="formulario.html">Nuevo Texto</a></li>
					

				</ul>
			</nav>
		</header>	
        <br>
        <br>
        <br>
        <h1>Hello World!</h1>
        
      <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conex = (Connection)DriverManager.getConnection("jdbc:mysql://127.0.0.1/Diarios?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","mmjjvdb178");
            Statement sql = conex.createStatement();
            
            String qry = "select * from Calificacion";
            ResultSet data = sql.executeQuery(qry);
            
            while(data.next()){
                
                out.print(data.getInt("id"));
                
                out.print(data.getInt("calificacion"));
            }
            
            data.close();
      %>
      
      <br>
	<footer id="piePagina">
		<h4>Contacto:</h4>
		<p>Redes sociales</p>
		<a href="https://twitter.com/oracle_mx">Twitter |</a>
		<a href="https://www.facebook.com/oraclelatinoamerica/">Facebook</a>
		<br><br>
		
				<p>Descargas</p>
				<a href="https://dev.mysql.com/downloads/workbench/">iTunes |</a>
				<a href="https://dev.mysql.com/downloads/mysql/"> Goggle Play</a>
	</footer>	
    </body>
    
</html>
