<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height:100%;">
	<head>
		<link rel="shortcut icon" type="image/png" href="immagini/M.png"/>
			<meta charset="ISO-8859-1">
		<title>Login MyChef</title>
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
			
			
			#submit {
			  background-color: #FF6A00; /* colore di sfondo    */
			  border: 2px solid #FF6A00; /* bordo dell'elemento */
			  color: white;               /* colore del testo    */
			  font-weight: bold;         /* testo in grassetto  */
			  -moz-border-radius: 20px;
			  -webkit-border-radius: 20px;
			  border-radius:20px;
			}
			
			body::after{ content:''; display:block; height:100px; }
			
				</style>
		
	</head>
	<body class="sfondo" style="min-height:100%; padding:0; margin:0; position:relative;">
		<jsp:include page="frammenti/navbar.html"></jsp:include>
			<br>
		
			<p style="
		    text-align: center;
		    font-size: xx-large;
		    font-weight: bold;
		    color: #ff6a00;">LOGIN
		    </p>
		
			<div class="w-50 p-3 card " style="background-color: #eee; text-align:center; position: relative; left: 25%">
				<form name="login" method="post" action="LoginController">
					<div style="color: #FF0000;">${errorMessage}</div>
						<input class="form-control form-control-lg" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Inserire un indirizzo email valido!' : '');" placeholder="Email"name="email" autocomplete="on" required/>
						<input class="form-control form-control-lg" type="password" placeholder="Password" name="password" required/>
					<div style="padding-top:16px;">
						<input id ="submit" type="submit" class="btn btn btn-outline-success" value="Clicca per accedere">
					</div>
				</form>
				<br>
				<p style="text-align: center; margin-bottom: 0px">
					<b>Non sei ancora registrato?<a href="signup.jsp" style="color: #FF6A00">&nbspFallo ora!</a>
					</b>
				</p>
			</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		
			<script src="js/global_scripts.js"></script>
			
	
	</body>
	<jsp:include page="frammenti/footer.html"></jsp:include>
</html>