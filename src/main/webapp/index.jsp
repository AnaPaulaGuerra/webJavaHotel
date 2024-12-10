<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hotel</title>
	<link rel="icon" href="imagens/favicon_hotel.png">
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<div align="center">
		<h1>Hotel Sorna - Reservas</h1>
		<img src="imagens/hotel.jpg"><img src="imagens/hotel1.jpg"><img src="imagens/hotel2.jpg">
		<br><br>
			<form method="POST" action="confirmacao.jsp">
				<label>Check In</label><br>
				<input type="date" name="checkin" required><br><br>
				<label>Check Out</label><br>
				<input type="date" name="checkout" required><br><br>
				<label>Contacto - E-mail</label><br>
				<input type="email" name="email" required><br><br>
				<label>Tipo de quarto</label><br>
					<select name="quarto" required>
						<option value="Simples">Quarto Simples</option>
						<option value="Duplo">Quarto Duplo</option>
						<option value="Suite">Suite</option>
					</select>
				<br><br><br><br>
				<input type="submit" value="Reservar">
				<input type="reset" value="Cancelar">  
			</form>
	</div>
</body>
</html>