<%@page import="entities.QuestionPostEntity"%>
<%@page import="java.awt.geom.QuadCurve2D"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Solution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        input[type="datetime-local"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        textarea {
            height: 100px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
    <%  List<QuestionPostEntity>list=(List<QuestionPostEntity>)  request.getAttribute("alldoubts");
      for(QuestionPostEntity ope:list )  {%>
        <h2>Add Solution For ID:- <%=ope.getId() %></h2>
       
         
    	  
     <form action="http://localhost:8879/sm/admin-add-solution-doubts" method="POST">
            <input type="hidden" name="id" value="<%=ope.getId() %>">
            <label for="title">Title:</label><br>
            <input type="text" id="title" name="title" value="<%=ope.getTitle() %>" required><br>
            
            <label for="problemDetail">Problem Detail:</label><br>
            <textarea id="problemDetail" name="details" rows="4" cols="50"   required><%=ope.getDetails()%>"</textarea><br>
            
            <label for="expecting">Expecting:</label><br>
            <input type="text" id="expecting" name="expectation" value="<%=ope.getExpectation() %>"><br>
            
            <label for="tags">Tags:</label><br>
            <input type="text" id="tags" name="tags" value="<%=ope.getTags() %>"><br>
            
            <label for="solution">Solution:</label><br>
            <textarea id="solution" name="solution" rows="4" cols="50"  required><%=ope.getSolution() %> </textarea><br>
            
            <label for="createdAt">Created At:</label><br>
            <input type="datetime-local" id="createdAt" name="cretaedAt" value="<%=ope.getCretaedAt() %>" required><br>

            
            <label for="likes">Likes:</label><br>
            <input type="number" id="likes" name="likeSolution" value="0" value="<%=ope.getLikeSolution() %>" required><br>
            
            <label for="dislikes">Dislikes:</label><br>
            <input type="number" id="dislikes" name="disLikeSolution" value="0"  value="<%=ope.getDisLikeSolution() %>" required><br>
  
            <input type="submit" value="Submit">
            
        </form>
           <%  }  %>
    </div>
</body>
</html>
