<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback form </title>
</head>
<style>
.main-form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.heading {
    text-align: center;
    margin-bottom: 20px;
}

.heading h1 {
    font-size: 24px;
    color: #333;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="number"],
input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
<body>
<div class="main-form">
<div class="heading">
<h1>Please fill this form to make some changes in the solution..!</h1>
</div>
<form  action="https://formsubmit.co/armansiddiqui339@gmail.com" method="post">
<label>Full Name:</label>

<input type="text" name="name" placeholder="John Cena" required="required">

<label>Email:</label>
<input type="email" name="email" placeholder="example@gmail.com" required="required">


<label>Doubt id:</label>
<input type="number" name="did" placeholder="1" required="required">

<label>Message:</label>
<input type="text" name="message" placeholder="Describe issues" required="required">

<input type="submit" value="Send">
</form>
</div>

</body>
</html>