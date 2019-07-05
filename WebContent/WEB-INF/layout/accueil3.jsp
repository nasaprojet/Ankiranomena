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
	
	<script>
	function myFunction() {
    document.getElementById("demo").innerHTML = "Paragraph changed.";
	}
	</script>
	
</head>
<body>
	<!-- horeizontal menu -->
	<div class="ui secondary  menu"  style="background: #25dab3;">
		  
	  <div class="item">
	      <div class="ui icon input">
	        <input type="text" placeholder="Search...">
	        <i class="search link icon"></i>
	      </div>
	  </div>
	  <div class="right menu">
	    <a onclick="showMenu()" class="active item">
		    <i class="setting icon"></i>
		  </a>
		  <a class="item">
		    <i class="envelope icon"></i>
		  </a>
		  <a class="item">
		    <i class="users icon"></i>
		</a>
	    <div class="ui item">
			  <div class="ui inline dropdown">
			    <div class="text">
			      <img class="ui avatar image" src="img/avatar.png">
			      Jenny Hess
			    </div>
			    <i class="dropdown icon"></i>
			    <div class="menu">
			      <div class="item">
			        <img class="ui avatar image" src="/images/avatar/small/jenny.jpg">
			        Jenny Hess
			      </div>
			      <div class="item">
			        <img class="ui avatar image" src="/images/avatar/small/elliot.jpg">
			        Elliot Fu
			      </div>
			      <div class="item">
			        <img class="ui avatar image" src="/images/avatar/small/stevie.jpg">
			        Stevie Feliciano
			      </div>
			      <div class="item">
			        <img class="ui avatar image" src="/images/avatar/small/christian.jpg">
			        Christian
			      </div>
			      <div class="item">
			        <img class="ui avatar image" src="/images/avatar/small/matt.jpg">
			        Matt
			      </div>
			      <div class="item">
			        <img class="ui avatar image" src="/images/avatar/small/justen.jpg">
			        Justen Kitsune
			      </div>
			    </div>
			  </div>
			
	    </div>
	  </div>
	</div>

	<!-- hidden menu -->
	<div class="ui left demo vertical inverted sidebar labeled icon menu">
	  <a class="item">
	    <i class="home icon"></i>
	    Home
	  </a>
	  <a class="item">
	    <i class="block layout icon"></i>
	    Topics
	  </a>
	  <a class="item">
	    <i class="smile icon"></i>
	    Friends
	  </a>
	</div>
	<!-- vertical menu -->
	<div class="ui vertical menu" style="margin-left: 1em;">
	  <div class="item">
	  	<h4>Tableau de Bords</h4>
	    <!-- <div class="ui input"><input type="text" placeholder="Search..."></div> -->
	  </div>
	  <div class="item">
	    Home
	    <div class="menu">
	      <a class="active item">Search</a>
	      <a class="item">Add</a>
	      <a class="item">Remove</a>
	    </div>
	  </div>
	  <a class="item">
	    <i class="grid layout icon"></i> Browse
	  </a>
	  <a class="item">
	    Messages
	  </a>
	  <div class="ui dropdown item">
	    More
	    <i class="dropdown icon"></i>
	    <div class="menu">
	      <a class="item"><i class="edit icon"></i> Edit Profile</a>
	      <a class="item"><i class="globe icon"></i> Choose Language</a>
	      <a class="item"><i class="settings icon"></i> Account Settings</a>
	    </div>
	  </div>
	</div>
	
	<!-- content -->
	<div class="container-fluid">
		<div class="row" style="border:black solid 1px; min-heigth:500px;">
			<div class="col-sm-4 mycard" style="border:black solid 1px; min-heigth:200px;">
			   bleu
			</div>
			<div class="col-sm-4" style="border:black solid 1px; min-heigth:200px;">
			
			</div>
			<div class="col-sm-4" style="border:black solid 1px; min-heigth:200px;">
			
			</div>
		</div>
	</div>
	
	<p id="demo">A Paragraph</p>

<button type="button" onclick="myFunction()">Try it</button>
	
	<!-- Debut modal -->
<!-- 	<form action="login" method="post" class="ui inverted form"> -->
  
<!--   					  <div class="field"> -->
<!-- 				        <label>Nom</label> -->
<!-- 				        <input name="nom" placeholder=" Name" type="text"> -->
<!-- 				      </div> -->
<!-- 				      <div class="field"> -->
<!-- 				        <label>Niveau</label> -->
<!-- 				        <input name="niveau" placeholder="Niveau" type="text"> -->
<!-- 				      </div> -->
<!-- 				      <div class="field"> -->
<!-- 				        <label>id AS</label> -->
<!-- 				        <input name="id_as" placeholder="id_as" type="text"> -->
<!-- 				     </div> -->
				     
