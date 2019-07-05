<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Acceuil</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="assets/semantic.min.css">
</head>
<body ng-app="myApp" ng-controller="myCtrl">
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
				

	<!-- Boutton ajout Classe -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<!-- vertical menu -->
				<div class="ui vertical menu" style="margin-left: 1em;">
				  <div data-toggle="collapse" data-target="#tableau" style="cursor: pointer;" class="item">
				  	<h4>Tableau de Bords</h4>
				  <!-- <div class="ui input"><input type="text" placeholder="Search..."></div> -->
				  </div>
				  <div id="tableau" class="collapse">
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
				</div>


			</div>
			<div class="col-sm-6">
				<h2>Annee scolaire:</h2>
				<button class="btn btn-outline-primary btn-config" style="" data-toggle="collapse" data-target="#formulare" data>Nouvelle annee scolaire</button>
				<div class="collapse p-3 collapse-custome" style="" id="formulare">
					<form id="newAS" method="post" action="nouvelleCls" class="form-group">
						<label>Nom*:</label>
						<input type="text" class="form-control" name="nom" ng-model="anneeS" required="true">
						<label>Debut*:</label>
						<input type="date" max="{{periodes.length>0? datify(periodes[0].debut) :fin? datify(fin):''}}"   value="" class="form-control" name="debut" ng-model="debut" required="true">
						<label>Fin*:</label>
						<input  type="date" value=""  min="{{datify(debut)}}" class="form-control" name="fin" ng-model="fin" required="true">
						<!-- <input type="date" value="2013-01-08"> -->
						<!-- <input type="submit" value="valider"/> -->
					</form>
					
					<!-- <table>
					  <tr ng-repeat="x in classes">
					    <td>{{ x.nom }}</td>
					    <td>{{ x.niveau }}</td>
					    <td>{{ x.description }}</td>
					  </tr>
					</table> -->
					<!-- Tabs exemple -->
						<nav>
						  <div class="nav nav-tabs" id="nav-tab" role="tablist">
						    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">
						    	<label>Classe*:</label>
						    </a>
						    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">
						    	<label>Periode*:</label>
						    </a>
						   <!--  <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a> -->
						  </div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
						  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
						  	
							<button style="margin-top: 1em;" data-toggle="modal" data-target="#myModal" class="btn btn-outline-primary btn-config">Nouvelle Classe</button>
							<!-- Tableau classe -->
							 <table ng-if="classes.length>0" class="table table-hover" style="margin-top: 1em;overflow: auto;max-height: 100px;">
							    <thead>
							      <tr>
							        <th>Classe</th>
							        <th>Niveau</th>
							        <th>Description</th>
							        <th></th>
							      </tr>
							    </thead>
							    <tbody style="">
							      <tr ng-repeat="x in classes">
								    <td>	
									    {{ x.nom }}
									    <input form="newAS" type="hidden" value="{{x.nom}}" name="nomClasse">
									</td>
								    <td> 
								    	{{ x.niveau }}
								    	<input form="newAS" type="hidden" value="{{x.niveau}}" name="niveau">
								    </td>
								    <td>
								    	{{ x.description }}
								    	<input form="newAS" type="hidden" value="{{x.description}}" name="description">
								    </td>
								    <td>
								    	<i ng-click="delete($index)" style="cursor: pointer;" class="trash icon"></i>
								    	<i data-toggle="modal" data-target="#myEditModal" class="edit icon" ng-click="edit($index)" style="cursor: pointer;"></i>
								    </td>
								  </tr>
							    </tbody>
							  </table>
							<!-- Tableau classe -->
						  </div>
						  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
						  	<button style="margin-top: 1em;" data-toggle="modal" data-target="#periode" class="btn btn-outline-primary btn-config">Nouvelle periode</button>

						  	<!-- Tableau periode -->
							 <table ng-if="periodes.length>0" class="table table-hover" style="margin-top: 1em;overflow: auto;max-height: 100px;">
							    <thead>
							      <tr>
							        <th>Periode</th>
							        <th>Debut</th>
							        <th>Fin</th>
							        <th></th>
							      </tr>
							    </thead>
							    <tbody style="">
							      <tr ng-repeat="x in periodes">
								    <td>	
									    {{ x.nom }}
									    <input form="newAS" type="hidden" value="{{x.nom}}" name="periodes">
									</td>
								    <td> 
								    	{{ datify(x.debut) }}
								    	<input form="newAS" type="hidden" value="{{datify(x.debut)}}" name="debutperiodes">
								    </td>
								    <td>
								    	{{ datify(x.fin) }}
								    	<input form="newAS" type="hidden" value="{{ datify(x.fin) }}" name="finperiodes">
								    </td>
								    <td>
								    	<i ng-click="deletePeriode($index)" style="cursor: pointer;" class="trash icon"></i>
								    	<i data-toggle="modal" data-target="#Editperiode" class="edit icon" ng-click="editPeriode($index)" style="cursor: pointer;"></i>
								    </td>
								  </tr>
							    </tbody>
							  </table>
							<!-- Tableau periode -->
						  </div>
						 <!--  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div> -->
						</div>
					<!--  Fin Tabs exemple -->
							
					  <div class="modal-footer">

				      	<!-- data-dismiss="modal" -->
				        <input form="newAS" values="Enregistrer"  type="submit" ng-if="classes.length>0 && periodes.length>0 && debut && anneeS && fin " class="btn btn-outline-primary btn-config">
				      </div>
				</div>
			</div>
			<!-- Parties informations -->
			<div class="col-sm-1 col-md-1 col-lg-3">
			


			</div>
		</div>
				
	</div>


