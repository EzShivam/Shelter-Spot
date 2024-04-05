<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="Css/index.css" rel="stylesheet" type="text/css">
<link href="Css/head2.css" rel="stylesheet" type="text/css">
<link href="Css/home.css" rel="stylesheet" type="text/css">
<link href="Css/howItWork.css" rel="stylesheet" type="text/css">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body id="homebody" class="homeBody">
<div>
<jsp:include page="/head.jsp"></jsp:include>
</div>
<div class="mainBox">

	<div class="topBox">
			<div id="categBox">
				<ul>
					<li class="categBoxLi" id="head_cat"> Room/House Category</li>
					<li class="categBoxLi"><a class="linkTagCat" href="#room">> 1 Room</a></li>
					<li class="categBoxLi"><a class="linkTagCat" href="#room">> 2 Room</a></li>
					<li class="categBoxLi"><a class="linkTagCat" href="#room">> 1 Rk</a></li>
					<li class="categBoxLi"><a class="linkTagCat" href="#room">> 1 Bhk</a></li>
					<li class="categBoxLi"><a class="linkTagCat" href="#room">> 2 Bhk</a></li>
				</ul>
			
			</div>
			<div id="imageBox">
				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  </ol>
				 
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img id="img1" class="d-block w-100" src="images/first.jpg" alt="First slide">
				    </div>
				    <div class="carousel-item">
				      <img id="img2" class="d-block w-100" src="images/second_1.jpg" alt="Second slide">
				    </div>
				    <div class="carousel-item">
				      <img id="img3" class="d-block w-100" src="images/third.jpg" alt="Third slide">
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
	</div>
		<div class="headingRr"><h1>Rental Rooms</h1></div>
			<div id="vBox1" class="verticalBox">
			  <div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="images/cardImages/roomImg1.jpg" alt="Card image cap">
				  <div class="card-body">
				    <h5 class="card-title">This is one room</h5>
				    <p class="card-text">Price 1200Rs/Month</p>
				    <a href="#" class="btn btn-primary">View Details</a>
				  </div>
			 </div>
	      <div class="card" style="width: 18rem;">
			  <img width="286.4px" height="214.8px" class="card-img-top" src="images/cardImages/roomImg2.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">This is one room</h5>
			    <p class="card-text">Price 1200Rs/Month</p>
			    <a href="#" class="btn btn-primary">View Details</a>
			  </div>
			</div>
	      <div class="card" style="width: 18rem;">
			  <img width="286.4px" height="214.8px" class="card-img-top" src="images/cardImages/roomImg3.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">This is one room</h5>
			    <p class="card-text">Price 1200Rs/Month</p>
			    <a href="#" class="btn btn-primary">View Details</a>
			  </div>
			</div>
	      <div class="card" style="width: 18rem;">
			  <img width="286.4px" height="214.8px" class="card-img-top" src="images/cardImages/roomImg3.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">This is one room</h5>
			    <p class="card-text">Price 1200Rs/Month</p>
			    <a href="#" class="btn btn-primary">View Details</a>
			  </div>
			</div>
    </div>
    <div id="vBox2" class="verticalBox">
	      <div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="images/cardImages/roomImg1.jpg" alt="Card image cap">
				  <div class="card-body">
				    <h5 class="card-title">This is one room</h5>
				    <p class="card-text">Price 1200Rs/Month</p>
				    <a href="#" class="btn btn-primary">View Details</a>
				  </div>
			 </div>
	      <div class="card" style="width: 18rem;">
			  <img width="286.4px" height="214.8px" class="card-img-top" src="images/cardImages/roomImg2.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">This is one room</h5>
			    <p class="card-text">Price 1200Rs/Month</p>
			    <a href="#" class="btn btn-primary">View Details</a>
			  </div>
			</div>
	      <div class="card" style="width: 18rem;">
			  <img width="286.4px" height="214.8px" class="card-img-top" src="images/cardImages/roomImg3.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">This is one room</h5>
			    <p class="card-text">Price 1200Rs/Month</p>
			    <a href="#" class="btn btn-primary">View Details</a>
			  </div>
			</div>
	      <div class="card" style="width: 18rem;">
			  <img width="286.4px" height="214.8px" class="card-img-top" src="images/cardImages/roomImg3.jpg" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">This is one room</h5>
			    <p class="card-text">Price 1200Rs/Month</p>
			    <a href="#" class="btn btn-primary">View Details</a>
			  </div>
			</div>
    </div>
	<div id="cardDiv">
	<h1 class="headhiw">How It Work</h1>
		    <div class="howItWorkDiv">
      <div class="cardHowItWork">
        <div class="chiImg">
          <img src="images/howItWorkImages/propLoc1.jpeg" alt="" />
        </div>
        <div class="chiText">
          <h4 class="chiH4">Find your perfect location</h4>
          <p class="chiP">
            Find your perfect location where you want to stay so you can easily
            go to your working places.
          </p>
        </div>
      </div>
      <div class="cardHowItWork">
        <div class="chiImg">
          <img src="images/howItWorkImages/propSearch1.jpeg" alt="" />
        </div>
        <div class="chiText">
          <h4 class="chiH4">Search property</h4>
          <p class="chiP">
            Search for properties by your price range, so you can process your
            next step.
          </p>
        </div>
      </div>
      <div class="cardHowItWork">
        <div class="chiImg">
          <img src="images/howItWorkImages/contactPropOwner.jpeg" alt="" />
        </div>
        <div class="chiText">
          <h4 class="chiH4">Contact property owner</h4>
          <p class="chiP">
            Deal with property owner and get your house or room.
          </p>
        </div>
      </div>
      <div class="cardHowItWork">
        <div class="chiImg"><img src="images/howItWorkImages/stay1.jpeg" alt="" /></div>
        <div class="chiText">
          <h4 class="chiH4">Go to stay there</h4>
          <p class="chiP">Pack your bag and go to live there.</p>
        </div>
      </div>
    </div>
	</div>
</div>
<div>
<jsp:include page="/foot.jsp"></jsp:include>
</div>
</body>
</html>