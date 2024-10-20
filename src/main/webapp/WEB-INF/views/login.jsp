<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="error.jsp" %>
    
    <%

    String mesg=request.getParameter("msg");
    System.out.println(request.getAttribute("msg"));
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-in</title>

    <style>

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family:Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .signinmain{
            height: 100vh;
            width: 100vw;
            /* background-image: linear-gradient(to right, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079),white , white ); */
        }

        .heading{
            height: 5rem;
            width: 100%;
            font-size: 36px;
            font-weight: 700;
            display: flex;
            align-items: center;
            justify-content: center;
            padding-top: 5rem;
        }

        .sectext{
            color: #007bff;
        }

        .signincontainer{
            height: 80%;
            width: 80%;
            margin: 0 auto;
            display: flex;
        }

        .signleft{
            height: 100%;
            width: 50%;
            margin-top: 1rem;
            display: flex;
        }

        .signleft>img{
            height: 100%;
            width: 100%;
            object-fit: contain;
            padding-bottom: 4rem;
            padding-left: 7.6rem;
            margin-top: 1rem;
        }

        .signright{
            height: 100%;
            width: 50%;
            display: flex;
            align-items: center;
            margin-top: 1rem;
        }

        form {
            margin-left: 34px;
            display: flex;
            flex-direction: column;
            width: 50%;
        }

        label {
            font-size: 1.2em;
            color: #333;
            margin-bottom: 5px;
        }
        input {
            padding: 10px;
            margin-bottom: 10px;
            width: 250px;
            font-size: 1em;
        }

        .login-button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            width: 82%;
        }

        .login-button:hover{
            background-color: #0359b5;            
        }

        .form-heading{
            font-size: 27px;
            color: rgb(51, 96, 209);
            padding-bottom: 1rem;
            font-weight: 600;
        }

    </style>
</head>
<body>

    <div class="wrapper">

        <div class="signinmain">

            <div class="heading">
                <span>Study</span><span class="sectext">Buddy</span>
            </div>


            <div class="signincontainer">

                <div class="signleft">
                    <img src="https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?w=740&t=st=1709134298~exp=1709134898~hmac=51ddcda8203504b3b7f093cb459de6a0c6d67dfa8df487e61e89b951e9fcc988" alt="signinimg">
                </div>

                <div class="signright">


                
                    <form action="validate-student" method="POST">
                      	<div style="color: red;">
                      	<% if(request.getParameter("msg")!=null){%>
                      	 <h1><%=mesg %></h1>
                      	<%}
                      	else if(request.getAttribute("msg")!=null) {%>
                      		 <h1><%=request.getAttribute("msg") %></h1>	
                      <%}
                      	
                      	%>
                      	
                
                	</div>
                        <label for="mail">Email Address:</label>
                        <input type="email" name="mail" id="mail" required>
            
                        <label for="pass">Password:</label>
                        <input type="password" name="pass" id="pass" required>
            
                        <button type="submit" class="login-button">Login</button>
                        
                    </form>

                </div>
            </div>
        </div>
    </div>
  
    
</body>
</html>