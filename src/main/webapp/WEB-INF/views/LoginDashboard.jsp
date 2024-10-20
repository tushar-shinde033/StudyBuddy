
<%@page import="entities.TotalQuestionStatus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page errorPage="error.jsp" %>
<%
String message=(String)session.getAttribute("adminMsg");
String msgAdmin=(String)session.getAttribute("Msg");
System.out.print(msgAdmin);
 if(message==null) { %><jsp:forward page="adminlogindoubt.jsp"></jsp:forward><%
 }

  
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-top: 0;
            color: #333;
        }

        .stats {
            margin-bottom: 20px;
        }

        .stats p {
            margin: 5px 0;
        }

        .btn {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .logout-btn {
            background-color: #ff6347;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .logout-btn:hover {
            background-color: #ff473d;
        }
    </style>
</head>
<body>

    <div class="container">
    
    <% if(msgAdmin!=null) {%>
    	<p style=" color: red;"><strong><%=msgAdmin %></strong></p> 
    	<% session.removeAttribute("Msg");
    	
   } %>
 
    <h1>Welcome back admin...!</h1>
        <h2>Admin Dashboard</h2>
        <div class="stats">
            <p>Total Questions Posted: <strong><%out.println(request.getAttribute("totalPostedQuestion"));%></strong></p>
            <p>Total Answers Pending: <strong><%out.println(request.getAttribute("totalPendingAnswerPosted")); %></strong></p>
             <p>Total Answers Posted: <strong><%out.println(request.getAttribute("totalPostedAnswer")); %></strong></p> 
        </div>
        <a href="admin-view-all-doubts-solution" class="btn btn-sm bg-danger text-white">View Doubts</a>
          <a href="view-all-cources-admin" class="btn btn-sm bg-danger text-white">View Courses</a>
          <a href="post-course" class="btn btn-sm bg-danger text-white">Add Course</a>
        <a href="logout"><button class="logout-btn">Logout</button></a>
    </div>
</body>
</html>