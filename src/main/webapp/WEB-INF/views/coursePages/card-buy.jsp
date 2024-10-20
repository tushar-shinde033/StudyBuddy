<%@page import="java.util.List"%>
<%@page import="entities.AllCourses"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% List<AllCourses> allCourses=(List<AllCourses>) session.getAttribute("cource"); 
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation</title>
    <style>
        /* Basic styling for the card */
        .card {
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin: 20px auto;
            background-color: #f9f9f9;
            justify-content: center;
            align-items: center;
            text-align:center;
        }
        /* Styling for the confirmation button */
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        /* Styling for the confirmation button when hovered */
        .btn:hover {
            background-color: #45a049;
        }
        .card img{
        width:21vw;
        height:25vh;
        }
    </style>
</head>
<body>
<%  for(AllCourses allCourses2: allCourses) {%>
<div class="card">
        <!-- Content of the card -->
        <h2>Course Name:<%=allCourses2.getcName() %></h2>
        <img alt="courseimg" src="<%=allCourses2.getImg()%>">
        <p>About Course:<%=allCourses2.getcDescription() %></p>
        <p>Trainer Name:<%=allCourses2.getcInstructor() %></p>
        <p>Price: <b><%=allCourses2.getPrice() %></b></p>  
        <!-- Confirmation button -->
       
       <a href="confirm-buy"> <button  class="btn" >Confirm</button></a>
    </div>
<%
}
%>
   
</body>
</html>
