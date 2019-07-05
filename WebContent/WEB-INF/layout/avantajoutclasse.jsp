<%@ include file="tag_jstl.jsp"%>

<%
			HttpSession session = request.getSession(false);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="assets/semantic.min.css">
	
</head>
<body>


		<div class="card">
					<div class="card-header">
						<h3 class="card-title">Annees Scolaires</h3>
					</div>
					<table id="dataTable" class="table table-bordered table-striped">
							<thead>
								<tr>
<!-- 									<th>Nom EC</th> -->
									<th>Annees</th>
									<th>Date debut</th>
									<th>Date fin</th>
									<th>Description</th>
									<th></th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="classe" items="${classes}">
									<tr>


										<td>${classe.nom_as}</td>
										<td>${classe.debut}</td>
										<td>${classe.fin}</td>
										<td>${classe.description_as}</td>
										<td>
											<div class="row">
												<div class="col-md-4">
													
<%-- 													    <input value="${classe.id_annee_scolaire}" name="id_annee_scolaire" type="hidden"> --%>
<!-- 														<input type="submit" class="btn btn-primary" value="AjoutClasse"/> -->
													
<%-- 														<button type="submit" name="id_annee_scolaire" value="${classe.id_annee_scolaire}" class="btn btn-primary" data-toggle="modal" --%>
<%-- 														data-target="#classeAajouter_${classe.id_annee_scolaire}">Ajoutez maintenant</button> --%>
														
														<div class="inline field">
														    <div onclick="showModal()" class="ui submit button">Ajoutez maintenant</div>
													        <div class="ui checkbox">
													        <input type="checkbox" tabindex="0" class="hidden">
														</div>
												</div>
												
											</div>
										</td>	
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>Annees</th>
									<th>Date debut</th>
									<th>Date fin</th>
									<th>Description</th>
									<th></th>
									
								</tr>
							</tfoot>
						</table>
	</div>
	
	
	
<!-- 	<div class="modal fade" id="ajoutAS" tabindex="-1" role="dialog"> -->
<!-- 		<div class="modal-dialog" role="document" > -->
<!-- 			<form method="post" action="classeAjoutee"> -->
				
				
	
<!-- 				<div class="modal-content"> -->
<!-- 					<div class="modal-header"> -->
<!-- 						<h3 class="modal-title"></h3> -->
<!-- 						<button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
<!-- 							<span aria-hidden="true">&times;</span> -->
<!-- 						</button> -->
<!-- 					</div> -->
<!-- 					<div class="modal-body"> -->
					
					
										
<!-- 											<label for="nom_classe">Classe:</label> -->
<!-- 											<div class="input-group"> -->
<!-- 												<div class="input-group-addon"> -->
													
<!-- 												</div> -->
<!-- 												<input id="nom_classe" name="nom_classe"  -->
<!-- 													class="form-control" type="text" /> -->
<!-- 											</div> -->
										
										
										
<!-- 											<label for="niveau">Niveau:</label> -->
<!-- 											<div class="input-group"> -->
<!-- 												<div class="input-group-addon"> -->
													
<!-- 												</div> -->
<!-- 												<input id="niveau" name="niveau"  -->
<!-- 													class="form-control" type="text" /> -->
<!-- 											</div> -->
										
											
						
										
										
<!-- 											<label for="description">Decription:</label> -->
<!-- 											<div class="input-group"> -->
<!-- 												<div class="input-group-addon"> -->
													
<!-- 												</div> -->
<!-- 												<input id="description" name="description"  -->
<!-- 													class="form-control" type="text" /> -->
<!-- 											</div> -->
										
										
<!-- 					</div> -->
<!-- 					<div class="modal-footer"> -->
<!-- 						<input type="submit" class="btn btn-primary" value="Ajouter" /> -->
<!-- 						<button class="btn btn-secondary" data-dismiss="modal">Fermer</button> -->
<!-- 					</div> -->
<!-- 				</div>  -->
<!-- 			</form> -->
<!-- 		</div> -->
<!-- </div> -->


<c:forEach var="classe" items="${classes}">

<div id="modal" class="ui mini modal">
  <div class="header" style="background:#25dab3; color: white;">Formulaire d'inscription</div>
  <form action="apresajoutclasse" method="post" class="ui inverted form">
  

<%-- <div class="modal fade" id="classeAajouter_${classe.id_annee_scolaire}" tabindex="-1" role="dialog"> --%>
<!-- 	<div class="modal-dialog" role="document" > -->
		<form method="post" action="apresajoutclasse">
			<input type="hidden" name="id_annee_scolaire"
					value="${classe.id_annee_scolaire}" />
			
			
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					<h3 class="modal-title">Classification de Classe par AnneeScolaire</h3> -->
<!-- 					<button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
<!-- 						<span aria-hidden="true">&times;</span> -->
<!-- 					</button> -->
<!-- 				</div> -->
<!-- 				<div class="modal-body"> -->

					  <label for="nom_classe_ajoute">Classe</label>
					  <div class="field">
				        <input id="nom_classe_ajoute" name="nom_classe_ajoute" class="form-control" placeholder="Classe" type="text">
				      </div>
				      
				      <label for="niveau_ajoute">Niveau</label>
				      <div class="field">
				        <input id="niveau_ajoute" name="niveau_ajoute" class="form-control" placeholder="Niveau" type="text">
				      </div>
				      
				      <label for="description_ajoute">Description</label>
				      <div class="field">
				        <input id="description_ajoute" name="description_ajoute" class="form-control" placeholder="Description" type="password">
				      </div>
				
				
									
<!-- 										<label for="nom_classe_ajoute">Classe:</label> -->
<!-- 										<div class="input-group"> -->
<!-- 											<div class="input-group-addon"> -->
												
<!-- 											</div> -->
<!-- 											<input id="nom_classe_ajoute" name="nom_classe_ajoute"  -->
<!-- 												class="form-control" type="text" /> -->
<!-- 										</div> -->
									
									
									
<!-- 										<label for="niveau_ajoute">Niveau:</label> -->
<!-- 										<div class="input-group"> -->
<!-- 											<div class="input-group-addon"> -->
												
<!-- 											</div> -->
<!-- 											<input id="niveau_ajoute" name="niveau_ajoute"  -->
<!-- 												class="form-control" type="text" /> -->
<!-- 										</div> -->
									
									
									
<!-- 										<label for="description_ajoute">Description:</label> -->
<!-- 										<div class="input-group"> -->
<!-- 											<div class="input-group-addon"> -->
												
<!-- 											</div> -->
<!-- 											<input id="description_ajoute" name="description_ajoute"  -->
<!-- 												class="form-control" type="text" /> -->
<!-- 										</div> -->
									
									
																		
		
				
					<input type="submit" class="btn btn-primary" value="Modifier" />
					<button class="btn btn-secondary" data-dismiss="modal">Fermer</button>
				
			</div> 
		</form>
	</div>
</div>
</c:forEach>


<!-- <div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true"> -->
<!--   <div class="modal-dialog"> -->
<!--     <div class="modal-content"> -->
<!--       <div class="modal-header"> -->
<!--         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
<!--         <h4 class="modal-title" id="myModalLabel">Basic Modal</h4> -->
<!--       </div> -->
<!--       <div class="modal-body"> -->
<!--         <h3>Modal Body</h3> -->
<!--       </div> -->
<!--       <div class="modal-footer"> -->
<!--         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!--         <button type="button" class="btn btn-primary">Save changes</button> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->

	
	
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

</body>
</html>