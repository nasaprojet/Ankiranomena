<%@ include file="tag_jstl.jsp"
%>
<%
			HttpSession session = request.getSession(false);
			
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> <c:out value="${ title }"/></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
   
  </head>
  <body>
    <div class="page charts-page">
      <!-- Main Navbar-->
      <%@ include file="header.jsp"
		%>
      <div class="page-content d-flex align-items-stretch"> 
        <!-- Side Navbar -->
       
		<%@ include file="menu.jsp"
		%>
	  			             
        <div class="content-inner">
         
			<!--content-->
			 <jsp:include page ="${content}"/>
	          <!-- Page Footer-->
         
         </div>
      </div>
    </div>
    <!-- Javascript files-->
  	<script type="text/javascript" src="js/jquery-1.7.js"></script>
	<!-- <script type="text/javascript" src="assets//components/modal.js"></script> -->
	<script type="text/javascript" src="assets/semantic.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript"></script>
  
  </body>
</html>
