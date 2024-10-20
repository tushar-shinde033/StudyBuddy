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
    <title>View Solutions</title>
    
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

<% List<QuestionPostEntity> list= (List<QuestionPostEntity>)request.getAttribute("allquestionanswer");
   for(QuestionPostEntity ope: list) { %>
	   
  
<div class="solution-card">
    <h3>Solution of that problem......</h3>
    <p><strong>Detail Problem: </strong><%=ope.getTitle() %></p>
    <p><strong>Expecting: </strong><%=ope.getExpectation() %></p>
    <p><strong>Tag: </strong><%=ope.getTags() %></p>
      <p><strong>Posted At: </strong><%=ope.getCretaedAt() %></p> 
    <% if(ope.getSolution()==null) { %>
    <p><strong>Solution: </strong>Solution to be posted soon.....</p><%}else {%>
    	<p><strong>Solution: </strong><%=ope.getSolution() %></p>	
    <%}}
    
    %> 
</div>
<a href="view-all-doubt-and-solution"><button class="load-more-btn">Load All Doubts & Solutions</button></a>

</body>
</html>
</html>