<%@page import="java.util.List"%>
<%@page import="entities.AllCourses"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <% List<AllCourses>list= (List<AllCourses>) request.getAttribute("courcebyid");
    String messages=(String)session.getAttribute("adminMsg");
    if(messages==null) { %><jsp:forward page="adminlogindoubt.jsp"></jsp:forward><%
    }

     
   %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Course Information</title>
    <style>
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

 <%for(AllCourses ac:list) {%>

    <h2>Edit Course Information ID: <%=ac.getId() %></h2>
     <form method="post"   action="http://localhost:8879/sm/update-course-admin">

    	<input type="hidden" name="id" value="<%=ac.getId() %>">
         
         <label for="cname">Course Name:</label>
         <input type="text" id="cname" name="cName" value="<%=ac.getcName() %>" required>
         
         <label for="cdescription">Description:</label>
         <textarea id="cdescription" name="cDescription" required><%= ac.getcDescription()%></textarea>
         
         <label for="cposttime">Post Time:</label>
         <input type="text" id="cPost" name="cPost" value="<%= ac.getcPost()%>" required>
         
         <label for="cinstructor">Instructor:</label>
         <input type="text" id="cinstructor" name="cInstructor" value="<%= ac.getcInstructor() %>" required>
         
         <label for="cexperience">Experience:</label>
         <input type="text" id="cexperience" name="cExperience" value="<%=ac.getcExperience() %>" required>
         
         <label for="instructorinfo">Instructor Info:</label>
         <textarea id="instructorinfo" name="instructorInfo" required><%= ac.getInstructorInfo()%></textarea>
         
         <label for="img">Image Link:</label>
         <input type="text" id="img" name="img" value="<%=ac.getImg() %>" required>
         
         <label for="price">Price:</label>
<input type="number" id="price" name="price" value="<%=ac.getPrice() %>" required oninput="this.value = Math.abs(this.value)">

     
        
         <input type="submit" value="Update Course">
        </form>	
    	
   <%}
    	%>


</body>
</html>
