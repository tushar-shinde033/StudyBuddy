<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post Your Doubts</title>
<
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"> 
  
</head>
<style>
.form-container {
  max-width: 400px; /* Adjust the maximum width of the form container */
  margin: 0 auto; /* Center the form horizontally */
  padding: 20px; /* Add padding around the form */
  border: 1px solid #ccc; /* Add a border around the form */
  border-radius: 5px; /* Add rounded corners to the form */
}

label {
  display: block; /* Display labels as block elements */
  margin-bottom: 5px; /* Add margin below each label */
}

input[type="text"],
textarea {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-sizing: border-box;
}

textarea {
  height: 150px;
}

input[type="submit"] {
  background-color: #007bff; /* Set the background color of the submit button */
  color: #fff; /* Set the text color of the submit button */
  padding: 10px 20px; /* Add padding to the submit button */
  border: none; /* Remove the border */
  border-radius: 5px; /* Add rounded corners */
  cursor: pointer; /* Change cursor to pointer on hover */
}

input[type="submit"]:hover {
  background-color: #0056b3; /* Change background color on hover */
}

</style>

<body>


<div class="card">
  <div class="card-header">
   <h2>Ask a question by industry leader..!</h2> 
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>Writing a good question</p>
      <!-- 
      <p>You are ready to ask a programming-related question and this form will help guide you through the process.
Looking to ask a non-programming question? See the topics here to find a relevant site.</p> -->
      <footer class="blockquote-footer"> <cite title="Source Title">Summarize your problem in a one-line title.</cite></footer>
            <footer class="blockquote-footer"><cite title="Source Title">Describe your problem in more detail.</cite></footer>
                  <footer class="blockquote-footer"><cite title="Source Title">Describe what you tried and what you expected to happen.</cite></footer>
                        <footer class="blockquote-footer"><cite title="Source Title">add tags which help surface your question to members of the community.</cite></footer>
    </blockquote>
 
  </div>
  
  
  <a href="All-posted-doubts" class="btn btn-primary">View All Posted Doubts</a>
</div>


<div class="form-container">
  <form action="submitdoubts" method="POST">
    <label>Title:</label><br>
    <input type="text" name="title" required="required"><br>
    
    <label>What are the details of your problem?</label><br>
    <textarea name="details" required="required"></textarea><br>
    
    <label>What did you try and what were you expecting?</label><br>
    <textarea name="expectation" required="required"></textarea><br>
    
    <label>Tags</label><br>
    <input type="text" name="tags" required="required"><br>
    
    <input type="submit" class="btn btn-primary" value="Submit">
  </form>
</div>


</body>
</html>