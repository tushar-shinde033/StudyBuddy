<%@page import="entities.AllCourses"%>
<%@page import="java.util.List"%>
<%@page import="entities.SmSignUp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="error.jsp" %>
  <% SmSignUp obj=(SmSignUp) session.getAttribute("data"); 
  
  List<AllCourses>list=(List<AllCourses>)  session.getAttribute("cource");
   
   for(AllCourses ac:list) {%>
	   
  
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=ac.getcName() %></title>
    <link rel="stylesheet" href="style2.css">
    <script src="https://kit.fontawesome.com/9e44236902.js" crossorigin="anonymous"></script>
</head>

<style>


*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

.wrapper{
    height: 100vh;
    width: 100vw;
    overflow-x: hidden;
    overflow-y: auto;
    scroll-behavior: smooth;
}

.navdiv{
    height: 5rem;
    width: 99%;
    display: flex;
    background-color: rgb(251, 251, 251);
    box-shadow: 0.5px 0.5px 30px 1px lightblue;
    box-sizing: content-box;
    background-image: linear-gradient(to right, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079) );
    position: fixed;
    z-index: 999;
}

.logo{
    height: 5rem;
    width: 10rem;
    margin-left: 5rem;
}

.logo>a>img{
    height: 5rem;
    width: 6rem;
    margin-left: 2rem;
}

.brandname>a{
    height: 5rem;
    width: 10rem;
    display: flex;
    align-items: center;
    font-weight: 700;
    font-size: x-large;
}

#sectext{
    color: rgb(96, 109, 255);
}

.links>ul{
    height: 5rem;
    width: 50rem;
    display: flex;
    list-style-type: none;
    gap: 3rem;
    align-items: center;
    font-weight: 540;
    font-size: large;
    justify-content: center;
}

.links>ul>li>a:hover{
    color: rgb(61, 75, 237);
    text-shadow: 0.5px 0.5px 0.5px rgb(202, 185, 216);
}

a{
    text-decoration: none;
    color: black;
}

.logindiv{
    height: 5rem;
    width: 19rem;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}

.button{
    height: 2.7rem;
    width: 6.5rem;
    background-color: rgb(96, 109, 255);
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 12%;
    font-weight: 600;
    cursor: pointer;
    justify-content: space-evenly;
    border: 2px solid rgba(0, 0, 255, 0.136);
}

.button:hover{
    transform: scale(1.03);
    transition: 0.3s;
    box-shadow: 2px 3px 8px rgb(129, 179, 235);
}

.button{
    color: aliceblue;
}

#signup{
    width: 6.5rem;   
}

.maincontainer{
    height: 100vh;
    width: 100vw;
    padding-top: 5rem;
    display: flex;
    background-image: linear-gradient(to top, white,rgb(158, 187, 233), rgba(174, 210, 248, 0.079),white );
}

.mainleft{
    height: 100%;
    width: 50%;
}

