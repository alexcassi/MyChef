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
	<form id="l" name="riepilogoOrdineChef" method="post"
		action="RispostaOrdineController">
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
				  		  <td> <input type=text class="mylist" value="${ordine.contenuto_ordine}" disabled style="width: 400px; background-color: white; border-style: none"></td>
					      <td>&euro;&nbsp;${ordine.totale}</td>
					      <td><input type="date" id="date" disabled style=" border-style: none; background-color: white;"></td>
					      <td><input type="time" id="time" disabled style=" border-style: none; background-color: white;"></td>
					    </tr>
					</tbody>
				</table>
			</div>
				<div class="card" style="text-align: center; width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
					<div class="btn-group btn-group-toggle" data-toggle="buttons" style=" position: center; display: inline-block;">
					  <label>
					    <input type="text" id="input" name="comune" disabled value=" ${ordine.comune}" style="width: 173px; margin: 2.4px; margin-left: 0px; background-color: white; border-style: none;">
					  </label>
					  <label>
					    <input type="text" id="input" name="provincia" disabled value=" ${ordine.provincia}" style="width: 173px; margin: 2.4px; background-color: white; border-style: none;">
					  </label>
					  <label>
					    <input type="text" id="input" name="indirizzo" disabled value=" ${ordine.indirizzo}" style="width: 173px; margin: 2.4px; margin-right: 0px; background-color: white; border-style: none;">
					  </label>
					</div>

					<div style=" position: center;">
					<p style="color: #FF6A00;">Note del cliente</p>
						<textarea id="textarea" disabled rows="3" style="width: 539px; background-color: white; align: center;" placeholder="Nessuna nota"></textarea>
					</div>
					<div style=" position: center;">
					<p style="color: #FF6A00;">Note dello Chef</p>
						<textarea id="textarea" rows="3" style="width: 539px; background-color: white; align: center;" placeholder=" Note"></textarea>
					</div>
					<div style=" position: center;">
						<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Conferma" style="width: 173px; margin: 15px; margin-left: 0px; ">
					</div>
					<input type="hidden" name="totale" value="${ordine.id}" />
		</div>
		</form>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		
			<script src="js/global_scripts.js"></script>
				<jsp:include page="frammenti/footer.html"></jsp:include>
</body>
</html>