<!-- 				      <div class="field"> -->
<!-- 				        <label>Description</label> -->
<!-- 				        <input name="description" placeholder="description" type="text"> -->
<!-- 				     </div> -->
  
<!-- 				      <div class="field"> -->
<!-- 				        <label>Nom</label> -->
<!-- 				        <input name="nom" placeholder="First Name" type="text"> -->
<!-- 				      </div> -->
<!-- 				      <div class="field"> -->
<!-- 				        <label>Prenom</label> -->
<!-- 				        <input name="prenom" placeholder="Last Name" type="text"> -->
<!-- 				      </div> -->
<!-- 				      <div class="field"> -->
<!-- 				        <label>Mot de passe</label> -->
<!-- 				        <input name="password" placeholder="Password" type="password"> -->
<!-- 				      </div> -->
<!-- 				      <div class="field"> -->
<!-- 				        <label>Mot de passe</label> -->
<!-- 				         <select name="role"> -->
<!-- 				           <option value="directeur">Directeur</option> -->
<!-- 				           <option value="comptable">Comptable</option> -->
<!-- 				           <option value="prof">Enseignant</option> -->
<!-- 				           <option value="secretaire">Secretaire</option> -->
<!-- 				         </select> -->
<!-- 				      </div> -->
  
<!--   <div class="actions"> -->
<!--     <button type="submit" class="ui  button">Enregistrer</button> -->
    <!-- <div class="ui button">Neutral</div>
    <div class="ui cancel button">Cancel</div> --><!-- approve -->
<!-- Debut -->
  
  <div class="container-fluid"> 
  	<div class="row">
  	  <div class="col-md-10">
	   <div class="card">
	       
			
		    <form method="post" action="accueil">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Annnee Scolaire</h5>
							</div>
							<div class="modal-body">
								
								
										<label for="nom_annee_scolaire">Annee Scolaire:</label>
										<div class="input-group">
											
											<input id="nom_annee_scolaire" name="nom_annee_scolaire" placeholder="Nom ..."
												class="form-control" type="text" />
										</div>
		
										<label for="debut">Debut:</label>
										<div class="input-group">
											
											<input id="debut" name="debut" placeholder="jj/mm/annee"
												class="form-control" type="text" />
										</div>
										
										<label for="fin">Fin:</label>
										<div class="input-group">
											
											<input id="fin" name="fin" placeholder="jj/mm/annee"
												class="form-control" type="text" />
										</div>
										
										<label for="description_annee_scolaire">Description:</label>
										<div class="input-group">
											
											<input id="description_annee_scolaire" name="description_annee_scolaire" placeholder="Description"
												class="form-control" type="text" />
										</div>
										
<!-- 										<hr> -->
										
<!-- 										<label for="nom_classe">Nom classe:</label> -->
<!-- 										<div class="input-group"> -->
											
<!-- 											<input id="nom_classe" name="nom_classe" placeholder="Nom de classe" -->
<!-- 												class="form-control" type="text" /> -->
<!-- 										</div> -->
<!-- 										<label for="niveau">Niveau:</label> -->
<!-- 										<div class="input-group"> -->
											
<!-- 											<input id="niveau" name="niveau" placeholder="Niveau" -->
<!-- 												class="form-control" type="text" /> -->
<!-- 										</div> -->
<!-- 										<label for="description_classes">Description:</label> -->
<!-- 										<div class="input-group"> -->
											
<!-- 											<input id="description_classe" name="description_classe" placeholder="Description" -->
<!-- 												class="form-control" type="text" /> -->
<!-- 										</div> -->
		
		
							</div>
							<div class="modal-footer">
								<input type="submit" class="btn btn-primary" value="Ajouter" />
								
							</div>
						
					</form>
				</div>
			</div>
	   </div>
	</div>
    </div>
  
  
	<!-- Fin -->
</body>
<script type="text/javascript" src="js/jquery-1.7.js"></script>
<!-- <script type="text/javascript" src="assets//components/modal.js"></script> -->
<script type="text/javascript" src="assets/semantic.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">
	function showMenu() {
	   // body...
	   $('.ui.labeled.icon.sidebar')
		  .sidebar('toggle')
		;
	}
</script>
</html>