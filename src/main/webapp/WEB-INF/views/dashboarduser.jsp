<%@page import="entities.AllCourses"%>
<%@page import="entities.SmSignUp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    SmSignUp data = (SmSignUp) session.getAttribute("data");
 List<AllCourses> list=(List<AllCourses>) session.getAttribute("cource");
 System.out.print(list);
     if(data==null) {%>
    <jsp:forward page="/login-sm"></jsp:forward> 
     <%}%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        /* Basic CSS styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .dashboard {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .profile {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .profile img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-right: 20px;
        }

        .profile-info {
            flex-grow: 1;
        }

        .courses {
            margin-top: 20px;
        }

        .course {
            background-color: #fff;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .logout-btn {
            margin-top: 20px;
            background-color: #ff4d4d;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #e60000;
        }
    </style>
</head>
<body>
 <div class="container">
        <div class="dashboard">
            <div class="profile">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhmsLNKvHCGfEIVp_EHilrMquqemRKtV7m5CT4CqXPxg&s" alt="Profile Picture">
                <div class="profile-info">
                    <h2>ID: <%=data.getId() %></h2> 
                    <h2>Full Name:<%=data.getFname()+" "+data.getLname() %> </h2>
                    <p>Email: <%=data.getEmail() %></p>
                    <p>Number: <%=data.getMob() %>
                    <p>Register date:<%=data.getCreatedAt() %>
                </div>
            </div>
            
            <%if(list==null){%>
            	<div class="courses">
                <h3>No Purchased Courses</h3>	
            	
           <% } else{%>
           
             <% for(AllCourses ac:list) {%>

          	   <div class="courses">
                 <h3>Your Purchased Courses</h3>
                 <div class="course">
                     <h4>Course Name : <%=ac.getcName() %></h4>
                     <p>Description of Course: <%=ac.getcDescription() %></p>
                     <p>Price: <%=ac.getPrice() %></p>
                 <a href="watch-course"><button class="logout-btn">Watch</button></a>
            	 
          <%}%>
           
           
             
           </div>
        	   
          <%}%>
             </div> 	
          
          
                 
           <a href="logout"><button class="logout-btn">Logout</button></a>
           
        </div>
    </div>
</body>
</html>
