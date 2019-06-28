<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Acceuil</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="assets/semantic.min.css">
</head>
<body style="width: 100%;height: 100%; background:#25dab3; /* #183d5d; url('img/tomvining_aso.jpg') center  center;*/ ">
	<!-- <img src="img/tomvining_aso.jpg"> -->
	<div class="container-fluid align-items-center" style="background: transparent;">
		<div class="row ">
			<div class="col-lg-4"></div>
			<div class="ui inverted segment col-lg-4"  style="background: #00000080;border:solid white 1px; transform:translateY(25vh); animation: ease-in-out 200ms;">
				  <div class="ui inverted form">
				    <div class="two fields">
				      <div class="field">
				        <label>Login</label>
				        <input placeholder="First Name" type="text">
				      </div>
				      <div class="field">
				        <label>Password</label>
				        <input placeholder="Password" type="password">
				      </div>
				    </div>
				    <div class="inline field">
				      <div class="ui submit button">Me connecter</div>
				      <div onclick="showModal()" class="ui submit button">M'inscrire</div>
				      <div class="ui checkbox">
				        <input type="checkbox" tabindex="0" class="hidden">
				        
						 <a href="" class="field"></a>  
						
				      </div>
				    </div>
				   
				  </div>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
	<!-- Modal inscription -->
	<div id="modal" class="ui mini modal">
  <div class="header" style="background:#25dab3; color: white;">Formulaire d'inscription</div>
  <form action="login" method="post" class="ui inverted form">
				      <div class="field">
				        <label>Nom</label>
				        <input name="nom" placeholder="First Name" type="text">
				      </div>
				      <div class="field">
				        <label>Prenom</label>
				        <input name="prenom" placeholder="Last Name" type="text">
				      </div>
				      <div class="field">
				        <label>Mot de passe</label>
				        <input name="password" placeholder="Password" type="password">
				      </div>
				      <div class="field">
				        <label>Mot de passe</label>
				         <select name="role">
				           <option value="directeur">Directeur</option>
				           <option value="comptable">Comptable</option>
				           <option value="prof">Enseignant</option>
				           <option value="secretaire">Secretaire</option>
				         </select>
				      </div>
  
  <div class="actions">
    <button type="submit" class="ui  button">Enregistrer</button>
    <!-- <div class="ui button">Neutral</div>
    <div class="ui cancel button">Cancel</div> --><!-- approve -->
  </div>
  </form>
</div>
</body>
<!-- <script type="text/javascript" src="js/jquery-3-2-1.js"></script> -->
<script type="text/javascript" src="js/jquery-1.7.js"></script>
<!-- <script type="text/javascript" src="assets//components/modal.js"></script> -->
<script type="text/javascript" src="assets/semantic.js"></script>

<script type="text/javascript">
	function showModal() {
		// body...
		console.log("show modal");
		$('#modal')
		  .modal('show')
		;
	}
</script>
</html>