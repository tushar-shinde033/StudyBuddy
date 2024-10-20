<%@page import="doubtdao.DoubtsDao"%>
<%@page import="entities.QuestionPostEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Solutions With Doubts</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" >
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        .solution-card {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
        }
        .solution-card h3 {
            margin-top: 0;
        }
        .solution-card p {
            margin: 0;
            margin-bottom: 10px;
        }
        .thumbs-container {
            display: flex;
            align-items: center;
        }
        .thumb-icon {
            font-size: 24px;
            cursor: pointer;
            margin-right: 10px;
            transition: transform 0.2s ease-in-out;
            border: none; /* Remove button border */
            background: none; /* Remove button background */
        }
        .thumb-icon:hover {
            transform: scale(1.2); /* Scale up on hover */
        }
        .like-icon {
            color: #4CAF50; /* Green color for thumbs up */
        }
        .dislike-icon {
            color: #f44336; /* Red color for thumbs down */
        }
        .like-count, .dislike-count {
            font-size: 16px;
            margin-left: 5px;
        }
        .load-more-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .load-more-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<% List<QuestionPostEntity> list= (List<QuestionPostEntity>)request.getAttribute("alldoubts");
   for(QuestionPostEntity ope: list) { %>
  
  
<div class="solution-card">
    <h3>Solution of that problem......</h3>
        <p><strong>Doubt ID: </strong><%=ope.getId() %></p>
        <p><strong>Title: </strong><%=ope.getTitle() %> </p>
    <p><strong>Detail Problem: </strong><%=ope.getTitle() %></p>
    <p><strong>Expecting: </strong><%=ope.getExpectation() %></p>
    <p><strong>Tag: </strong><%=ope.getTags() %></p>
      <p><strong>Posted At: </strong><%=ope.getCretaedAt() %></p> 
    <% if(ope.getSolution()==null) { %>
    <p><strong>Solution: </strong>Solution to be posted soon.....</p><%}else {%>
        <p><strong>Solution: </strong><%=ope.getSolution() %></p>    
    <%}%>
    <div class="thumbs-container">
        <!-- Thumbs up icon with form to like the solution -->
        <form action="likesolution/<%=ope.getId()%>/like" method="POST">
            <input type="hidden" name="id" value=""> <%=ope.getLikeSolution() %>
            <button type="submit" class="thumb-icon like-icon">&#128077;</button>
        </form>
      
        <form action="dislikesolution/<%=ope.getId() %>/dislike" method="POST">
            <input type="hidden" name="id" value=""><%=ope.getDisLikeSolution() %>
            <button type="submit" class="thumb-icon dislike-icon">&#128078;</button>
        </form>
       
        <span class="like-count"></span>
        <span class="dislike-count"></span>
    </div>
    <a href="report-issue" class="btn btn-sm bg-danger text-white">Is there any mistake.?</a>
</div> 
<% 
System.out.print("total count"+ope.getLikeSolution());

System.out.println("total dis" +ope.getDisLikeSolution());
   }
   

   %>

</body>
</html>