<!-- Modal  nouvelle classe-->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-outline-primary btn-config close"  data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form class="form-group">
			<label>Nom*:</label>
			<input type="text" maxlength="15" class="form-control" name="" ng-model="classe.nom">
			<label>Niveau*:</label>
			<!-- <input type="number" min="1" max="12" class="form-control" name=""> -->
			<select class="form-control" name="" ng-model="classe.niveau">
				<option value="1">Maternelle</option>
				<option value="2">Douzieme</option>
				<option value="3">Onzieme</option>
				<option value="4">Dixieme</option>
				<option value="5">Neuvieme</option>
				<option value="6">Huitieme</option>
				<option value="7">Septieme</option>
			</select>
			<label>Description:</label>
			<textarea class="form-control" name="" ng-model="classe.description"></textarea>
		</form>
      </div>
      <div class="modal-footer">

      	<!-- data-dismiss="modal" -->
      	<button type="button" ng-hide="!(!classe.nom || !classe.niveau)" class="btn btn-outline-primary btn-config"  data-dismiss="modal">Terminer</button>
        <button   type="button" ng-hide="!classe.nom || !classe.niveau" class="btn btn-outline-primary btn-config" ng-click="addClasse()" data-dismiss="modal">Ajouter</button>
      </div>
    </div>
  </div>
</div>
<!-- Fin modale nouvelle classe -->

<!-- Modal edition  classe-->
<div id="myEditModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-outline-primary btn-config close"  data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form class="form-group">
			<label>Nom*:</label>
			<input type="text" maxlength="15" class="form-control" name="" ng-model="editclasse.nom">
			<label>Niveau*:</label>
			<!-- <input type="number" min="1" max="12" class="form-control" name=""> -->
			<select class="form-control" name="" ng-model="editclasse.niveau">
				<option value="1">Maternelle</option>
				<option value="2">Douzieme</option>
				<option value="3">Onzieme</option>
				<option value="4">Dixieme</option>
				<option value="5">Neuvieme</option>
				<option value="6">Huitieme</option>
				<option value="7">Septieme</option>
			</select>
			<label>Description:</label>
			<textarea class="form-control" name="" ng-model="editclasse.description"></textarea>
		</form>
      </div>
      <div class="modal-footer">

      	<!-- data-dismiss="modal" -->
      	
        <button   type="button" ng-hide="!editclasse.nom || !editclasse.niveau" class="btn btn-outline-primary btn-config" ng-click="valider()" data-dismiss="modal">Modifier</button>
      </div>
    </div>
  </div>
</div>
<!-- Fin modal edition classe -->


<!-- Modale  nouvelle periode -->
<div id="periode" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-outline-primary btn-config close"  data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form class="form-group">
			<label>Periode*:</label>
			<input type="text" maxlength="30" class="form-control" name="" ng-model="periode.nom">
			<label>Debut*:</label>
			<!-- <input type="number" min="1" max="12" class="form-control" name=""> -->
			<input type="date" min="{{periodes.length>0? datify(periodes[periodes.length-1].fin):datify(debut)}}"  class="form-control" max="{{datify(fin)}}" name="" ng-model="periode.debut">
			<label>Fin*:</label>
			<input type="date" min="{{datify(periode.debut)}}" max="{{datify(fin)}}"  class="form-control" name="" ng-model="periode.fin">
		</form>
      </div>
      <div class="modal-footer">

      	<!-- data-dismiss="modal" -->
      	
        <button   type="button" ng-hide="!periode.nom || !periode.debut ||!periode.fin" class="btn btn-outline-primary btn-config" ng-click="addPeriode()" data-dismiss="modal">Ajouter</button>
      </div>
    </div>
  </div>
