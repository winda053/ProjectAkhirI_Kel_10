<?php
require "config/constants.php";
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Koperasi IT Del</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style></style>
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="index.php" class="navbar-brand">Koperasi IT Del</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span> Beranda</a></li>
				<li><a href="produk.php"><span class="glyphicon glyphicon-modal-window"></span> Products</a></li>
				<li><a href="contactus.php"><span class="glyphicon glyphicon-inbox"></span> Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Login/Register</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Login</div>
								<div class="panel-heading">
									<form onsubmit="return false" id="login">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" required/>
										<label for="email">Password</label>
										<input type="password" class="form-control" name="password" id="password" required/>
										<p><br/></p>
										<input type="submit" class="btn btn-warning" value="Login">
										<a href="customer_registration.php?register=1" style="color:white; text-decoration:none;">Create Account Now</a>
									</form>
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<br><br>
<h2></h2>
<div class="d-block text-center">
	<img src="product_images/contact.jpg" style="width:1150px; height:250px; border:1px ; " class="rounded">
	<br />
	<br />
	<form method="post">
		<table style="position:relative; left:25%;">
			<tr>
				<td style="font-size:20px;">Nama:</td><td><input type="name" name="name" style="width:400px;"></td>
			</tr>
			<tr>
				<td style="font-size:20px;">No WhatsApp:</td><td><input type="mobile" name="mobile" style="width:400px;"></td>
			</tr>
			<tr>
				<td style="font-size:20px;">Message:</td><td><textarea name="message" style="width:400px; height:300px;" required></textarea></td>
			</tr>
			<tr>
				<td></td><td><button class="btn btn-info" name="send" style="width:300px;"><i class="icon icon-ok icon-white"></i>Submit</button>&nbsp;<a href="index.php"><button class="btn btn-danger" style="width:110px;"><i class="icon icon-remove icon-white"></i>Cancel</button></a></td>
			</tr>
		</table> 
	</form> 
</div>
</body>
</html>
