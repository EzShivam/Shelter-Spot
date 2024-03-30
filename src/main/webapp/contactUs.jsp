<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/contactUs.css">
    <title>Contact Us</title>
</head>

<body>
<jsp:include page="/head.jsp"></jsp:include>

    <div class="contact-container">
        <div class="info">
            <div class="img">
                <img src="images/contactUs/instant-support.png" height="60px" width="60px" alt="instant-support">
            </div>
            <h2>Instant Support</h2>
            <p>Shelter Spot is committed to offering the best user experience. If you are facing any roadblocks, our
                support team
                will get back to you instantly.</p>
        </div>

        <div class="info">
            <div class="img">
                <img src="images/contactUs/availability.png" height="60px" width="60px" alt="twenty-four-seven">
            </div>
            <h2>24/7 Availability</h2>
            <p>Shelter Spot' support team is available around the clock to assist you. Simply email us at
                <b>help@shelterspot.com</b> or call us at <b>+91-9021745858</b>

            </p>
        </div>

        <div class="info">
            <div class="img">
                <img src="images/contactUs/quality-assurance.png" height="60px" width="60px" alt="quality-assurance">
            </div>
            <h2>Quality Assurance</h2>
            <p>Our commitment to delivering top-notch service. With 99.99% uptime, we ensure our customers get to
                utilize our services uninterrupted.</p>
        </div>

        <div class="query-form">
            <h2>Query Form</h2>
            <form>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>

                <label for="enquiry-type">Type of Enquiry:</label>
                <select id="enquiry-type" name="enquiry-type" required>
                    <option value="general">General Enquiry</option>
                    <option value="support">Support Request</option>
                    <option value="feedback">Feedback</option>
                </select>

                <button type="submit">Submit</button>
            </form>
        </div>
        <div class="footInclude">
<jsp:include page="/foot.jsp"></jsp:include>
</div>
        
    </div>

</body>

</html>    