<!DOCTYPE html>
<%@page import="entities.QuestionPostEntity"%>
<%@page import="entities.AllCourses"%>
<%@page import="java.util.List"%>
<html lang="en">
<% List<QuestionPostEntity>list=(List<QuestionPostEntity>)  request.getAttribute("alldoubts"); 
 String message= (String)request.getAttribute("msg");

 String messages=(String)session.getAttribute("adminMsg");
  if(messages==null) { %><jsp:forward page="adminlogindoubt.jsp"></jsp:forward><%
  }%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
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
        .btn-container {
            text-align: center;
        }
        .btn {
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            color: #fff;
            display: inline-block;
            margin: 5px;
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
    <h2 style="color: blue;">Admin Panel doubts dashboard</h2>
    <% String msg=(String)session.getAttribute("status"); %>

  <% if(message!=null) {%>
         <h2 style="color: red;"><%=msg %></h2>
    
      <% }%>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Problem Detail</th>
            <th>Expecting</th>
            <th>Tags</th>
            <th>Solution</th>
            <th>Created At</th>
            <th>Likes</th>
            <th>Dislikes</th>
            <th>Actions</th> <!-- New column for buttons -->
        </tr>
        <!-- Sample data row, replace with actual data from database -->
        <%for(QuestionPostEntity qpe: list)     {%>
        	 <tr>
             <td><%=qpe.getId() %></td>
             <td><%=qpe.getTitle() %></td>
             <td><%=qpe.getDetails() %></td>
             <td><%=qpe.getExpectation() %></td>
             <td><%=qpe.getTags() %></td>
             <td><%=qpe.getSolution() %></td>
             <td><%=qpe.getCretaedAt() %></td>
             <td><%=qpe.getLikeSolution() %></td>
             <td><%=qpe.getDisLikeSolution() %></td>
             <td class="btn-container">
             <%if(qpe.getSolution()==null)    {%>
            	 <a href="admin-add-solution-doubts/<%=qpe.getId() %>" class="btn btn-edit">Add Solution</a>
            <% } %>
           
                 <a href="admin-add-solution-doubts/<%=qpe.getId() %>" class="btn btn-edit">Edit</a>
                 <a href="delete-doubt/<%=qpe.getId() %>" class="btn btn-edit">Delete</a>
              
             </td>
         </tr>
        	
        	
       <%  }
        	%>
       
        
       
        
   
       
        <!-- Additional rows here -->
    </table>
</body>
</html>
