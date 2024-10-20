<%@page import="entities.AllCourses"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% List<AllCourses> list = (List<AllCourses>) request.getAttribute("listCource"); 

 String message=(String)session.getAttribute("msg");
 
 String messages=(String)session.getAttribute("adminMsg");
  if(messages==null) { %><jsp:forward page="adminlogindoubt.jsp"></jsp:forward><%
  }

   
 %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Information || Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            overflow-x: auto;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .truncate {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .btn-container {
            text-align: center;
        }
        .btn {
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            color: #fff;
            display: inline-block;
            margin: 5px;
            transition: background-color 0.3s;
        }
        .btn-edit {
            background-color: #007bff;
        }
        .btn-add-solution {
            background-color: #28a745;
        }
        @media only screen and (max-width: 768px) {
            .btn-container {
                text-align: left;
            }
            .btn {
                display: block;
                margin-bottom: 5px;
            }
        }
    </style>
</head>
<body>
    <h1 style="color: blue; text-transform: uppercase; text-align: center;">Course Information Admin Panel</h1>
    <%if(message!=null) {%>
    <h3 style="color: red;"><%=message %></h3>	
    
  <%}
	%>
    <table>
        <tr>
            <th>ID</th>
            <th>Course Name</th>
            <th>Description</th>
            <th>Post Time</th>
            <th>Instructor</th>
            <th>Experience</th>
            <th>Instructor Info</th>
            <th>Image</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
    <% for (AllCourses ac : list) { %>
        <tr>
            <td><%= ac.getId() %></td>
            <td class="truncate"><%= ac.getcName() %></td>
            <td class="truncate">description</td>
            <td><%= ac.getcPost().toString() %></td>
            <td><%= ac.getcInstructor() %></td>
            <td><%= ac.getcExperience() %></td>
            <td><%= ac.getInstructorInfo() %></td>
            <td><img src="<%= ac.getImg() %>" alt="Course Image" style="max-width: 100px;"></td>
            <td><%= ac.getPrice() %></td>
            <td class="btn-container">
                <a href="edit-cource-admin/<%=ac.getId() %>" class="btn btn-edit">Edit</a>
                <a href="delete-course/<%= ac.getId() %>" class="btn btn-edit">Delete</a>
                
            </td>
        </tr>
    <% } %>
    </table>
</body>
</html>
