<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String mesg= request.getParameter("msg"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-up</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            /* background-color: #f8f8f8; */
        }

        .container {
            margin: 20px auto;
            padding: 15px;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        h1 span {
            color: #007bff;
        }

        .parent {
            margin: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        form {
            margin: 40px;
            text-align: left;
            max-width: 400px;
            width: 100%;
        }

        .form-heading {
            font-size: 20px;
            margin-bottom: 15px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0359b5;  
        }

        p {
            color: #555;
            font-size: 14px;
            margin-top: 10px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        img {
            width: 33%;
            height: 35%;
            margin-right: 45px;
        }
        .form-heading{
            transition: transform 0.3s  ease;
        }

        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .close-btn {
            background: #007bff;
            color: #fff;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Study<span>Buddy</span></h1>

      <%if(mesg!=null) {%>
                	
                	<div style="color: red;">
                	  <%=mesg %>
                	</div>
                <%}%>

        <div class="parent">
            <!-- <img src="https://creator-cdn.icons8.com/4lqJnwl4IVEg3jQTkQhjHXXodWG6H43r9_CIICcMBvM/rs:fit:185:200/czM6Ly9pY29uczgt/b3VjaC1wcm9kLWFz/c2V0cy9wbmcvNjA5/LzM2ODE4YWM0LTAz/NmYtNGFlOC1iOGI3/LTlhOTJlNjBmNzU1/MS5wbmc.png" alt=""> -->
            <img src="https://img.freepik.com/free-vector/sign-up-concept-illustration_114360-7875.jpg?t=st=1709134396~exp=1709137996~hmac=de9d0df585ce56abaefa184c56fb99a82f1b7ce3f46770e1de1da3e799651c80&w=740" alt="">
            <form id="signupForm" action="signup" method="POST">
                <p class="form-heading">Sign up and start learning</p>
                <input type="text" name="fname" id="fname" placeholder="First name" required>
                <input type="text" name="lname" id="lname" placeholder="Last name" required>

                <input type="email" name="email" id="email" placeholder="Email Address" required>

                <input type="number" name="mob" id="mob" placeholder="Phone Number" required>

                <input type="password" name="password" id="password" placeholder="Password" required>

                <input type="submit" value="Sign Up">

                <p>Already have an account? <a href="login-sm">Log in</a></p>
            </form>
        </div>
    </div>

<!-- -
    <div id="customModal" class="overlay">
        <div class="modal">
            <p>Welcome to StudyBuddy!</p>
            <button class="close-btn" onclick="closeModal()">Close</button>
        </div>
    </div>
    -->
   <!-- 
    <script>
        document.getElementById('signupForm').addEventListener('submit', function(event) {
            event.preventDefault();
            showWelcomeModal();
        });

        function showWelcomeModal() {
            document.getElementById('customModal').style.display = 'flex';
        }

        function closeModal() {
            document.getElementById('customModal').style.display = 'none';
        }
    </script>
    
     -->
</body>
</html>