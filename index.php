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
		<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
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
	<main id="main">
	<section id="about" class="d-flex text-center  bg-primary text-light about">
      <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
        <div class="row justify-content-center">
			<br>
          <h2>Apa itu Koperasi IT Del ?</h2>
		  <br>
          <h4 class="text-center">Koperasi IT Del adalah usaha jual beli yang menjual kebutuhan bagi Staff, Dosen, maupun Mahasiswa. 
			Kebutuhan yang dimaksud adalah penyediaan makanan dan minuman ringan, alat mandi, alat tulis dan alat kantor, dll. 
			Dan Koperasi IT Del membantu mahasiswa memenuhi kebutuhan nya, seperti kebutuhan sehari hari. Terutama
			Mahasiswa yang tinggal di luar komplek IT Del </h4>
          </div>
          <div class="d-flex align-items-center">
		  <br><br>
		  <h3>Contoh Produk Yang ada di Koperasi IT Del:</h3>
		  <div class="d-block text-center">
          <div class = "mb-3 mx-5">
              <img style="height:150px;" class="rounded" src="product_images/1655122633_1654567709_nescafe1.jpg">
              <img style="height:150px;" class="rounded" src="product_images/1655122464_1654426949_siip1.jpg">
              <img style="height:150px;" class="rounded" src="product_images/1655122116_1654166911_1653976965_beng1.jpg">
          </div>
		  <br>
	<section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Lokasi:</h4>
                <p>Jl. Napitupulu I, Sitoluama, Kec. Laguboti, Toba, Sumatera Utara</p>
              </div>
              <div class="email">
			  <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>koperasiitdel@example.com</p>
              </div>
              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>No WhatsApp:</h4>
                <p>+62854395454</p>
              </div>
            </div>
          </div>
        </div>
      </div>
  </section>
  
</body>
</html>