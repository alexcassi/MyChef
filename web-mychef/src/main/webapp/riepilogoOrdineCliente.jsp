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
	<form id="o" name="riepilogoOrdine" method="post"
		action="AggiornaOrdineController">
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
					      <td> <input type=text class="mylist" value="${ordine.conuto_ordine}" disabled style="width: 400px; background-color: white; border-style: none"></td>
					      
					      <td>&nbsp&#8364</td>
					      <td><input type="date" required name="date"></td>
					      <td><input type="time" required name="ora"></td>
					    </tr>
					</tbody>
				</table>
			</div>
				<div class="card" style="text-align: center; width: relative; height: relative; margin: 15px; padding: 15px; border-style: none">
					<div class="btn-group btn-group-toggle" data-toggle="buttons" style=" position: center; display: inline-block;">
					  <label>
					    <input type="text" id="input" required name="comune" value=" ${ordine.comune}" style="width: 173px; margin: 2.4px; margin-left: 0px; background-color: white;">
					  </label>
					  <label>
					    <input type="text" id="input" required name="provincia" value=" ${ordine.provincia}" style="width: 173px; margin: 2.4px; background-color: white;">
					  </label>
					  <label>
					    <input type="text" id="input" required name="indirizzo" value=" ${ordine.indirizzo}" style="width: 173px; margin: 2.4px; margin-right: 0px; background-color: white;">
					  </label>
					</div>

					<div style=" position: center;">
						<textarea id="textarea" rows="3" style="width: 539px; align: center; background-color: white;" placeholder="Note"></textarea>
					</div>
					<div style=" position: center;">
						<textarea id="textarea" disabled rows="3" style="width: 539px; background-color: white; align: center;" placeholder="Nessuna nota"></textarea>
					</div>
					<div style=" position: center;">
						<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Conferma" style="width: 173px; margin: 15px; margin-left: 0px; ">
					</div>
					<input type="hidden" name="chef_email" value="${ chef.email }" />
					<input type="hidden" name="cliente_mail" value="${ cliente.email }" />
					<input type="hidden" name="totale" value="da inserire in sript somma" />
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