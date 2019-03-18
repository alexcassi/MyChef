<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>ordini</title>
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
.titoli {
	color: #FF6A00;
}
			#submit {
			  background-color: #FF6A00; /* colore di sfondo    */
			  border: 2px solid #FF6A00; /* bordo dell'elemento */
			  color: white;               /* colore del testo    */
			  font-weight: bold;         /* testo in grassetto  */
			  -moz-border-radius: 20px;
			  -webkit-border-radius: 20px;
			  border-radius:20px;
			}
			
		</style>					
		
	</head>
	<body class="sfondo">
		<jsp:include page="frammenti/navbar.html"></jsp:include>
		
			<div class="card" style="width: relative; min-width: 800px height: relative; margin: 15px; padding: 15px; border-style: none">
				<table class="table">
				  <thead>
				    <tr class="titoli">
				      <th scope="col">&nbsp;</th>
				      <th scope="col">Ricette</th>
				      <th scope="col">prezzo</th>
				      <th scope="col">&nbsp;</th>
				  	</tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row"><input type="checkbox" value=""></th>
				      <td>Carbonara al nero di seppia</td>
				      <td>20.0 &euro;</td>
				      
				    </tr>
				    <tr>
				      <th scope="row"><input type="checkbox" value=""></th>
				      <td>Rotoli dolci</td>
				      <td>27.0 &euro;</td>
				     
				    </tr>
				    <tr>
				      <th scope="row"><input type="checkbox" value=""></th>
				      <td>Uova quadrate con lenticchie di babilonia (molto rare)</td>
				      <td>80.0 &euro;</td>
				      
				    </tr>
				  </tbody>
				</table>
				</div>
			<div class="card" style="width: relative; min-width: 800px height: relative; margin: 15px; padding: 15px; border-style: none">
				<table class="table">
				  <thead>
				    <tr class="titoli">
				      <th scope="col">ID</th>
				      <th scope="col" style="color: #FF6A00">Ricette selezionate</th>
				      <th scope="col" style="color: #FF6A00">totale</th>
				      <th scope="col" style="color: #FF6A00">data</th>
				      <th scope="col" style="color: #FF6A00">ora</th>
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
					      <td>127.0 &euro;</td>
					      <td><input type="date" id="date"></td>
					      <td><input type="time" id="time"></td>
					    </tr>
					</tbody>
				</table>
			</div>
			<div class="card" style="width: relative; min-width: 800px height: relative; margin: 15px; padding: 15px; border-style: none">
					<div style="position: center;">
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
					  <label>
					    <input type="text" id="input" placeholder="Comune" style="width: 173px; margin: 5px; margin-left: 0px;">
					  </label>
					  <label>
					    <input type="text" id="input" placeholder="Provincia" style="width: 173px; margin: 5px">
					  </label>
					  <label>
					    <input type="text" id="input" placeholder="Indirizzo" style="width: 173px; margin: 5px; margin-right: 0px">
					  </label>
					</div>
					<textarea id="textarea" rows="3" style="width: 539px;">Note</textarea>
					</div>
					<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Conferma" style="width: 173px; margin: 5px">
			</div>
	</body>
</html>