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
</body>
<script type="text/javascript" src="js/jquery-1.7.js"></script>
<!-- <script type="text/javascript" src="assets//components/modal.js"></script> -->
<script type="text/javascript" src="assets/semantic.js"></script>
<script type="text/javascript">
	function showMenu() {
	   // body...
	   $('.ui.labeled.icon.sidebar')
		  .sidebar('toggle')
		;
	}
</script>
</html>