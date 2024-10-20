<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    if(session.getAttribute("adminMsg")!="admin") {
    	String msg="Please login to post solution";
    	response.sendRedirect("http://localhost:8879/sm/login?msg="+msg);
    }
    
    System.out.print(session.getAttribute("adminMsg"));
    %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin |  Add Solution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form input[type="text"],
        form textarea {
            width: calc(100% - 20px);
            margin: 8px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        form input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        form input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<form>
    <label for="id">Question ID:</label>
    <input type="text" id="id" name="id" required><br>

    <label for="title">Question Title:</label>
    <input type="text" id="title" name="title" required><br>

    <label for="detail_problem">Question Detail Problem:</label><br>
    <textarea id="detail_problem" name="detail_problem" rows="4" required></textarea><br>

    <label for="expecting">Solution Expecting:</label><br>
    <textarea id="expecting" name="expecting" rows="4" required></textarea><br>

    <label for="tags">Tags:</label>
    <input type="text" id="tags" name="tags"><br>

    <label for="solution">Solution of the Problem:</label><br>
    <textarea id="solution" name="solution" rows="4"></textarea><br>
     
     <label for="tags">Solution img:</label>
    <input type="file" id="image" name="img"><br> <br>
     
    <label for="created_at">Question Posted:</label>
    <input type="text" id="created_at" name="created_at"><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
