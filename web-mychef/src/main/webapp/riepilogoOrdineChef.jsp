<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
		<title>riepilogo ordine</title>
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
					      <td class="mylist" type="text" value="${ ricetta.nome_ricetta }" disabled></td>
					    </tr>
					    <tr>
					      <td class="mylist" type="text" value="${ ricetta.nome_ricetta }" disabled></td>
					    </tr>
					    <tr>
					      <td class="mylist" type="text" value="${ ricetta.nome_ricetta }" disabled></td>
					    </tr>
					    <tr>
					      <td></td>
					      <td>${ ricetta.prezzo }&nbsp;&euro;</td>
					      <td><input type="date" id="date" disable></td>
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
						<textarea id="textarea" rows="3" style="width: 539px;" placeholder="&nbsp;Note" style="align: center;"></textarea>
					</div>
					<div style=" position: center;">
						<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Conferma" style="width: 173px; margin: 15px; margin-left: 0px; ">
					</div>
		</div>
		

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		
			<script src="js/global_scripts.js"></script>
				<jsp:include page="frammenti/footer.html"></jsp:include>
</body>
</html>