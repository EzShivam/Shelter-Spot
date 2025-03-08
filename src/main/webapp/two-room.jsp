<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="Css/room.css" />
	<link href="Css/head2.css" rel="stylesheet" type="text/css">
	<link href="Css/head.css" rel="stylesheet" type="text/css">
	<link href="Css/footer.css" rel="stylesheet" type="text/css">
	<link href="Css/footRoom.css" rel="stylesheet" type="text/css">
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
</head>
<body>
<div class="headRoom">
  <jsp:include page="/head.jsp"></jsp:include>
  </div>
  <div class="cotentRoom">
    	<div class="topBox">
      <div id="categBox">
        <ul>
          <li class="categBoxLi" id="head_cat">Room/House Category</li>
          <li class="categBoxLi">
            <a class="linkTagCat" href="room.jsp">> 1 Room</a>
          </li>
          <li class="categBoxLi">
            <a class="linkTagCat activetworoom" href="two-room.jsp">> 2 Room</a>
          </li>
          <li class="categBoxLi">
            <a class="linkTagCat" href="one-rk-rooms.jsp">> 1 Rk</a>
          </li>
          <li class="categBoxLi">
            <a class="linkTagCat" href="one-bhk.jsp">> 1 Bhk</a>
          </li>
          <li class="categBoxLi">
            <a class="linkTagCat" href="two-bhk.jsp">> 2 Bhk</a>
          </li>
        </ul>
      </div>
    </div>

    <div class="prop">
      <div class="slid">
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                id="img1"
                class="d-block w-100"
                src="images/property/prop1img1.jpg"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img2"
                class="d-block w-100"
                src="images/property/prop1img2.jpg"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img3"
                class="d-block w-100"
                src="images/property/prop1img3.jpg"
                alt="Third slide"
              />
            </div>
           
            
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="contentDiv">
        <div class="cdiv1">
          <h3 class="addresstxt">Abhyudaya Hostel</h3>
          <p class="proptypetxt">2 rooms in abyhudaya hostel</p>
        </div>
        <div class="cDivp">
          <p class="txtprice">price--</p>
          <p class="price">5000rs</p>
        </div>
        <div class="cDivNear">
          <b class="txtNearby">Nearby :</b>
          <p class="nearP1">IIB Center</p>
          <p class="nearP2">Sham Nagar</p>
        </div>
        <div><p>Looking for dream home?</p></div>
        <div class="wonerDet">
          <div class="wonersubdiv">
            <h5 class="txtWoner">Woner</h5>
            <p class="wonerName">John Doe</p>
          </div>
    	  <div class="btnViewNumber"><a href="viewContactDetails">View Number</a></div>
        </div>
      </div>
    </div>
     <div class="prop">
      <div class="slid">
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                id="img1"
                class="d-block w-100"
                src="images/property/prop1img1.jpg"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img2"
                class="d-block w-100"
                src="images/property/prop1img2.jpg"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img3"
                class="d-block w-100"
                src="images/property/prop1img3.jpg"
                alt="Third slide"
              />
            </div>
           
            
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="contentDiv">
        <div class="cdiv1">
          <h3 class="addresstxt">Siddharth Boys Hostel</h3>
          <p class="proptypetxt">2 rooms at siddharth boys hostel</p>
        </div>
        <div class="cDivp">
          <p class="txtprice">price--</p>
          <p class="price">4000rs</p>
        </div>
        <div class="cDivNear">
          <b class="txtNearby">Nearby :</b>
          <p class="nearP1">Yeshwant College</p>
          <p class="nearP2">Government Polytechnic College </p>
        </div>
        <div><p>Looking for dream home?</p></div>
        <div class="wonerDet">
          <div class="wonersubdiv">
            <h5 class="txtWoner">Woner</h5>
            <p class="wonerName">Sharda Patil</p>
          </div>
    	  <div class="btnViewNumber"><a href="viewContactDetails">View Number</a></div>
        </div>
      </div>
    </div>
     <div class="prop">
      <div class="slid">
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                id="img1"
                class="d-block w-100"
                src="images/property/prop1img1.jpg"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img2"
                class="d-block w-100"
                src="images/property/prop1img2.jpg"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img3"
                class="d-block w-100"
                src="images/property/prop1img3.jpg"
                alt="Third slide"
              />
            </div>
           
            
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="contentDiv">
        <div class="cdiv1">
          <h3 class="addresstxt">Natty Estates</h3>
          <p class="proptypetxt">2 rooms at natty estates</p>
        </div>
        <div class="cDivp">
          <p class="txtprice">price--</p>
          <p class="price">6000rs</p>
        </div>
        <div class="cDivNear">
          <b class="txtNearby">Nearby :</b>
          <p class="nearP1">Delhi Public School</p>
          <p class="nearP2">Angad Restro</p>
        </div>
        <div><p>Looking for dream home?</p></div>
        <div class="wonerDet">
          <div class="wonersubdiv">
            <h5 class="txtWoner">Woner</h5>
            <p class="wonerName">Sharma Alok</p>
          </div>
    	  <div class="btnViewNumber"><a href="viewContactDetails">View Number</a></div>
        </div>
      </div>
    </div>
     <div class="prop">
      <div class="slid">
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                id="img1"
                class="d-block w-100"
                src="images/property/prop1img1.jpg"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img2"
                class="d-block w-100"
                src="images/property/prop1img2.jpg"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img3"
                class="d-block w-100"
                src="images/property/prop1img3.jpg"
                alt="Third slide"
              />
            </div>
           
            
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="contentDiv">
        <div class="cdiv1">
          <h3 class="addresstxt">Girdhar Niwas</h3>
          <p class="proptypetxt">2 rooms at girdhar niwas</p>
        </div>
        <div class="cDivp">
          <p class="txtprice">price--</p>
          <p class="price">4000rs</p>
        </div>
        <div class="cDivNear">
          <b class="txtNearby">Nearby :</b>
          <p class="nearP1">Tilak Nehru hospital</p>
          <p class="nearP2">Sathe Square</p>
        </div>
        <div><p>Looking for dream home?</p></div>
        <div class="wonerDet">
          <div class="wonersubdiv">
            <h5 class="txtWoner">Woner</h5>
            <p class="wonerName">Aparna Girdhar</p>
          </div>
    	  <div class="btnViewNumber"><a href="viewContactDetails">View Number</a></div>
        </div>
      </div>
    </div>
     <div class="prop">
      <div class="slid">
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                id="img1"
                class="d-block w-100"
                src="images/property/prop1img1.jpg"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img2"
                class="d-block w-100"
                src="images/property/prop1img2.jpg"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img3"
                class="d-block w-100"
                src="images/property/prop1img3.jpg"
                alt="Third slide"
              />
            </div>
           
            
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next--</span>
          </a>
        </div>
      </div>
      <div class="contentDiv">
        <div class="cdiv1">
          <h3 class="addresstxt">Shivay Complex </h3>
          <p class="proptypetxt">2 Rooms at shivay complex</p>
        </div>
        <div class="cDivp">
          <p class="txtprice">price</p>
          <p class="price">5000rs</p>
        </div>
        <div class="cDivNear">
          <b class="txtNearby">Nearby :</b>
          <p class="nearP1">Hotel Tulsi Comfort</p>
          <p class="nearP2">Anand nagar road</p>
        </div>
        <div><p>Looking for dream home?</p></div>
        <div class="wonerDet">
          <div class="wonersubdiv">
            <h5 class="txtWoner">Woner</h5>
            <p class="wonerName">Rajkumar Verma</p>
          </div>
    	  <div class="btnViewNumber"><a href="viewContactDetails">View Number</a></div>
        </div>
      </div>
    </div>
     <div class="prop">
      <div class="slid">
        <div
          id="carouselExampleIndicators"
          class="carousel slide"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                id="img1"
                class="d-block w-100"
                src="images/property/prop1img1.jpg"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img2"
                class="d-block w-100"
                src="images/property/prop1img2.jpg"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                id="img3"
                class="d-block w-100"
                src="images/property/prop1img3.jpg"
                alt="Third slide"
              />
            </div>
           
            
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="contentDiv">
        <div class="cdiv1">
          <h3 class="addresstxt">Manju Palace</h3>
          <p class="proptypetxt">2 Rooms at manju palace</p>
        </div>
        <div class="cDivp">
          <p class="txtprice">price--</p>
          <p class="price">6500rs</p>
        </div>
        <div class="cDivNear">
          <b class="txtNearby">Nearby :</b>
          <p class="nearP1">Deogiri College</p>
          <p class="nearP2">M G Road</p>
        </div>
        <div><p>Looking for dream home?</p></div>
        <div class="wonerDet">
          <div class="wonersubdiv">
            <h5 class="txtWoner">Woner</h5>
            <p class="wonerName">Ashoka Associates</p>
          </div>
    	  <div class="btnViewNumber"><a href="viewContactDetails">View Number</a></div>
        </div>
      </div>
    </div>
    
    
    </div>
    <div class="footRoom"><jsp:include page="/foot.jsp"></jsp:include></div>
 


</body>
</html>