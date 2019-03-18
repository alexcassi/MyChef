<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>MyChef-Home</title>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
		<link rel="stylesheet" href="css/stile.css">
		
		
		<style>
	.nav_img:hover {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
		</style>					
	
		
	</head>
	<body class="sfondo">
		<jsp:include page="frammenti/navbar.html"></jsp:include>
		
			<div class="card" style="width: relative; min-width: 800px height: relative; margin: 15px; padding-bottom: 25px; border-style: none">
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col"></th>
				      <th scope="col">Ricette</th>
				      <th scope="col">prezzo (euro)</th>
				      <th scope="col"> </th>
				  	</tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row"></th>
				      <td>Carbonara al nero di seppia</td>
				      <td>20.0 </td>
				      <td>Submit button</td>
				    </tr>
				    <tr>
				      <th scope="row"></th>
				      <td>Rotoli dolci</td>
				      <td>27.0 </td>
				      <td>Submit button</td>
				    </tr>
				    <tr>
				      <th scope="row"></th>
				      <td>Uova quadrate con lenticchie di babilonia (molto rare)</td>
				      <td>80.0</td>
				      <td>Submit button</td>
				    </tr>
				  </tbody>
				</table>
				<br>
				<br>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col"></th>
				      <th scope="col">Ricette selezionate</th>
				      <th scope="col">totale (euro)</th>
				      <th scope="col">data</th>
				      <th scope="col">ora</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<tr>
				      <th scope="row"></th>
				      <td>Carbonara al nero di seppia</td>
				    </tr>
				    <tr>
				      <th scope="row"></th>
				      <td>Rotoli dolci</td>
				    </tr>
				    <tr>
				      <th scope="row"></th>
				      <td>Uova quadrate con lenticchie di babilonia (molto rare)</td>
				    </tr>
				    <tr>
				      <th scope="row"></th>
				      <td></td>
				      <td>127.0</td>
				    </tr>
				</tbody>
			</table>
		</div>
	</body>
</html>