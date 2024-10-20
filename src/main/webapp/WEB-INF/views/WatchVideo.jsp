<%@page import="entities.AllCourses"%>
<%@page import="java.util.List"%>
<%@page import="entities.SmSignUp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    SmSignUp data = (SmSignUp) session.getAttribute("data");
 List<AllCourses> list=(List<AllCourses>) session.getAttribute("cource");
 System.out.print(list);
     if(data==null) {%>
    <jsp:forward page="/login-sm"></jsp:forward> 
     <%}%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Watch video </title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    .container {
      margin: 20px;
      display: flex;
      margin: 0 auto;
    }

    .sidebar {
      margin: 12px;
      width: 200px;
      background-color: #2c3e50;
      color: #ecf0f1;
      padding: 20px;
      box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
      height: calc(100vh - 40px);
      overflow-y: auto;
    }

    .sidebar ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .sidebar li {
      cursor: pointer;
      padding: 12px;
      border-bottom: 1px solid #34495e;
      transition: background-color 0.3s;
      position: relative;
    }

    .sidebar li:hover {
      background-color: #34495e;
    }

    .sidebar li a {
      color: white;
      text-decoration: none;
      display: block;
    }

    .sidebar .sub-lectures {
      margin-left: 20px;
      display: none;
    }

    .sidebar .sub-lectures.active {
      display: block;
    }

    .arrow {
      position: absolute;
      right: 10px;
      top: 50%;
      transform: translateY(-50%);
    }

    .arrow:before {
      content: '\25B6'; /* Unicode character for right arrow */
      display: inline-block;
      font-size: 14px;
      color: #ecf0f1;
    }

    .content {
      margin: 12px;
      flex: 1;
      padding: 20px;
      background-color: #ecf0f1;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    iframe {
      margin: 0 auto;
      display: block;
      width: 90%;
      height: 400px;
      border: none;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    #lecture-name {
      text-align: center;
      margin-top: 20px;
      font-size: 18px;
      color: #2c3e50;
    }
  </style>

</head>
<body>

<div class="container">
  <div class="sidebar">
    <ul id="lecture-list">
      <li>
        <a href="javascript:void(0);" onclick="toggleSubLectures(this)">
          <span class="arrow"></span>
          Lecture 1
        </a>
        <ul class="sub-lectures">
          <li><a href="javascript:void(0);" onclick="showLecture('SubLecture1VideoID', 1.1)">Lecture 1.1</a></li>
          <li><a href="javascript:void(0);" onclick="showLecture('SubLecture2VideoID', 1.2)">Lecture 1.2</a></li>
        </ul>
      </li>
      <li>
        <a href="javascript:void(0);" onclick="toggleSubLectures(this)">
          <span class="arrow"></span>
          Lecture 2
        </a>
        <ul class="sub-lectures">
          <li><a href="javascript:void(0);" onclick="showLecture('SubLecture3VideoID', 2.1)">Lecture 2.1</a></li>
          <li><a href="javascript:void(0);" onclick="showLecture('SubLecture4VideoID', 2.2)">Lecture 2.2</a></li>
        </ul>
      </li>
    </ul>
  </div>

  <div class="content">
    <h2 style="text-align: center;">ReactJS</h2>
    <iframe id="lecture-iframe" src="" frameborder="0"></iframe>
    <p id="lecture-name">Select a lecture from the sidebar to view its content.</p>
  </div>
</div>

<script>
  function toggleSubLectures(element) {
    var subLectures = element.nextElementSibling;
    subLectures.classList.toggle('active');
  }

  function showLecture(videoId, lectureNumber) {
    var iframe = document.getElementById('lecture-iframe');
    var lectureNameElement = document.getElementById('lecture-name');

    // Use the YouTube embed URL with the videoId
    iframe.src = `https://www.youtube.com/embed/${videoId}`;

    // Set the lecture name using the passed lectureNumber
    lectureNameElement.innerText = `Lecture ${lectureNumber}`;
  }
</script>

</body>
</html>