</div>
<!-- Fin modal nouvelle periode -->
<!-- Modale edition periode -->
<div id="Editperiode" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn btn-outline-primary btn-config close"  data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form class="form-group">
			<label>Periode*:</label>
			<input type="text" maxlength="30" class="form-control" name="" ng-model="editP.nom">
			<label>Debut*:</label>
			<!-- <input type="number" min="1" max="12" class="form-control" name=""> -->
			<input type="date" min="{{indice>0 ? datify(periodes[indice-1].fin): datify(debut)}}" max="{{indice<periodes.length?datify(periodes[indice].fin): datify(fin)}}"  class="form-control" name="" ng-model="editP.debut">
			<label>Fin*:</label>
			<input type="date" min="{{datify(editP.debut)}}" max="{{indice<periodes.length?datify(periodes[indice+1].debut): datify(fin)}}"  class="form-control" name="" ng-model="editP.fin">
		</form>
      </div>
      <div class="modal-footer">

      	<!-- data-dismiss="modal" -->
      	
        <button   type="button" ng-hide="!editP.nom || !editP.debut ||!editP.fin" class="btn btn-outline-primary btn-config" ng-click="validModif(periodes,editP)" data-dismiss="modal">Modifier</button>
      </div>
    </div>
  </div>
</div>
<!-- fin modale edition periode -->
</body>
<script type="text/javascript" src="js/jquery-1.7.js"></script>
<!-- <script type="text/javascript" src="assets//components/modal.js"></script> -->
<!-- <script type="text/javascript" src="assets/semantic.js"></script> -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/angular.min.js"></script>
<script type="text/javascript">

	function showMenu() {
	   // body...
	   $('.ui.labeled.icon.sidebar')
		  .sidebar('toggle')
		;
	}

	
	/*angular modules*/
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope) {
	    $scope.classes = [

	    ];
	    $scope.periodes = [];
	    $scope.classe ={};
	    $scope.classe.error = false;
	    $scope.addClasse = function() {
	        console.log($scope.classe);
	        
	        console.log($scope.classes)
	        if ($scope.classe.nom && $scope.classe.niveau) {
	        	$scope.classes.push($scope.classe);
	        }
	        else{
	        	$$scope.classe.error =true;
	        }



	        $scope.classe={};
	    };
	    $scope.addPeriode = function() {
	       
	        if ($scope.periode.nom && $scope.periode.debut && $scope.periode.fin) {
	        	$scope.periodes.push($scope.periode);
	        }
	        else{
	        	$$scope.periode.error =true;
	        }



	        $scope.periode={};
	    };
	    $scope.delete = function(i){
	    	// delete $scope.classes[i];
	    	$scope.classes.splice(i, 1);  
	    	console.log($scope.classes)
	    };
	    $scope.deletePeriode = function(i){
	    	// delete $scope.classes[i];
	    	$scope.periodes.splice(i, 1);  
	    	console.log($scope.periodes)
	    };
	    $scope.edit = function(i){
	    	// delete $scope.classes[i];
	    	// $scope.classe=$scope.classes[i]; 
	    	$scope.editclasse= Object.assign({},$scope.classes[i]);
	    	$scope.indice = i;
	    	// $scope.editclasse =x;
	    }
	    $scope.editPeriode = function(i){
	    	// delete $scope.classes[i];
	    	// $scope.classe=$scope.classes[i]; 
	    	$scope.editP = Object.assign({},$scope.periodes[i]);
	    	$scope.indice = i;
	    	// $scope.editclasse =x;
	    }
	    $scope.valider = function(){
	    	$scope.classes[$scope.indice] = Object.assign({},$scope.editclasse);
	    }
	    $scope.validModif = function(periodes,editP){
	    	periodes[$scope.indice] = Object.assign({},editP);
	    }
	    $scope.datify = function(date=new Date()){
			// var dtToday = new Date();
			var dtToday = date;
	    
		    var month = dtToday.getMonth() + 1;
		    var day = dtToday.getDate();
		    var year = dtToday.getFullYear();
		    if(month < 10)
		        month = '0' + month.toString();
		    if(day < 10)
		        day = '0' + day.toString();
		    
		    var maxDate = year + '-' + month + '-' + day;

		    return maxDate;
		}	
	});
</script>
</html>







