<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/services.css">
    <link href="Css/head2.css" rel="stylesheet" type="text/css">
	<link href="Css/head.css" rel="stylesheet" type="text/css">
	
    <title>Services</title>
</head>

<body>
   <div class="regHead">
   		<jsp:include page="/head.jsp"></jsp:include>
   </div>

    <div id="sed" class="servicesDiv">
        <section class="services">
            <a class="servicesLink" href="milkman-service.jsp">
                <div class="service">
                    <img src="images/services/milkman.png" height="200px" width="220px" alt="Milkman">
                    <div class="service-content">
                        <h2>Milkman</h2>
                        <p>Experience the convenience of having fresh and wholesome milk delivered to your doorstep with
                            our dedicated Milkman service. Our local dairy partners provide high-quality, locally
                            sourced milk, ensuring that you and your family enjoy the nutritional benefits of farm-fresh
                            dairy products.</p>
                    </div>
                </div>
            </a>

            <a class="servicesLink" href="water-supplier-service.jsp">
                <div class="service">
                    <img src="images/services/water-supplier.png" height="200px" width="220px" alt="Water Supplier">
                    <div class="service-content">
                        <h2>Water Supplier</h2>
                        <p>Ensure a steady supply of clean and pure water for your home with our reliable Water Supplier
                            service. We source high-quality, purified water and deliver it straight to your doorstep.
                            Our
                            service is designed to provide you with the convenience and peace of mind of having access
                            to
                            safe and refreshing drinking water.</p>
                    </div>
                </div>
            </a>

            <a class="servicesLink" href="electrician-service.jsp">
            <div class="service">
                <img src="images/services/electrician.png" alt="Water Supplier">
                <div class="service-content">
                    <h2>Electrician</h2>
                    <p>Ensure the safety and efficiency of your electrical systems with our expert Electrician service.
                        Our skilled electricians are ready to handle a wide range of electrical tasks, from
                        installations and repairs to troubleshooting and maintenance. Whether you need assistance with
                        wiring, lighting, or electrical upgrades, we've got you covered.</p>
                </div>
            </div>
            </a>
            <a class="servicesLink" href="plumber-service.jsp">
                <div class="service">
                    <img src="images/services/plumber.png" alt="Plumber">
                    <div class="service-content">
                        <h2>Plumber</h2>
                        <p>Experience hassle-free plumbing services with our skilled and reliable plumbers. Whether
                            you're
                            dealing with a leaky faucet, clogged drains, or need assistance with plumbing installations,
                            our
                            team is here to help. We prioritize prompt and efficient solutions, ensuring that your
                            plumbing
                            issues are resolved quickly, so you can enjoy a well-functioning and leak-free home. Trust
                            us
                            for all your plumbing needs!</p>
                    </div>
                </div>
            </a>


            <a class="servicesLink" href="food-maker-service.jsp">
                <div class="service">
                    <img src="images/services/food-maker.png" alt="Food Maker">
                    <div class="service-content">
                        <h2>Food Maker</h2>
                        <p>Indulge in the delight of freshly prepared meals with our Food Maker service. Our skilled
                            chefs
                            craft delicious and nutritious dishes right in your home, offering a convenient and
                            personalized
                            culinary experience. From daily meals to special occasions, we tailor our menus to your
                            preferences. Enjoy restaurant-quality food without leaving the comfort of your home. Elevate
                            your dining experience with our Food Maker service!</p>
                    </div>
                </div>
            </a>

            <a class="servicesLink" href="house-cleaner-service.jsp">
                <div class="service">
                    <img src="images/services/house-cleaner.png" height="200px" width="220px" alt="House Cleaner">
                    <div class="service-content">
                        <h2>House Cleaner</h2>
                        <p>Relax in a sparkling clean home with our professional House Cleaner service. Our dedicated
                            cleaning team is committed to providing thorough and efficient cleaning solutions tailored
                            to
                            your needs. From regular maintenance to deep cleaning sessions, we take care of every
                            corner,
                            ensuring a fresh and inviting living space. Enjoy more free time and a pristine home
                            environment
                            by entrusting your cleaning needs to our reliable House Cleaner service.</p>
                    </div>
                </div>
            </a>


        </section>
    </div>
<div class="footInclude">
		<jsp:include page="/foot.jsp"></jsp:include>
	</div>
    
</body>

</html>