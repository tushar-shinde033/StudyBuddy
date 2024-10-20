<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image" href="data:image/jpeg;base64,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">
  <title>About Us | Giri Technical</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #333;
      color: #fff;
      padding: 20px;
    }

    header h1 {
      margin: 0;
    }

    main {
      padding: 20px;
    }

    section {
      margin-bottom: 30px;
    }

    h2 {
      color: #333;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    footer {
      background-color: #333;
      color: #fff;
      text-align: center;
      padding: 10px 0;
    }
  </style>
</head>
<body>
  <header>
    <h1>About Us</h1>
  </header>
  <main>
    <section id="about">
      <h2>Welcome to Siddiqui Technical</h2>
      <p>Your ultimate destination for comprehensive Java Full Stack tutorials and resources.</p>
      <p>Whether you're a novice looking to embark on your programming journey or an experienced developer seeking to enhance your expertise, we've got you covered.</p>
    </section>
    <section id="features">
      <h2>Our Features</h2>
      <ul>
        <li>Extensive Tutorials</li>
        <li>Job Postings</li>
        <li>Doubt Solver</li>
        <li>Practice</li>
        <li>Interview Question Notes</li>
        <li>And Much More</li>
      </ul>
      <p>At Siddiqui Technical, our mission is to empower individuals to become proficient Java Full Stack developers. Join our vibrant community of learners, developers, and industry professionals, and embark on a journey of continuous growth and success.</p>
    </section>
  </main>
  <footer>
    <p>&copy; 2024 Siddiqui Technical. All rights reserved.</p>
  </footer>
</body>
</html>
