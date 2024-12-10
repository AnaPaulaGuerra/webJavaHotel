<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.text.*" %> <!-- Importar bibliotecas -->
<%@page import="java.sql.*" %>
<%@page import="ligarbd.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmação</title>
    <link rel="icon" href="imagens/favicon_hotel.png">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div align="center" style="bold">
        <h1>Hotel Sorna</h1>
        
        <%
            // Obter a data atual e formatá-la
            Calendar c = Calendar.getInstance();
        	java.util.Date data = c.getTime();
            SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
            String dataFormatada = formatoData.format(data);
        %>
        
        <h5><%= dataFormatada %></h5><!-- Exibir a data de hoje -->
        <h4>Reserva adicionada</h4>

        <%
            // Obter dados do formulário
            String checkin = request.getParameter("checkin");
            String checkout = request.getParameter("checkout");
            String email = request.getParameter("email");
            String quarto = request.getParameter("quarto");

            // Verificar o tipo de quarto
            if ("Simples".equals(quarto)) {
                quarto = "Simples";
            } else if ("Duplo".equals(quarto)) {
                quarto = "Duplo";
            } else {
                quarto = "Suite";
            }

            // Exibir os detalhes da reserva
            out.println("<b>Checkin: " + checkin + "</b>");
            out.println("<b><br><br>Checkout: " + checkout + "</b>");
            out.println("<b><br><br>Contacto: " + email + "</b>");
            out.println("<b><br><br>Tipo de quarto: " + quarto + "</b>");
            
            try{
	  			Connection cn=ligacaomysql.criarligacao();
	  			Statement st=cn.createStatement();
	  			st.executeUpdate("insert into hotelsorna (checkin,checkout,email,quarto)"+
	  					"values('"+checkin+"', '"+checkout+"', '"+email+"', '"+quarto+"')");
	  			out.println("<br><h1>Reserva efectuada.</br>");
	  			cn.close();
	  		}
	  		catch(SQLException e) {
	  			out.println("<br><h1>Erro ao registar a reserva.</br>");
	  		}
	  		
        %>
        
        <br><br><br><br>
        <button onclick="window.location.href='index.jsp'">Voltar</button>
        <button onclick="window.location.href='listagem.jsp'">Listagem de reservas</button>
        
    </div>
</body>
</html>
