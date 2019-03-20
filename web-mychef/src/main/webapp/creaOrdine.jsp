<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="height:100%;">
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>ordine</title>
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

body::after{ content:''; display:block; height:100px; }


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
			.number {
				width: 30px;
				display:inline-block;
				margin-left: 5px;
				border-style: none;
			}
			

		</style>					
		
	</head>
	<body class="sfondo" style="min-height:100%; padding:0; margin:0; position:relative;">
		<jsp:include page="frammenti/navbar.html"></jsp:include>
		
			<!--<div class="card" style="width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
			  <h4 style="text-align: left; color: #FF6A00;">Selezionare le ricetta desiderate e quante porzioni si desiderano</h4> idea, provvisorio 
			</div> -->
			<div class="card" style="width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
				<table class="table" style="width: relative;">
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
				      <th scope="row"><input type="checkbox" value="">
				      <input class="number" type="number" value="" style="; "></th> <!-- la cella del numero c'è, ma non ha bordo -->
				      <td>Carbonara al nero di seppia</td>
				      <td>20.0 &euro;</td>
				      
				    </tr>
				    <tr>
				      <th scope="row"><input type="checkbox" value="">
				      <input class="number" type="number" value=""></th>
				      <td>Rotoli dolci</td>
				      <td>27.0 &euro;</td>
				     
				    </tr>
				    <tr>
				      <th scope="row"><input type="checkbox" value="">
				      <input class="number" type="number" value=""></th>
				      <td>Uova quadrate con lenticchie di babilonia (molto rare)</td>
				      <td>80.0 &euro;</td>
				      
				    </tr>
				  </tbody>
				</table>
				</div>
			

		

					<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

	<script src="js/global_scripts.js"></script>
						<jsp:include page="frammenti/footer.html"></jsp:include>
	</body>
</html>