.courseinfosec{
    height: 100%;
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.welcomemsg{
    height: 2rem;
    width: 85%;
    font-size: x-large;
    font-weight: 600;
    color: rgb(83, 82, 82);
    margin-left: 4rem;
}

.mainheading{
    height: 3rem;
    width: 85%;
    margin-left: 4rem;
    font-size: 2.5rem;
    font-weight: 600;
    color: rgb(26, 44, 249);
}

.description{
    height: 2rem;
    width: 85%;
    margin-left: 4rem;
    font-size: larger;
    font-weight: 600;
    color: rgb(83, 82, 82);
    padding-top: 0.5rem;
}

.rating{
    height: 2rem;
    width: 85%;
    margin-left: 4rem;
    margin-top: 0.5rem;
    display: flex;
}
.rating p{
	margin-top:20px;
}
.number{
    height: 2rem;
    width: 5%;
    font-size: large;
    font-weight: 500;
}

.stars{
    height: 2rem;
    width: 15%;
    margin-top:20px;
}

.stars>i{
    color: rgb(248, 240, 23);
}

.mainright{
    height: 100%;
    width: 50%;
}

.rightwrapper{
    height: 70%;
    width: 60%;
    margin-top: 6rem;
    border-radius: 5%;
    box-shadow: rgb(125, 179, 232) 0px 0px 50px;
    margin-left: 5rem;
    background-image: linear-gradient(to bottom,rgb(233, 237, 245), rgba(207, 218, 230, 0.437));
}

.imgdiv{
    height: 40%;
    margin-left: 2rem;
}

.imgdiv>img{
    height: 100%;
    width: 90%;
    object-fit: cover;
    margin-top: 1rem;
}

.price{
    height: 2rem;
    width: 70%;
    font-size: large;
    font-weight: 600;
    padding-top: 2rem;
    margin-left: 2rem;
}

.strickprice{
    text-decoration: line-through;
    color: rgb(80, 69, 69);
    margin-left: 1rem;
}

.buybtn{
    height: 2.3rem;
    width: 84%;
    font-size: large;
    font-weight: 600;
    border: 1px solid black;
    border-radius: 5%;
    background-color: rgb(52, 52, 222);
    color: white;
    letter-spacing: 0.1rem;
    cursor: pointer;
    margin-top: 2rem;
    margin-left: 2rem;
}

.coursecontains{
    height: 13rem;
    width: 70%;
    margin-left: 2rem;
}

.coursecontains-head{
    height: 1.5rem;
    width: 90%;
    font-size: large;
    font-weight: 600;
    margin-top: 1rem;
}

.disc{
    height: 10rem;
    width: 90%;
    font-size: 16px;
    font-weight: 500;
    padding-top: 0.5rem;
}

.iconanddisc{
    display: flex;
    gap: 10px;
    line-height: 1.5rem;
}

.iconanddisc>i{
    color: rgb(24, 24, 24);
    line-height: 1.5rem;
}

.infocontainer{
    height: 100vh;
    width: 100vw;
}

.infomain{
    height: 100%;
    width: 70%;
    margin: 0 auto;
}

.infonav{
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid black;
    height: 3rem;
    width: 100%;
    margin-bottom: 3rem;
}

.infoheading{
    height: 5%;
    width: 100%;
    font-size: x-large;
    font-weight: 600;
}

.infoheadingfaq{
    height: 5%;
    width: 100%;
    font-size: x-large;
    font-weight: 600;
    margin-bottom: 2rem;
    margin-top: 1rem;
}

.learndiv{
    height: 30%;
    width: 100%;
    display: flex;
}

.learndivleft{
    height: 100%;
    width: 50%;
}

.learndivright{
    height: 100%;
    width: 50%;
}

.learncontent{
    height: 100%;
    width: 100%;
    font-size: large;
    padding: 1rem;
}

.icondiv{
    display: flex;
    gap: 1rem;
    line-height: 1.8rem;
}

.icondiv>i{
    line-height: 1.8rem;
    color: blue;
}

.linediv{
    height: 1px;
    width: 100%;
    background-color: rgb(120, 120, 247);
}

.coursewrapper{
    height: 100%;
    width: 100%;
}

.coursecontainer{
    height: 100%;
    width: 70%;
    margin: 0 auto;
}

.linediv2{
    height: 1px;
    width: 100%;
    background-color: rgb(120, 120, 247);
    margin-top: 5rem;
}

.Instructorwrapper{
    height: 70%;
    width: 100%;
    margin-top: 5rem;
    display: flex;
}

.instructorimg{
    height: 100%;
    width: 40%;
}

.instructorimg>img{
    height: 100%;
    width: 100%;
    object-fit: cover;
}


.instructorinfo{
    height: 100%;
    width: 60%;
    padding: 2rem;
}

.instructorinfo>p{
    padding: 0.5rem;
}

.instname{
    font-size: 2rem;
    font-weight: 600;
}

.experiance{
    font-size: 1.5rem;
    font-weight: 500;
}

.info{
    font-size: 1.2rem;
    font-weight: 500;
}



/* *****FAQ********* */
.accordion {
    background-color: white;
    color: rgba(0, 0, 0, 0.8);
    cursor: pointer;
    font-size: 1.2rem;
    width: 100%;
    padding: 1rem 2rem;
    border: none;
    outline: none;
    transition: 0.4s;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: bold;
  }
  
  .accordion i {
    font-size: 1rem;
  }
  
  .active,
  .accordion:hover {
    background-color: #f1f7f5;
  }
  .pannel {
    padding: 0 1rem 2rem 1rem;
    background-color: white;
    overflow: hidden;
    background-color: #f1f7f5;
    display: none;
    margin-left: 2rem;
  }
  .pannel p {
    color: rgba(0, 0, 0, 0.7);
    font-size: 1.2rem;
    line-height: 1.4;
  }
  
  .faq {
    border: 1px solid rgba(0, 0, 0, 0.2);
    margin: 5px 0;
  }
  .faq.active {
    border: none;
  }
/* ************** */

/********************************** footer start **********************************/
.footer{
    height: 41vh;
    width: 100vw;
    background-color: rgb(73, 86, 231);
    color: aliceblue;
}

.topfooter{
    margin-top: 5px;
}

.footcontainer{
    height: 35vh;
    width: 100vw;
    display: flex;
    justify-content: center;
    align-items: center;
}

.bottomfooter{
    height: 5vh;
    width: 100vw;
    display: flex;
    align-items: center;
    justify-content: center;
}

.t1>img{
    height: 8rem;
    width: 8rem;
    margin-bottom: 10px;
}

.t1{
    height: 15rem;
    width: 22%;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    justify-content: center;
}

#foothead{
    font-size: x-large;
    font-weight: 600;
    text-transform: uppercase;
}

