<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Property</title>
    <link rel="stylesheet" href="Css/addproperty.css">
</head>

<body>
    <div class="container">
        <h2>Add Property</h2>
        <form id="propertyForm" action="addPropertyServlet" method="post">
            <div class="form-group">
                <label for="propertyName">Property Name:</label>
                <input type="text" id="propertyName" name="propertyName" required>
            </div>
            <div class="form-group">
                <label for="propertyType">Property Type:</label>
                <select id="propertyType" name="propertyType" required>
                    <option value="">Select Property Type</option>
                    <option value="Single Room">Single Room</option>
                    <option value="House">House</option>
                    <option value="Apartment">Apartment</option>
                    <option value="1RK">1RK</option>
                    <option value="1BHK">1BHK</option>
                    <option value="2BHK">2BHK</option>
                </select>
            </div>
            <div class="form-group">
                <label for="propertyPrice">Property Price:</label>
                <input type="number" id="propertyPrice" name="propertyPrice" required>
            </div>
            <div class="form-group">
                <label for="propertyDescription">Property Description:</label>
                <textarea id="propertyDescription" name="propertyDescription" rows="4" required></textarea>
            </div>
            <button type="submit">Add Property</button>
        </form>
    </div>
</body>

</html>