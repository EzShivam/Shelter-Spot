<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Image Upload Preview</title>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="Css/addimages.css">
</head>

<body>
    <div class="container">
        <h2>Add Images</h2>
        <form action="addImagesServlet" method="post" enctype="multipart/form-data">
            <% String propertyId=(String)request.getAttribute("propertyId"); %>
                <input type="hidden" name="propertyId" value="<%= propertyId %>">

                <div class="file-upload">
                    <input type="file" name="imageFiles" id="file-input" accept="image/png, image/jpeg"
                        onchange="preview()" multiple required>
                    <label for="file-input">
                        <i class="fas fa-upload"></i> &nbsp; Choose A Photo
                    </label>
                </div>
                <p id="num-of-files">No Files Chosen</p>
                <div id="images" class="image-preview"></div>

                <div class="submit-button">
                    <button type="submit">Upload Images</button>
                </div>
        </form>
    </div>
    <!-- Script -->
    <script src="js/script.js"></script>
</body>

</html>