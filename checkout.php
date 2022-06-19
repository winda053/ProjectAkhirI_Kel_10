<?php

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Koperasi IT Del</title>
    <meta name=description constent="">
    <meta name=viewport constent="width=divece-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css"/>
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
				<a href="#" class="navbar-brand">Koperasi IT Del</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="index.php"><span class="glyphicon glyphicon-modal-window"></span>Product</a></li>
				<li><a href="contactus.php"><span class="glyphicon glyphicon-inbox"></span> Contact Us</a></li>
			</ul>
		</div>
	</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="cart_msg">
                        <!-- form start -->
			</div>
				<div class="col-md-2"></div>
			</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
				<div class="panel-heading">Cart Checkout</div>
					<div class="panel-body">
          <div class="container">
            <div class="row">
						<div class="col-md-10">
							<label for="name">Name</label>
							<input type="text" id="name" name="name" class="form-control" required>
						</div>
            </div>  
					  <div class="row">
						  <div class="col-md-10">
							<label for="email">Email</label>
							<input type="text" id="email" name="email"class="form-control" required>
						</div>
			</div>
						<div class="row">
							<div class="col-md-10">
							<label for="address">Asrama</label>
							<input type="text" id="address" name="address"class="form-control" required>
						</div>
            </div>
				<div class="row">
					<div class="box-body">
                	  <label for="exampleInputFile">File input</label><h style="color:Tomato;">*</h><small> .jpg .jpeg .png</small>
                  	<input type="file" name="foto" id="exampleInputFile">
                	</div>
                </div>
            	<input type="hidden" name="noWa" value=0882015554177>
			<div><a type="submit" name="submit" class="btn btn-primary">Send</a></div>
            </div>
          </form>
        </div>
     </section>