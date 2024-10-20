<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
String message=(String)session.getAttribute("adminMsg");
 if(message==null) { %><jsp:forward page="adminlogindoubt.jsp"></jsp:forward><%
 }

  
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Course Registration Form</title>
    <!-- Add any additional CSS styling here -->
    <style>
        /* Add your CSS styles here */
        /* Example style for form layout */
        .form-container {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="text"], .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Post Course</h2>
        <form method="post" action="post-course-by-admin">
           
            <div class="form-group">
                <label for="cname">Course Name:</label>
                <input type="text" id="cname" name="cName" required>
            </div>
            <div class="form-group">
                <label for="cdescription">Course Description:</label>
                <textarea id="cdescription" name="cDescription" rows="4" required></textarea>
            </div>
            
            <div class="form-group">
                <label for="cinstructor">Instructor Name:</label>
                <input type="text" id="cinstructor" name="cInstructor" required>
            </div>
            <div class="form-group">
                <label for="cexperiance">Instructor Experience:</label>
                <input type="text" id="cexperience" name="cExperience" required>
            </div>
            <div class="form-group">
                <label for="instructorinfo">Instructor Info:</label>
                <textarea id="instructorinfo" name="instructorInfo" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="img">Image Link:</label>
                <input type="text" id="img" name="img" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" id="price" name="price" required>
            </div>
          
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</body>
</html>
