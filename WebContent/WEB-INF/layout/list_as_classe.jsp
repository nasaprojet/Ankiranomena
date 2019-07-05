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
								<c:forEach var="classV" items="${classevue}">
									<tr>


										<td>${classV.nom_as}</td>
										<td>${classV.debut}</td>
										<td>${classV.fin}</td>
										<td>${classV.description_as}</td>
										<td>
											<div class="row">
												<div class="col-md-4">
													<form method="post" action="ajoutClasse">
													    <input value="${classV.id_annee_scolaire}" name="id_annee_scolaire" type="hidden">
														<input type="submit" class="btn btn-primary" value="AjoutClasse"/>
													</form>
													
												</div>
												
												<div class="col-md-4">
													
													<form method="post" action="liste_classe">
													    <input value="${classV.id_annee_scolaire}" name="id_annee_scolaire" type="hidden">
														<input type="submit" class="btn btn-success" value="ListeClasse"/>
													</form>
												</div>
												
												<div class="col-md-4">
													
													<form method="post" action="suppr_anneescolaire">
													    <input value="${classV.id_annee_scolaire}" name="id_annee_scolaire" type="hidden">
														<input type="submit" class="btn btn-danger" value="Supprimer"/>
													</form>
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



