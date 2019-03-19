<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>riepilogo</title>
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
	<div class="card" style="width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
				<table class="table">
				  <thead>
				    <tr class="titoli">
				      
				      <th scope="col" style="color: #FF6A00">Ricette selezionate</th>
				      <th scope="col" style="color: #FF6A00">totale</th>
				      <th scope="col" style="color: #FF6A00">data</th>
				      <th scope="col" style="color: #FF6A00;">ora</th>
				    </tr>
				  </thead>
				  <tbody>
					  	<tr>
					      <td>Carbonara al nero di seppia</td>
					    </tr>
					    <tr>
					      <td>Rotoli dolci</td>
					    </tr>
					    <tr>
					      <td>Uova quadrate con lenticchie di babilonia (molto rare)</td>
					    </tr>
					    <tr>
					      <td></td>
					      <td>&nbsp; &nbsp; &nbsp; &euro;</td>
					      <td><input type="date" id="date"></td>
					      <td><input type="time" id="time"></td>
					    </tr>
					</tbody>
				</table>
			</div>
				<div class="card" style="text-align: center; width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
					<div class="btn-group btn-group-toggle" data-toggle="buttons" style=" position: center; display: inline-block;">
					  <label>
					    <input type="text" id="input" placeholder="&nbsp;Comune" style="width: 173px; margin: 2.4px; margin-left: 0px;">
					  </label>
					  <label>
					    <input type="text" id="input" placeholder="&nbsp;Provincia" style="width: 173px; margin: 2.4px;">
					  </label>
					  <label>
					    <input type="text" id="input" placeholder="&nbsp;Indirizzo" style="width: 173px; margin: 2.4px; margin-right: 0px;">
					  </label>
					</div>

					<div style=" position: center;">
						<textarea id="textarea" rows="3" style="width: 539px;" placeholder="&nbsp;Note" style="align: center;"></textarea>
						</div>
					<div style=" position: center;">
						<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Conferma" style="width: 173px; margin: 15px; margin-left: 0px; ">
					</div>
		</div>
				<jsp:include page="frammenti/footer.html"></jsp:include>
</body>
</html>