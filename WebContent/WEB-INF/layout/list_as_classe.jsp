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
								<c:forEach var="as" items="${anneeScolaires}">
									<tr>


										<td>${as.nom_as}</td>
										<td>${as.debut}</td>
										<td>${as.fin}</td>
										<td>${as.description_as}</td>
										<td>
											<div class="row">
												<div class="col-md-4">
													<form method="post" action="add_class">
													    <input value="${as.id_annee_scolaire}" name="id_annee_scolaire" type="hidden">
														<input type="submit" class="btn btn-danger" value="Add Class"/>
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
	
	<script type="text/javascript" src="js/jquery-1.7.js"></script>
<!-- <script type="text/javascript" src="assets//components/modal.js"></script> -->
  <script type="text/javascript" src="assets/semantic.js"></script>

</body>
</html>