.t1>p{
    font-size: 1.1rem;
    font-weight: 600;
    text-transform: capitalize;
}

.t2{
    height: 15rem;
    width: 20%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.t2>ul{
    list-style-type: none;
    margin-top: 1rem;
    line-height: 1.5rem;
    align-items: center;
}

.t2>ul>li>a{
    color: aliceblue;
    font-size: 1rem;
    font-weight: 600;
    text-transform: capitalize;
    line-height: 2;
}

.t2>ul>li:hover{
    scale: 1.1;
}

.footsubhed-1{
    margin-top: 2rem;
    margin-left: -2rem;
    font-size: large;
    font-weight: 600;
    text-transform: uppercase;
}

.footsubhed-2{
    margin-top: 2rem;
    margin-left: -8rem;
    font-size: large;
    font-weight: 600;
    text-transform: uppercase;
}

.footsubhed-3{
    margin-top: 2rem;
    font-size: large;
    font-weight: 600;
    text-transform: uppercase;
}

.t3{
    height: 15rem;
    width: 22%;
    display: flex;
    flex-direction: column;
    align-items: center; 
}

.t3>ul{
    list-style-type: none;
    margin-top: 1rem;
    line-height: 1.5rem;
    align-items: center;
}

.t3>ul>li:hover{
    scale: 1.1;
}

.t3>ul>li>a{
    color: aliceblue;
    font-size: 1rem;
    font-weight: 600;
    text-transform: capitalize;
    line-height: 2;
}

.t4{
    height: 15rem;
    width: 20%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.icon{
    margin-top: 2rem;
    width: 80%;
    height: 20%;
    display: flex;
    justify-content: space-evenly;
}

.footline{
    height: 1px;
    width: 100vw;
    display: flex;
    align-items: center;
    justify-content: center;
}

#line{
    height: 1px;
    width: 70vw;
    background-color: rgb(133, 135, 233);
}

.icon>a>i{
    scale: 1.5;
    color: aliceblue;
}

.icon>a>i:hover{
    scale: 2;
    text-shadow: 0px 0px 5px whitesmoke;
}

.bottomfooter>p{
    font-size: 1rem;
    font-weight: 500;
    text-transform: capitalize;
}
/********************************** footer end **********************************/

</style>

<body>

    <div class="wrapper">

        <div class="container">

            <!-- nav bar -->

            <div class="navdiv" >

                <div class="logo">
                    <a href="/"><img src="https://img.freepik.com/free-vector/education-business-logo-template-branding-design-vector-education-center-text_53876-136247.jpg?t=st=1709134724~exp=1709138324~hmac=0da2aade431302b4f207a44b0024fbe7c37fd82b29ead7cdf5dfdd966ca2808c&w=740" alt="logoIMG"></a>
                </div>
                
                
    
                <div class="brandname">
                    <a href="/"><p>Study<p><p id="sectext">Buddy</p></a>
                </div>
    
                <div class="links">
    
                    <ul>
                        <li><a href="http://localhost:8879/sm/student-coursce#home">Home</a></li>
                        <li><a href="http://localhost:8879/sm/student-coursce#courses">Courses</a></li>
                        <li><a href="http://localhost:8879/sm/student-coursce#aboutus">About Us</a></li>
                           <li><a href="Doubt-post-section">Ask Doubts</a></li>
                        <li><a href="http://localhost:8879/sm/student-coursce#contactus">Contact Us</a></li>
                    </ul>
    
                </div>
    
                
            <%
            
            if(obj!=null) {%>
<div class="logindiv">
                
               <a href="logout-student">
                    <div class="button" id="login">Logout
                    <i class="fa-solid fa-right-to-bracket" style="color: white; margin-left: 5px;"></i>
                    </div>
                </a>

                <a href="student-dashboard">
                    <div class="button" id="signup"><%=obj.getFname() %>
                        <i class="fa-solid fa-user-plus"style="color: white; margin-left: 5px;"></i>
                    </div>
                </a>
                
            </div>
          
          <%  }    
          
            else {%>
            	
<div class="logindiv">
                
                <a href="login-sm">
                
                    <div class="button" id="login">Login
                    <i class="fa-solid fa-right-to-bracket" style="color: white; margin-left: 5px;"></i>
                    </div>
                </a>

                <a href="signup-sm">
                    <div class="button" id="signup">SignUp
                        <i class="fa-solid fa-user-plus"style="color: white; margin-left: 5px;"></i>
                    </div>
                </a>
                
            </div>
            
         <%   }  %> 
            
          

        </div>

            <!-- main content section -->
            <div class="maincontainer">
        
                <div class="mainleft">

                    <div class="courseinfosec">

                        <p class="welcomemsg">Welcome to @coder's Family</p>
                        <p class="mainheading"><%=ac.getcName() %></p>
                        <p class="description"><%=ac.getcDescription() %></p>

                        <div class="rating">
                            <div class="number">
                                <p>4.0</p>
                            </div>
                            <div class="stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="mainright">

                    <div class="rightwrapper">
                        <div class="imgdiv">
                            <img src="<%=ac.getImg() %>" alt="Course 1" class="course-image">
                        </div>
                        <div class="price">&#x20B9; <%=ac.getPrice() %><span class="strickprice"> &#x20B9;3000</span></div>
                        <%  
                        if(obj==null) {%>
                        	 <a href="http://localhost:8879/sm/login-sm?msg=please login for buy">
                      <% }
                        
                        else {%>
                        	 <a href="buy-now?id=<%=ac.getId() %>>">
                       <% }
                        %>
                           
                       
                            <button class="buybtn">Buy Now</button>
                        </a>
                        <div class="coursecontains">
                            <p class="coursecontains-head">This Course Includes:</p>
                            <div class="disc">
                                <div class="iconanddisc"><i class="fa-solid fa-play"></i><p>No Prerequisite Required</p></div>
                                <div class="iconanddisc"><i class="fa-solid fa-play"></i><p>150 Hours On Demand Video</p></div>
                                <div class="iconanddisc"><i class="fa-solid fa-play"></i><p>Learn Beginner to Advanced</p></div>
                                <div class="iconanddisc"><i class="fa-solid fa-play"></i><p>Industry Grade Projects</p></div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>

            <!-- info section -->
            <div class="infocontainer">

                <div class="infomain">

                    <div class="infobar">
                        <div class="links infonav">
    
                            <ul>
                                <li><a href="#over">Overview</a></li>
                                <li><a href="#course"></a></li>
                                <li><a href="#inst">Instructor</a></li>
                                <li><a href="#faq">FAQs</a></li>
                            </ul>
            
                        </div> 
                    </div>
                    
                    <div class="infoheading" id="over">What you will learn</div>

                    <div class="learndiv">

                        <div class="learndivleft">

                            <div class="learncontent">

                                <div class="icondiv"><i class="fa-solid fa-check"></i>Introduction to the programming</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Basic Structure of the Program</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Data Types and how to use</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Operators</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Control Flow</div>

                            </div>

                        </div>
                        <!-- 
                        
                        <div class="learndivright">
                            
                            <div class="learncontent">

                                <div class="icondiv"><i class="fa-solid fa-check"></i>Functions</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Arrays</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>OOPS</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Strings</div>
                                <div class="icondiv"><i class="fa-solid fa-check"></i>Structures and Unions</div>

                            </div>

                        </div>
                     -->

                    </div>

                    <!-- ******************************* -->
                    
                    <div class="infoheading">Basic Details</div>

                    <div class="learndiv">

                        <div class="learndivleft">

                            <div class="learncontent">

                                <div class="icondiv">Mode of the Course</div>
                                <!-- 
                                <div class="icondiv">Technologies that you will Learn</div> -->
                                <div class="icondiv">No. Of Lectures</div>
                                <div class="icondiv">Class Recording Provided</div>
                                <div class="icondiv">Course Validity</div>

                            </div>

                        </div>
                        
                        <div class="learndivright">
                            
                            <div class="learncontent">

                                <div class="icondiv">
                                    Online Recorded Lectures</div>
                                    <!-- 
                                <div class="icondiv">
                                    C Programming </div> -->
                                <div class="icondiv">
                                    50</div>
                                <div class="icondiv">
                                    Yes</div>
                                <div class="icondiv">
                                    1.5 Years</div>

                            </div>

                        </div>

                    </div>
                    
                    <div class="linediv" id="course"></div>
                    
                    
                    <!-- ******************************* -->    
                </div>

<!-- 
                <div class="coursewrapper" >

                    <div class="coursecontainer">
                        <div class="infoheading">Course Content</div>
                        
                        <div class="faq">
                            <button class="accordion">
                                Introduction to C
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Overview of C programming language</li>
                                    <li>History and development of C</li>
                                    <li>Characteristics of C</li>
                                </ul>
                            </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                Basic Structure of a C Program
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Structure of a C program</li>
                                    <li>Header files and their purpose</li>
                                    <li>Functions and their syntax</li>
                                </ul>
                              </p>
                            </div>
                        </div>
                        
                        <div class="faq">
                            <button class="accordion">
                                Data Types and Variables
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Fundamental data types (int, float, double, char, etc.)</li>
                                    <li>Declaration and initialization of variables</li>
                                    <li>Constants in C</li>
                                </ul>
                              </p>
                            </div>
                        </div>
                        
                        <div class="faq">
                            <button class="accordion">
                                Operators
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Arithmetic operators</li>
                                    <li>Relational operators</li>
                                    <li>Logical operators</li>
                                    <li>Assignment operators</li>
                                    <li>Increment and decrement operators</li>
                                </ul>
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                Control Flow
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Decision making with if, if-else, and switch statements</li>
                                    <li>Looping constructs: while, do-while, for loops</li>
                                    <li>Break and continue statements</li>
                                </ul>
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                Functions
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Function definition and declaration</li>
                                    <li>Function prototypes</li>
                                    <li>Passing parameters to functions</li>
                                    <li>Return values</li>
                                </ul>
                              </p>
                            </div>
                        </div>
                        
                        <div class="faq">
                            <button class="accordion">
                                Arrays
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Declaration and initialization of arrays</li>
                                    <li>Multi-dimensional arrays</li>
                                    <li>Array manipulation and traversal</li>
                                </ul>
                              </p>
                            </div>
                        </div>
                        
                        <div class="faq">
                            <button class="accordion">
                                Pointers
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                <ul>
                                    <li>Understanding pointers</li>
                                    <li>Pointers and arrays</li>
                                    <li>Pointer arithmetic</li>
                                </ul>
                              </p>
                            </div>
                        </div>
                        
                        <div class="linediv2" id="inst"></div>
                    </div>
    
    
                </div>
                 -->

                <!-- ************ -->

                <div class="coursewrapper" id="inst">

                    <div class="coursecontainer">
                        <div class="infoheading">Instructor</div>
                        
                        <div class="Instructorwrapper">

                            <div class="instructorimg">

                                <img src="https://img.freepik.com/free-vector/interview-concept-illustration_114360-1678.jpg?w=740&t=st=1709135653~exp=1709136253~hmac=19f7fb7c7af59c4e342b16ad8fa1ea67c6e4c20984097a979597dd06452629cd" alt="instructorimg">

                            </div>

                            <div class="instructorinfo">

                                <p class="instname"><%=ac.getcInstructor() %></p>
                                <p class="experiance"><%=ac.getcExperience() %></p>
                                <p class="info"><%=ac.getInstructorInfo() %></p>

                            </div>


                        </div>

                        
                        <div class="linediv2" id="faq"></div>
                    </div>
    
    
                </div>

                <!-- ************** -->



                <!-- 1212 -->

                <div class="coursewrapper" id="faq">

                    <div class="coursecontainer">
                        <div class="infoheadingfaq">FAQ's</div>
                        
                        <div class="faq">
                            <button class="accordion">
                                What is  programming language?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                A programming language is a formal language comprising a set of instructions that produce various kinds of output. These instructions are designed to be executed by a computer, typically to perform tasks or solve problems. Programming languages allow developers to communicate with computers, instructing them to perform specific operations, manipulate data, and control the flow of execution.
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                How do I sign up for an account?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                               Click on signup button to create account
                              </p>
                            </div>
                        </div>
                        
                        <div class="faq">
                            <button class="accordion">
                               How do I log in to my account?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                               By using email and password
                              </p>
                            </div>
                        </div>
                        
                        <div class="faq">
                            <button class="accordion">
                               What courses do you offer?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                               We are offering fronted, backened, full stack and soft skill courses
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                How do I enroll in a course?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                              First create a account and then enroll course
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                Is there a cost for courses?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                Yes every courses have some cost
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                                What is the duration of courses.?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                               More then 150+ hours
                              </p>
                            </div>
                        </div>

                        <div class="faq">
                            <button class="accordion">
                               How can I contact support for assistance?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                               Throw Contact us or email us: support@studdybuddy.com
                              </p>
                            </div>
                        </div>

<!-- 
                        <div class="faq">
                            <button class="accordion">
                                What is the difference between printf and scanf?
                              <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <div class="pannel">
                              <p>
                                printf is used for formatted output (displaying data), and scanf is used for formatted input (reading data). They are part of the standard I/O library in C.
                              </p>
                            </div>
                        </div>
                     -->
                        <!-- <div class="linediv2"></div> -->
                    </div>
    
    
                </div>

                <!-- 1212 -->
                <div class="footer">

                    <div class="topfooter">
        
                        <div class="footcontainer">
                            <div class="t1">
        
                                <img src="https://img.freepik.com/free-vector/education-business-logo-template-branding-design-vector-education-center-text_53876-136247.jpg?t=st=1709134724~exp=1709138324~hmac=0da2aade431302b4f207a44b0024fbe7c37fd82b29ead7cdf5dfdd966ca2808c&w=740" alt="">
                                <p id="foothead">Study Buddy</p>
                                <p>"Empowering minds, shaping futures."</p>
                            </div>
        
                            <div class="t2">
                                <p class="footsubhed-1">Menu</p>
                                <ul>
                                    <li><a href="http://127.0.0.1:5501/index.html#home">Home</a></li>
                                    <li><a href="http://127.0.0.1:5501/index.html#courses">Courses</a></li>
                                    <li><a href="http://127.0.0.1:5501/index.html#aboutus">About Us</a></li>
                                    <li><a href="http://127.0.0.1:5501/index.html#contactus">Contact Us</a></li>
                                </ul>
                            </div>
        
                            <div class="t3">
                                <p class="footsubhed-2">Services</p>
                                <ul>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms of use</a></li>
                                    <li><a href="#">Refund & Cancellation Policy</a></li>
                                </ul>
                            </div>
        
                            <div class="t4">
                                <p class="footsubhed-3">Join us on</p>
                                <div class="icon">
                                    <a href="#"><i class="fa-brands fa-facebook"></i></a>
                                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                                    <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                    <a href="#"><i class="fa-brands fa-github"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
        
                    <div class="footline">
                        <p id="line"></p>
                    </div>
        
                    <div class="bottomfooter">
                        <p>Copyright © 2024 Study Buddy Technologies Pvt Ltd. All Rights Reserved.</p>
                    </div>
                    
                </div>
            </div>
        

        </div>

    </div>
    
    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;
  
        for (i = 0; i < acc.length; i++) {
          acc[i].addEventListener("click", function () {
            this.classList.toggle("active");
            this.parentElement.classList.toggle("active");
  
            var pannel = this.nextElementSibling;
  
            if (pannel.style.display === "block") {
              pannel.style.display = "none";
            } else {
              pannel.style.display = "block";
            }
          });
        }
    </script>
  
</body>
</html>


 <%}%>