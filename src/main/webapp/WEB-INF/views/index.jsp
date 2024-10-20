<%@page import="entities.AllCourses"%>
<%@page import="java.util.List"%>
<%@page import="entities.SmSignUp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="error.jsp" %>

    <% SmSignUp obj=(SmSignUp) session.getAttribute("data");  
    List<AllCourses> list= (List<AllCourses>) request.getAttribute("listCource");  
  
    
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study Buddy</title>
   
    <link rel="shortcut icon" href="/resources/images/teacherimg.jpg" type="image/x-icon">
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

/******************************** nav bar start *********************************/

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
    justify-content: space-evenly;
}

.logoandbrand{
    height: 5rem;
    width: 30rem;
    display: flex;
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

/******************************** nav bar end *********************************/


/******************************** home section start **************************/

.homesec{
    height: 100vh;
    width: 100vw;
    display: flex;
    margin-top: 5rem;
    background-image: linear-gradient(to right, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079),white , white );
}

.hero-section-left{
    height: 80%;
    width: 70%;
    display: flex;
    flex-direction: column;
    justify-content:center;
    margin-left: 2rem;
    box-sizing: content-box;
    margin-top: 3rem;
}

#herosubh{
    color: rgb(96, 109, 255);
}

.herosub{
    font-size: 40px;
    font-weight: 600;
    color: rgb(83, 82, 82);
    text-transform: capitalize;
}

.hero-section-heading{
    font-size: 45px;
    font-weight: 900;
    color: rgb(83, 82, 82);
    text-transform: capitalize;
}

.hero-section-sub-heading{
    font-size: 35px;
    line-height: 1px;
    height: 3rem;
    margin-top: 1rem;
    display: flex;
    align-items: center;
    text-transform: capitalize;
}

.role{
    color: rgb(96, 109, 255);
    font-weight: 900;
    font-size: 35px;
    margin-left: 0.5rem;
}

.hero-section-description{
    margin-top: 0.8rem;
    width: 80%;
    height: 10%;
    font-size: 30px;
    font-weight: 700;
    color: rgb(51, 49, 49);
}

.herosecbtn{
    height: 5rem;
    width: 100%;
    display: flex;
    gap: 3%;
}

.button-2{
    height: 3rem;
    width: 10rem;
    background-color: rgb(96, 109, 255);
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10%;
    font-size: 18px;
    font-weight: 500;
    cursor: pointer;
    justify-content: space-evenly;
    border: 2px solid rgba(0, 0, 255, 0.136);
    margin-top: 1.5rem;
}

.button-2>a{
    color: whitesmoke;
}

.button-2:hover{
    transform: scale(1.03);
    transition: 0.3s;
    box-shadow: 2px 3px 8px rgb(129, 179, 235);
}

#watchbtn{
    background-color: white;
    border: 1px solid rgb(142, 142, 200);
}

#watchbtn>a{
    color: black;
}

.home-rightimg{
    height: 100%;
    width: 65%;
}

.home-rightimg>img{
    height: 100%;
    width: 100%;
    object-fit: contain;
    padding-bottom: 4rem;
    padding-right: 3rem;
}

/******************************** home section end ****************************/


/********************************* card section start *********************************/

.cardsec{
    height: 90vh;
    width: 100vw;
    background-image: linear-gradient(to left, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079));
}

.cardinfo{
    height: 10%;
    width: 80%;
    margin: 0 auto;
}

.cardheading{
    height: 2rem;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
    font-weight: 700;
    color: rgb(96, 109, 255);
    padding-top: 1rem;
}

.cardsubheading{
    height: 2rem;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.7rem;
    font-weight: 600;
    padding-top: 1rem;
}

.cardcontainer{
    height: 90%;
    width: 80%;
    margin: 0 auto;
    display: flex;
    flex-wrap: wrap;
    padding-top: 1rem;
}

.card{
    height: 49%;
    width: 27%;
    margin: 0 auto;
    margin-top: 1rem;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    row-gap: 1rem;
    padding:1rem;
    box-shadow: rgba(81, 87, 87, 0.400) 0px 5px 15px;
    background-color: white;
    transition: transform 0.3s ease;
}

.card:hover{
    transform: scale(1.05);
}

.cardcont{
    text-align: center;
    color: rgb(83, 82, 82);
}

.cdiv1{
    border-bottom: 5px solid rgb(141, 214, 174);
    border-radius: 2%;
}

.cdiv2{
    border-bottom: 5px solid rgb(230, 179, 172);
    border-radius: 2%;
}

.cdiv3{
    border-bottom: 5px solid rgb(154, 185, 226);
    border-radius: 2%;
}

.cdiv4{
    border-bottom: 5px solid rgb(134, 179, 183);
    border-radius: 2%;
}

.cdiv5{
    border-bottom: 5px solid rgb(183, 214, 219);
    border-radius: 2%;
}

.cdiv6{
    border-bottom: 5px solid rgb(241, 195, 173);
    border-radius: 2%;
}


/********************************* card section end *********************************/


/******************************** courses section start **************************/

.subheading{
    height: 5rem;
    width: 100vw;
    display: flex;
    align-items: center;
    justify-content: center;
    background-image: linear-gradient(to left, rgba(66, 133, 152, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079),white , white );
    font-size: 2rem;
    font-weight: 600;
    color: rgb(105, 117, 252);
    text-shadow: 1px 1px 2px #adb7cb;
    letter-spacing: 1.5px;
}

.courses{
    height: 120vh;
    width: 100vw;
    padding-top: 5rem;
    background-image: linear-gradient(to left, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079));
}

.coursecardcontainer{
    height: 89.5%;
    width: 90%;
    margin: 0 auto;
}

.child {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}
.cards {
    margin: 15px;
    width: 20%;
    height: 100%; 
    background: white;
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 10px;
    box-shadow: rgba(81, 87, 87, 0.400) 0px 5px 15px;
    transition: transform 0.3s ease;
}

.cards:hover{
    
    transform: scale(1.05); 
}

.course-image {
    width: 100%;
    max-height: 150px; 
    object-fit: cover;
}
.course-heading {
    margin-top: 0.7rem;
    font-size: large;
    font-weight: 600;
}
.course-description {
    margin-top: 0.2rem;
    font-size: 15px;
    color: rgba(0, 0, 0, 0.644);
    text-align: center;
    color: rgb(83, 82, 82);
}
.course-price{
    font-weight: bold;
    font-size: 15px;
    margin-top: 0.4rem;
}
.apply-button {
    background-color: #25ca2b;
    color: white;
    padding: 10px;
    text-decoration: none;
    display: inline-block;
    border-radius: 5px;
    margin-top: 0.3rem;
}

/******************************** courses section end ****************************/

/******************************** about us start********************************/

.aboutus{
    height: 100vh;
    width: 100vw;
    padding-top: 5rem;
    /* background-image: linear-gradient(to right, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189),white,white , white ); */
}

.aboutcontainer{
    height: 100%;
    width: 100%;
    display: flex; 
    flex-direction: row;
    box-sizing: border-box;
    background-image: linear-gradient(to right, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079),white , white );
}

#abtop{
    background-image: linear-gradient(to right, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079),white , white );
}

.abinfo{
    height: 100%;
    width: 60%;
}

.abcont0{
    margin-top: 3rem;
    height: 20%;
    width: 90%;
}

.abcont1{
    height: 14%;
    width: 90%;
}

.abcont2{
    height: 25%;
    width: 90%;
}

.abheading{
    
    height: 1.5rem;
    width: 100%;
    font-size: 19px;
    font-weight: 600;
    margin-left: 3rem;
    margin-top: 2rem;
    margin-bottom: 0.5rem;
    color: rgb(83, 82, 82);
}

.abdescription{
    
    height: 100%;
    width: 100%;
    font-size: 17px;
    font-weight: 500;
    margin-left: 3rem;
    color: rgb(83, 82, 82);
}

.abimg{
    height: 95%;
    width: 48%; 
}

.abimg>img{
    height: 90%;
    width: 100%;
    object-fit: contain;
}

/******************************** about us end ********************************/


/********************************* contact us start *********************************/
.contact{

    height: 100vh;
    width: 100vw;
    padding-top: 5rem;
}

.subcontact{
    height: 80vh;
    width: 100vw;
    display: flex;
    background-image: linear-gradient(to left, rgba(107, 197, 222, 0.074),rgba(159, 211, 225, 0.189), rgba(181, 216, 224, 0.079),white , white );
}

.con-leftdiv{
    height: 100%;
    width: 50%;
}

.con-leftdiv>img{
    height: 90%;
    width: 100%;
    object-fit: contain;
}

.con-rightdiv{
    height: 93%;
    width: 50%;
    border-radius: 5px;
    padding: 20px;
    margin-right: 3rem;
    margin-top: 1rem;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px; 
    box-sizing: border-box; 
    margin-top: 6px; 
    margin-bottom: 16px;
    resize: vertical 
}
  
input[type=submit] {
    background-color: #25ca2b;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
}
  
input[type=submit]:hover {
    background-color: #1fb424;
}

/********************************* contact us end *********************************/

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
.topfooter{
width:100vw;
}
.t1>img{
    height: 8rem;
    width: 8rem;
    margin-bottom: 10px;
}

.t1{
    height: 15rem;
    width: 33%;
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
    
        <!-- nav bar -->
        <div class="navdiv" >

            <div class="logoandbrand">
                <div class="logo">
                    <a href="#home"><img src="https://img.freepik.com/free-vector/education-business-logo-template-branding-design-vector-education-center-text_53876-136247.jpg?t=st=1709134724~exp=1709138324~hmac=0da2aade431302b4f207a44b0024fbe7c37fd82b29ead7cdf5dfdd966ca2808c&w=740" alt="logoIMG"></a>
                </div>

                <div class="brandname">
                    <a href="#home"><p>Study<p><p id="sectext">Buddy</p></a>
                </div>
            </div>

            <div class="links">

                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#courses">Courses</a></li>
                    <li><a href="#aboutus">About Us</a></li>
                    <li><a href="#contactus">Contact Us</a></li>
                    <li><a href="Doubt-post-section">Ask Doubts</a></li>
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


        <!-- home section -->

        <div class="homesec" id="home">

            <div class="hero-section-left">
                <div class="hero-section-heading">Welcome to <span id="herosubh">Study Buddy</span>,</div>
                <div class="herosub">Learning knows no bounds!</div>
                <div class="hero-section-heading hero-section-sub-heading">
                  We Provide<span class="role"></span>
                </div>
      
                <div class="hero-section-description">
                    Ready to Begin Your Learning Adventure?
                </div>
                
                <div class="herosecbtn">
                    <div class="button-2" id="viewbtn">
                        <a href="#courses">View Courses</a>
                    </div>
    
                    <div class="button-2" id="watchbtn">
                        <a href="https://www.youtube.com/@CodeWithHarry" target="_blank">Watch Videos</a>
                    </div>
                </div>
      
              </div>

            <div class="home-rightimg">
                <img src="https://img.freepik.com/premium-vector/modern-flat-illustration-web-performance_203633-8811.jpg?w=740" alt="">
            </div>

        </div>


        <!-- card section -->
        <div class="cardsec">

            <div class="cardinfo">

                <p class="cardheading">WHY Study Buddy?</p>
                <p class="cardsubheading">Making learning easier and more convenient for you.</p>
                
            </div>

            <div class="cardcontainer">

                <div class="cdiv1 card">
                    <svg class="cardimg1" width="32" height="30" viewBox="0 0 32 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M14.1784 0.532847C13.5056 0.713151 13.2095 0.884868 12.7161 1.3485C11.9267 2.10406 11.7383 2.71366 11.7383 4.52527C11.7383 6.25962 11.9177 6.89497 12.6085 7.62477C13.3531 8.41467 14.1335 8.64648 16.0443 8.64648C17.9731 8.64648 18.7715 8.39749 19.4982 7.59901C20.1889 6.82628 20.3504 6.25103 20.3504 4.52527C20.3504 2.67931 20.162 2.08689 19.3098 1.29699C18.5473 0.584363 18.1256 0.464161 16.2238 0.429817C15.0486 0.412645 14.5372 0.438403 14.1784 0.532847ZM17.6591 2.59345C18.1256 2.82527 18.1974 3.08285 18.1974 4.52527C18.1974 6.52578 18.1346 6.58588 16.0443 6.58588C13.9541 6.58588 13.8913 6.52578 13.8913 4.52527C13.8913 2.52477 13.9451 2.47325 16.0264 2.46467C17.085 2.46467 17.4618 2.49042 17.6591 2.59345Z" fill="#31B4A3"></path>
                        <path d="M15.5957 10.8535C15.0844 11.1025 14.9677 11.4373 14.9677 12.6995V13.7984H11.1102C6.43635 13.7984 6.23899 13.8242 5.27909 14.6399C4.49862 15.2924 4.15772 16.254 4.21155 17.5591C4.2564 18.3747 4.42685 18.6666 4.97408 18.8555C5.28806 18.9585 5.35983 18.9585 5.68279 18.8126C6.19413 18.5808 6.35561 18.2287 6.35561 17.3358C6.35561 16.8636 6.40046 16.5373 6.49017 16.3742C6.76827 15.8591 6.77725 15.8591 11.0654 15.8591H14.9677V16.9495C14.9677 18.2459 15.0754 18.555 15.6316 18.8126C15.9546 18.9585 16.0174 18.9671 16.3403 18.8555C16.9772 18.6409 17.0759 18.4262 17.1028 17.0525L17.1387 15.8591H21.0321C25.3113 15.8591 25.3203 15.8591 25.5984 16.3742C25.697 16.5631 25.7329 16.9237 25.7329 17.851C25.7329 19.2934 25.8316 19.5767 26.3968 19.8429C26.7197 19.9889 26.7825 19.9974 27.1055 19.8858C27.7514 19.6712 27.8411 19.4565 27.868 18.0656C27.9129 16.1939 27.7245 15.5242 26.8991 14.7429C25.9572 13.8328 25.7329 13.7984 20.9783 13.7984H17.1208V12.7252C17.1208 11.9868 17.0759 11.5575 16.9952 11.3515C16.7619 10.8192 16.134 10.5959 15.5957 10.8535Z" fill="#31B4A3"></path>
                        <path d="M3.43152 21.1307C2.24735 21.4054 1.33231 22.3155 1.07215 23.4832C0.93759 24.11 0.946561 26.265 1.09907 26.8575C1.38614 28.0337 2.31912 28.9095 3.55712 29.1585C4.212 29.2873 6.46371 29.2787 7.08271 29.1327C8.31173 28.858 9.22677 27.965 9.48693 26.7802C9.61252 26.1963 9.61252 24.0671 9.48693 23.4832C9.22677 22.2984 8.31173 21.4054 7.08271 21.1307C6.44577 20.9847 4.05949 20.9847 3.43152 21.1307ZM6.89432 23.1999C7.36081 23.4317 7.43258 23.6893 7.43258 25.1317C7.43258 27.1322 7.36978 27.1923 5.27954 27.1923C3.18931 27.1923 3.12651 27.1322 3.12651 25.1317C3.12651 23.1312 3.18033 23.0797 5.2616 23.0711C6.32018 23.0711 6.69696 23.0969 6.89432 23.1999Z" fill="#31B4A3"></path>
                        <path d="M14.1963 21.1307C13.5953 21.2681 13.0122 21.6029 12.6085 22.0322C11.9177 22.762 11.7383 23.3974 11.7383 25.1317C11.7383 26.9433 11.9267 27.5529 12.7251 28.3085C13.5235 29.0726 14.1515 29.2529 16.0713 29.2529C17.9731 29.2529 18.7715 29.0039 19.4982 28.2055C20.1889 27.4327 20.3504 26.8575 20.3504 25.1317C20.3504 23.406 20.1889 22.8307 19.4982 22.058C19.0855 21.6029 18.5024 21.2767 17.8475 21.1307C17.2106 20.9847 14.8243 20.9847 14.1963 21.1307ZM17.6591 23.1999C18.1256 23.4317 18.1974 23.6893 18.1974 25.1317C18.1974 27.1322 18.1346 27.1923 16.0443 27.1923C14.5372 27.1923 14.2681 27.1236 14.0259 26.6772C13.9272 26.4883 13.8913 26.1191 13.8913 25.1317C13.8913 23.1312 13.9451 23.0797 16.0264 23.0711C17.085 23.0711 17.4618 23.0969 17.6591 23.1999Z" fill="#31B4A3"></path>
                        <path d="M24.9708 21.1307C23.7866 21.414 22.9074 22.264 22.6293 23.406C22.4768 23.9984 22.4679 26.1534 22.6024 26.7802C22.746 27.4156 22.9882 27.8363 23.4906 28.3085C24.289 29.0726 24.9169 29.2529 26.8367 29.2529C28.7386 29.2529 29.537 29.0039 30.2636 28.2055C30.9544 27.4327 31.1159 26.8575 31.1159 25.1317C31.1159 23.406 30.9544 22.8307 30.2636 22.058C29.851 21.6029 29.2679 21.2767 28.613 21.1307C27.976 20.9847 25.5898 20.9847 24.9708 21.1307ZM28.4246 23.1999C28.8911 23.4317 28.9629 23.6893 28.9629 25.1317C28.9629 27.1322 28.9001 27.1923 26.8098 27.1923C24.7196 27.1923 24.6568 27.1322 24.6568 25.1317C24.6568 23.1312 24.7106 23.0797 26.7919 23.0711C27.8504 23.0711 28.2272 23.0969 28.4246 23.1999Z" fill="#31B4A3"></path>
                    </svg>

                    <p>Data Structure</p>

                    <p class="cardcont">Data structures are the problem-solving pillars of coding. Learn all the foundational knowledge about all of the popular data structure that you need, to be well-versed in interviews.</p>
                </div>

                <div class="cdiv2 card">
                    <svg class="cardimg2" width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.40312 0.114844C5.27734 0.180469 5.15156 0.306251 5.08594 0.4375C4.97656 0.645312 4.97656 0.749219 4.97656 5.74219C4.97656 10.7352 4.97656 10.8391 5.08594 11.0469C5.15703 11.1891 5.27187 11.3039 5.41406 11.375C5.62734 11.4844 5.71484 11.4844 15.0938 11.4844C24.4727 11.4844 24.5602 11.4844 24.7734 11.375C24.9156 11.3039 25.0305 11.1891 25.1016 11.0469C25.2109 10.8391 25.2109 10.7352 25.2109 5.74219C25.2109 0.749219 25.2109 0.645312 25.1016 0.4375C25.0305 0.295313 24.9156 0.180469 24.7734 0.109375C24.5602 0 24.4727 0 15.0828 0C5.75313 0.00546932 5.6 0.00546932 5.40312 0.114844ZM8.06094 1.76094C8.00625 1.94688 7.77656 2.29688 7.57969 2.51016C7.39375 2.70703 6.93437 3.02422 6.74297 3.08438L6.61719 3.12266V2.38438V1.64062H7.36094H8.09922L8.06094 1.76094ZM20.3984 1.72266C20.3984 1.77188 20.4477 1.96328 20.5133 2.14922C20.9125 3.35234 22.0773 4.45156 23.2859 4.75781L23.5703 4.83437V5.75313C23.5703 6.58984 23.5594 6.67188 23.4773 6.67188C23.4227 6.67188 23.2148 6.73203 23.007 6.80312C21.9133 7.19141 20.8742 8.24688 20.5133 9.33516C20.4477 9.52109 20.3984 9.7125 20.3984 9.76172C20.3984 9.83281 19.8242 9.84375 15.1047 9.84375H9.81094L9.73438 9.55938C9.42812 8.36172 8.37812 7.22969 7.18047 6.80312C6.97266 6.73203 6.76484 6.67188 6.71562 6.67188C6.62812 6.67188 6.61719 6.58984 6.61719 5.74766V4.82344L6.81953 4.78516C6.93437 4.76328 7.175 4.68672 7.35547 4.61016C8.50391 4.12891 9.44453 3.0625 9.73438 1.925L9.81094 1.64062H15.1047C19.8242 1.64062 20.3984 1.65156 20.3984 1.72266ZM23.5703 2.38438V3.12266L23.45 3.08438C23.2531 3.02422 22.7937 2.70703 22.6078 2.51016C22.4109 2.29688 22.1812 1.94688 22.1266 1.76094L22.0883 1.64062H22.8266H23.5703V2.38438ZM7.08203 8.575C7.49766 8.83203 7.94609 9.35703 8.06094 9.71797L8.09922 9.84375H7.36094H6.61719V9.1V8.36172L6.74297 8.4C6.80859 8.42188 6.96172 8.49844 7.08203 8.575ZM23.5703 9.10547V9.84375H22.8266H22.0883L22.1266 9.71797C22.1977 9.48828 22.5148 9.05078 22.7609 8.83203C22.9852 8.63516 23.4227 8.36719 23.532 8.36719C23.5539 8.36719 23.5703 8.70078 23.5703 9.10547Z" fill="#E5303E"></path>
                        <path d="M14.5198 3.3581C14.0605 3.47294 13.7159 3.66982 13.3659 4.01982C12.398 4.98232 12.398 6.49716 13.3714 7.46513C14.7823 8.88153 17.1722 8.11044 17.5112 6.13075C17.6425 5.35966 17.3909 4.59403 16.8167 4.01435C16.2042 3.39638 15.3456 3.15028 14.5198 3.3581ZM15.4769 5.03153C15.723 5.15732 15.9144 5.46903 15.9144 5.74247C15.9144 6.1581 15.5097 6.56278 15.0886 6.56278C14.837 6.56278 14.498 6.3495 14.3776 6.11435C14.1753 5.7206 14.3011 5.28857 14.6894 5.05341C14.9519 4.89482 15.1925 4.88935 15.4769 5.03153Z" fill="#E5303E"></path>
                        <path d="M9.77812 5.03672C9.54297 5.15703 9.35156 5.47969 9.35156 5.74219C9.35156 6.01562 9.54297 6.32734 9.78906 6.45312C9.90391 6.51328 10.0789 6.5625 10.1719 6.5625C10.5875 6.5625 10.9922 6.15781 10.9922 5.74219C10.9922 5.46875 10.8008 5.15703 10.5547 5.03125C10.2867 4.89453 10.0406 4.89453 9.77812 5.03672Z" fill="#E5303E"></path>
                        <path d="M19.6219 5.03672C19.3867 5.15703 19.1953 5.47969 19.1953 5.74219C19.1953 6.01562 19.3867 6.32734 19.6328 6.45312C19.7477 6.51328 19.9227 6.5625 20.0156 6.5625C20.2891 6.5625 20.6008 6.37109 20.7266 6.125C20.7867 6.01016 20.8359 5.83516 20.8359 5.74219C20.8359 5.46875 20.6445 5.15703 20.3984 5.03125C20.1305 4.89453 19.8844 4.89453 19.6219 5.03672Z" fill="#E5303E"></path>
                        <path d="M8.34537 15.2086C7.6399 15.2633 6.89615 15.4547 5.8024 15.8594C5.31568 16.0398 4.88912 16.1875 4.85083 16.1875C4.81255 16.182 4.73599 16.0836 4.67584 15.9578C4.53912 15.6734 4.35318 15.5312 4.05787 15.493C3.86646 15.4656 3.58209 15.5531 2.14927 16.0781C1.21959 16.4172 0.404741 16.7453 0.333648 16.8055C0.0438039 17.068 0.0547414 16.8984 0.0547414 22.3125C0.0547414 27.2508 0.0547414 27.3547 0.164116 27.5625C0.23521 27.7047 0.350054 27.8195 0.492241 27.8906C0.694585 27.9945 0.809429 28 2.63599 28H4.56646L6.25084 27.3875C8.06099 26.7313 8.21959 26.6438 8.29068 26.2664C8.31255 26.157 8.3563 26.0859 8.40552 26.0859C8.44927 26.0859 10.1008 26.3102 12.0696 26.5781C14.0383 26.8516 15.7774 27.0703 15.9415 27.0703C16.3407 27.0703 16.9915 26.9391 17.3852 26.7805C17.5657 26.7094 19.7751 25.5664 22.2961 24.2484C26.4141 22.0883 26.9063 21.8148 27.1852 21.5469C28.1805 20.5734 28.1915 19.0148 27.2016 18.0141C26.6165 17.418 25.7305 17.1609 24.8993 17.3359C24.7571 17.3688 23.4829 17.932 22.0665 18.5938L19.5016 19.7914L19.4305 19.518C19.2282 18.7359 18.5501 18.0141 17.8063 17.8008C17.6532 17.757 16.9641 17.6203 16.2696 17.5C14.4266 17.1773 14.0547 17.0461 12.8243 16.2859C11.4461 15.4383 9.96412 15.0828 8.34537 15.2086ZM10.079 16.9367C10.8227 17.0789 11.4571 17.3469 12.2336 17.85C13.2454 18.5008 13.9563 18.7469 15.7227 19.0641C17.4235 19.3648 17.4508 19.3758 17.6586 19.6055C17.8774 19.857 17.9211 20.1141 17.8008 20.4258C17.6915 20.7211 17.4618 20.8961 17.1555 20.9289C17.0133 20.9453 15.9305 20.7758 14.2844 20.4859C12.8352 20.2289 11.5774 20.0156 11.4899 20.0156C11.3094 20.0156 11.0196 20.1961 10.861 20.4148C10.7079 20.6227 10.7079 21.0547 10.861 21.257C11.1071 21.5797 11.1235 21.5852 14.0055 22.0992C15.5204 22.3672 16.9149 22.5859 17.0954 22.5859C17.5274 22.5859 18.0524 22.4219 18.4024 22.1813C18.5555 22.0773 20.1524 21.3008 21.9626 20.4586C25.4024 18.8508 25.468 18.8234 25.8071 19.0039C26.3485 19.2828 26.4579 19.9938 26.0149 20.382C25.9165 20.4695 23.8055 21.6016 21.3282 22.8977C18.118 24.582 16.7126 25.2875 16.461 25.3531C16.2258 25.4133 15.9907 25.4352 15.7501 25.4133C15.143 25.3641 7.79849 24.3359 7.76021 24.2922C7.7274 24.2539 5.43599 17.9867 5.40318 17.8391C5.38677 17.757 7.04927 17.1172 7.65084 16.975C8.44927 16.7891 9.24771 16.7727 10.079 16.9367ZM4.97662 21.4867C5.78599 23.7234 6.44771 25.5609 6.44224 25.5664C6.4313 25.5719 5.94458 25.7523 5.35943 25.9711L4.29302 26.3594H2.99146H1.69537L1.7063 22.1703L1.72271 17.9812L2.57037 17.6695C3.03521 17.4945 3.43443 17.3688 3.4563 17.3852C3.47818 17.4016 4.16177 19.25 4.97662 21.4867Z" fill="#E5303E"></path>
                        </svg>
                    <p>Placement Preparation</p>

                    <p class="cardcont">Ace the placement interviews by being knowledgeable in all well-known data structures, popular problem-solving methods, and core computer sciences.</p>
                </div>

                <div class="cdiv3 card">

                    <svg class="cardimg3" width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.9652 0.0325222C8.73942 0.273148 7.09332 0.803617 5.41442 1.81534C4.53942 2.34034 3.9816 2.78877 3.14489 3.63096C2.36285 4.41846 1.88707 5.03096 1.39489 5.88955C-0.579333 9.31846 -0.442614 13.4856 1.74489 16.7997L2.1277 17.3794L1.08317 19.9388C0.120667 22.3122 0.0386358 22.531 0.033167 22.8591C0.0276983 23.2856 0.164417 23.5481 0.508948 23.7778C0.683948 23.8927 0.793323 23.9255 1.06129 23.9255C1.36207 23.9255 1.49879 23.8817 2.43395 23.4661C3.00817 23.2146 4.35348 22.6185 5.43629 22.1427L7.39411 21.2731L7.95192 21.4591C8.2527 21.563 8.76676 21.7052 9.08942 21.7763L9.67457 21.9075L9.88786 22.2302C10.0027 22.4106 10.2871 22.7825 10.5168 23.0614C12.1027 24.9481 14.4925 26.1786 17.1285 26.463C18.4957 26.6161 20.0871 26.4521 21.3886 26.0364L21.8699 25.8778L24.2105 26.9224C26.4527 27.9177 26.5675 27.9614 26.9175 27.9669C27.2402 27.9724 27.3058 27.956 27.5136 27.8083C27.8363 27.5786 27.973 27.2942 27.9675 26.8786C27.9621 26.5888 27.8582 26.3099 27.1418 24.5544L26.3269 22.5583L26.6113 22.1208C27.448 20.8302 27.9019 19.4083 27.9785 17.8552C28.0769 15.9028 27.4644 13.9396 26.2613 12.3263C25.8074 11.7192 24.9324 10.8497 24.3527 10.4231L23.9152 10.106L23.8441 9.6083C23.5925 7.77627 22.7886 5.94424 21.5636 4.4294C21.3777 4.20518 20.9621 3.75674 20.6394 3.43955C18.8129 1.66221 16.5379 0.552053 13.8636 0.136429C13.3332 0.0543976 11.4136 -0.016695 10.9652 0.0325222ZM13.0214 2.2419C17.4074 2.69034 20.9074 5.69268 21.6402 9.64112C21.7824 10.4013 21.766 11.8833 21.6129 12.6106C21.3996 13.6114 21.1207 14.3278 20.5738 15.2849C20.3004 15.7661 20.2621 15.8646 20.2621 16.1325C20.2621 16.8981 21.055 17.4341 21.7496 17.1442C22.0175 17.0294 22.1215 16.931 22.3566 16.57C22.8816 15.7552 23.423 14.4536 23.6636 13.4364L23.8113 12.8349L24.1011 13.1466C24.4894 13.5677 24.8941 14.1747 25.184 14.7817C26.2449 16.9911 25.9386 19.5122 24.3746 21.4864C24.0629 21.8802 23.9371 22.2411 24.0082 22.5528C24.03 22.6622 24.2269 23.1927 24.4457 23.7341C24.6644 24.281 24.8285 24.7349 24.8121 24.7513C24.8011 24.7677 24.3418 24.5817 23.8004 24.3411C21.8589 23.4771 21.9847 23.5044 21.0277 23.838C19.9777 24.2099 19.4363 24.2974 18.266 24.3028C17.4949 24.3028 17.1285 24.281 16.7347 24.2044C15.3293 23.931 14.0441 23.3239 12.9886 22.4435L12.6058 22.1208L12.9613 22.0771C14.4652 21.9021 15.5371 21.656 16.5925 21.2513C17.9652 20.7153 18.266 20.4747 18.3097 19.8513C18.3425 19.4138 18.184 19.0802 17.8394 18.8614C17.4621 18.6208 17.1066 18.6372 16.4832 18.9216C13.88 20.1192 10.8996 20.2341 8.23629 19.2333C7.31207 18.8888 7.42145 18.8669 5.14645 19.8731C4.08551 20.3435 3.19957 20.7153 3.18317 20.7044C3.16676 20.688 3.44567 19.9661 3.79567 19.0966C4.14567 18.2271 4.44645 17.4286 4.46832 17.3192C4.51754 17.0185 4.39176 16.6739 4.12379 16.3458C3.50582 15.5966 2.90426 14.5138 2.60348 13.6169C2.31364 12.7419 2.22067 12.1349 2.22067 11.0739C2.22067 9.98565 2.29176 9.5044 2.5816 8.58565C3.8777 4.48956 8.35661 1.77159 13.0214 2.2419Z" fill="#3713FD"></path>
                        <path d="M11.1561 4.51719C10.0952 4.74141 9.18193 5.35938 8.56943 6.26172C7.95146 7.16953 7.69443 8.54766 8.03896 9.10547C8.10458 9.21484 8.26318 9.36797 8.38349 9.45C8.56943 9.57578 8.66786 9.59766 8.96865 9.59766C9.26943 9.59766 9.36786 9.57578 9.5538 9.45C9.88193 9.23672 10.0022 8.99609 10.0624 8.46563C10.1554 7.65625 10.5272 7.10391 11.2054 6.78672C11.4624 6.66641 11.5882 6.64453 11.9765 6.64453C12.3921 6.64453 12.4851 6.66641 12.8077 6.825C13.2288 7.03281 13.5186 7.32812 13.721 7.76016C13.8413 8.01719 13.8632 8.14297 13.8632 8.53125C13.8632 9.3625 13.5241 9.86562 12.6765 10.3141C11.5116 10.9211 10.8171 12.0477 10.8991 13.1906C10.9429 13.8688 11.3311 14.2461 11.9765 14.2461C12.6163 14.2461 12.9772 13.8961 13.0647 13.1906C13.1304 12.6711 13.2616 12.4633 13.6499 12.2828C14.7929 11.7414 15.6186 10.757 15.9522 9.54844C16.0671 9.12734 16.0835 8.02813 15.9741 7.60156C15.6569 6.33281 14.7272 5.24453 13.5296 4.74141C12.8296 4.44609 11.8944 4.35859 11.1561 4.51719Z" fill="#3713FD"></path>
                        <path d="M11.5507 15.6454C11.2882 15.722 10.9546 16.0829 10.878 16.3618C10.7522 16.8486 10.9436 17.3571 11.3593 17.6142C11.671 17.8111 12.2014 17.8001 12.5077 17.5978C12.8468 17.3736 12.9889 17.1056 12.9889 16.679C12.9889 16.2579 12.8468 15.9845 12.5241 15.7712C12.2889 15.6126 11.8405 15.5579 11.5507 15.6454Z" fill="#3713FD"></path>
                        </svg>

                    <p>Hand Picked Question</p>

                    <p class="cardcont">Get access to hand-picked coding interview questions across categories & difficulty levels that will prepare you for every interview you would encounter.</p>
                    
                </div>

                <div class="cdiv4 card">

                    <svg class="cardimg4" width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.90639 0.027298C5.86264 0.0382366 5.63842 0.0765171 5.4142 0.109329C4.14545 0.317142 2.90405 0.967924 1.93608 1.93589C1.01186 2.86558 0.410296 3.95933 0.13139 5.24995C0.0329523 5.69292 0.0274835 6.11949 0.0274835 13.9726C0.0274835 22.9304 0.0110773 22.482 0.333734 23.4718C0.650921 24.4507 1.18139 25.3039 1.93608 26.064C2.69623 26.8187 3.54936 27.3492 4.52826 27.6664C5.5017 27.9835 5.28842 27.9726 11.5447 27.9726H17.3142L17.5384 27.825C17.8775 27.6007 18.0197 27.3328 18.0197 26.9062C18.0197 26.4796 17.8775 26.2117 17.5384 25.9875L17.3142 25.8398L11.572 25.8125C5.35405 25.7796 5.73686 25.796 4.92748 25.4898C3.93217 25.1125 2.88217 24.0625 2.51576 23.089C2.19311 22.2359 2.21498 22.8593 2.21498 14C2.21498 5.14058 2.19311 5.76402 2.51576 4.91089C2.90405 3.86636 3.97045 2.84917 5.08061 2.45542C5.86811 2.17652 5.75873 2.18199 14.2462 2.19839C22.8923 2.2148 22.2306 2.19292 23.0892 2.51558C23.5212 2.67417 24.1556 3.10074 24.5275 3.48355C24.9158 3.86636 25.3259 4.4898 25.4845 4.91089C25.8017 5.75308 25.7798 5.33746 25.8126 11.5937C25.84 17.2375 25.84 17.3687 25.9494 17.5492C26.0095 17.6531 26.1517 17.8117 26.2665 17.9046C26.4634 18.0632 26.5072 18.0742 26.9064 18.0742C27.3001 18.0742 27.3494 18.0632 27.5462 17.9046C27.6611 17.8171 27.8087 17.6312 27.8798 17.4945L28.0056 17.2539L27.9837 11.4296C27.9673 6.19058 27.9564 5.56714 27.8744 5.23355C27.2236 2.59761 25.4408 0.787455 22.8595 0.147612C22.4001 0.0327682 22.3455 0.0327682 14.1915 0.0218296C9.67983 0.0163612 5.95014 0.0163612 5.90639 0.027298Z" fill="#1378AF"></path>
                        <path d="M6.34922 5.50703C5.86797 5.67656 5.46875 6.25078 5.46875 6.78125C5.46875 7.50312 6.11406 8.14844 6.83594 8.14844C7.16406 8.14844 7.54688 7.98437 7.79297 7.73828C8.82109 6.71016 7.72734 5.02031 6.34922 5.50703Z" fill="#1378AF"></path>
                        <path d="M11.0575 5.85703C10.8005 5.93359 10.4614 6.28906 10.3848 6.57344C10.2591 7.06016 10.4505 7.56875 10.8661 7.82578L11.0739 7.95703H16.4333H21.7927L22.0005 7.82578C22.1153 7.75469 22.2739 7.59609 22.3559 7.47578C22.4817 7.28984 22.5036 7.19141 22.5036 6.89062C22.5036 6.58984 22.4817 6.49141 22.3559 6.30547C22.2739 6.18516 22.1153 6.02656 22.0005 5.95547L21.7927 5.82422L16.5153 5.81328C13.2833 5.80781 11.1669 5.82422 11.0575 5.85703Z" fill="#1378AF"></path>
                        <path d="M6.19032 10.232C5.93328 10.3086 5.59422 10.6641 5.51766 10.9484C5.39188 11.4352 5.58328 11.9437 5.99891 12.2008L6.20672 12.332H13.9997H21.7927L22.0005 12.2008C22.1153 12.1297 22.2739 11.9711 22.3559 11.8508C22.4817 11.6648 22.5036 11.5664 22.5036 11.2656C22.5036 10.9648 22.4817 10.8664 22.3559 10.6805C22.2739 10.5602 22.1153 10.4016 22.0005 10.3305L21.7927 10.1992L14.0817 10.1883C9.31297 10.1828 6.29969 10.1992 6.19032 10.232Z" fill="#1378AF"></path>
                        <path d="M6.19032 14.607C5.93328 14.6836 5.59422 15.0445 5.51766 15.3234C5.39188 15.8102 5.58328 16.3187 5.99891 16.5758L6.20672 16.707H8.53094H10.8552L11.063 16.5758C11.1778 16.5047 11.3364 16.3461 11.4184 16.2258C11.5442 16.0398 11.5661 15.9414 11.5661 15.6406C11.5661 15.3398 11.5442 15.2414 11.4184 15.0555C11.3364 14.9352 11.1778 14.7766 11.063 14.7055L10.8552 14.5742L8.61297 14.5633C7.295 14.5578 6.29422 14.5742 6.19032 14.607Z" fill="#1378AF"></path>
                        <path d="M15.2688 14.6066C14.9078 14.7105 14.5469 15.2137 14.5469 15.6129C14.5469 15.8754 15.2633 19.3316 15.4219 19.8238C15.75 20.8465 16.2422 21.716 16.9586 22.5582C17.4781 23.1707 21.4102 27.0754 21.7109 27.2723C22.0828 27.5238 22.4602 27.7043 22.9141 27.841C23.4992 28.027 24.5109 28.027 25.1016 27.841C26.4688 27.4199 27.4148 26.4738 27.8414 25.1012C28.0273 24.5105 28.0273 23.4988 27.8414 22.9137C27.5297 21.9184 27.4258 21.7816 25.025 19.3699C22.843 17.1715 22.4 16.7668 21.6836 16.302C20.6445 15.6238 19.8898 15.3723 17.5 14.8965C15.657 14.5355 15.5695 14.5246 15.2688 14.6066ZM18.0305 17.2316C18.9164 17.4121 19.4852 17.5871 19.9227 17.8059C20.6937 18.1996 20.9562 18.4238 23.2312 20.6934C25.818 23.2691 25.7852 23.2254 25.7852 24.0074C25.7797 24.3629 25.7523 24.5324 25.6648 24.7293C25.5008 25.0902 25.1398 25.4566 24.7789 25.6316C24.5164 25.7629 24.407 25.7848 24.0078 25.7848C23.2258 25.7848 23.2695 25.8176 20.6937 23.2309C18.4242 20.9559 18.2 20.6934 17.8062 19.9223C17.5875 19.4848 17.4125 18.916 17.232 18.0301C17.0406 17.1059 17.0352 17.0621 17.1445 17.0621C17.1883 17.0621 17.5875 17.1387 18.0305 17.2316Z" fill="#1378AF"></path>
                        </svg>

                    <p>Curated Content</p>

                    <p class="cardcont">Learn in-depth conceptual overviews, how to approach an algorithm, how to implement it & how to optimize it.</p>
                    
                </div>

                <div class="cdiv5 card">
                    
                    <svg class="cardimg5" width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6.375 2.125C4.03888 2.125 2.125 4.03888 2.125 6.375V27.625C2.125 29.9611 4.03888 31.875 6.375 31.875H17C17.2818 31.875 17.552 31.7631 17.7513 31.5638C17.9506 31.3645 18.0625 31.0943 18.0625 30.8125C18.0625 30.5307 17.9506 30.2605 17.7513 30.0612C17.552 29.8619 17.2818 29.75 17 29.75H6.375C5.17937 29.75 4.25 28.8206 4.25 27.625V6.375C4.25 5.17937 5.17937 4.25 6.375 4.25H21.25C22.4456 4.25 23.375 5.17937 23.375 6.375V8.5C23.375 8.78179 23.4869 9.05204 23.6862 9.2513C23.8855 9.45056 24.1557 9.5625 24.4375 9.5625C24.7193 9.5625 24.9895 9.45056 25.1888 9.2513C25.3881 9.05204 25.5 8.78179 25.5 8.5V6.375C25.5 4.03888 23.5861 2.125 21.25 2.125H6.375Z" fill="#1A9EFD"></path>
                        <path d="M24.4375 10.625C20.3425 10.625 17 13.9675 17 18.0625C17 20.5837 18.2704 22.8152 20.2 24.1615V30.8125C20.2001 31.0049 20.2525 31.1937 20.3516 31.3587C20.4507 31.5237 20.5928 31.6587 20.7626 31.7492C20.9324 31.8398 21.1236 31.8825 21.3158 31.8729C21.508 31.8632 21.694 31.8016 21.8539 31.6945L24.4375 29.9658L27.0211 31.6945C27.181 31.8016 27.367 31.8632 27.5592 31.8729C27.7514 31.8825 27.9426 31.8398 28.1124 31.7492C28.2822 31.6587 28.4243 31.5237 28.5234 31.3587C28.6225 31.1937 28.6749 31.0049 28.675 30.8125V24.1615C30.6046 22.8152 31.875 20.5837 31.875 18.0625C31.875 13.9675 28.5325 10.625 24.4375 10.625ZM24.4375 12.75C27.3841 12.75 29.75 15.1159 29.75 18.0625C29.75 21.0091 27.3841 23.375 24.4375 23.375C21.4909 23.375 19.125 21.0091 19.125 18.0625C19.125 15.1159 21.4909 12.75 24.4375 12.75ZM22.325 25.1887C22.9953 25.3883 23.704 25.5 24.4375 25.5C25.171 25.5 25.8797 25.3883 26.55 25.1887V28.8245L25.0289 27.8055C24.854 27.6883 24.6481 27.6257 24.4375 27.6257C24.2269 27.6257 24.021 27.6883 23.8461 27.8055L22.325 28.8245V25.1887Z" fill="#1A9EFD"></path>
                        <path d="M8.5 7.4375C8.21821 7.4375 7.94796 7.54944 7.7487 7.7487C7.54944 7.94796 7.4375 8.21821 7.4375 8.5C7.4375 8.78179 7.54944 9.05204 7.7487 9.2513C7.94796 9.45056 8.21821 9.5625 8.5 9.5625H11.6875C11.9693 9.5625 12.2395 9.45056 12.4388 9.2513C12.6381 9.05204 12.75 8.78179 12.75 8.5C12.75 8.21821 12.6381 7.94796 12.4388 7.7487C12.2395 7.54944 11.9693 7.4375 11.6875 7.4375H8.5ZM8.5 11.6875C8.21821 11.6875 7.94796 11.7994 7.7487 11.9987C7.54944 12.198 7.4375 12.4682 7.4375 12.75C7.4375 13.0318 7.54944 13.302 7.7487 13.5013C7.94796 13.7006 8.21821 13.8125 8.5 13.8125H14.875C15.1568 13.8125 15.427 13.7006 15.6263 13.5013C15.8256 13.302 15.9375 13.0318 15.9375 12.75C15.9375 12.4682 15.8256 12.198 15.6263 11.9987C15.427 11.7994 15.1568 11.6875 14.875 11.6875H8.5ZM8.5 15.9375C8.21821 15.9375 7.94796 16.0494 7.7487 16.2487C7.54944 16.448 7.4375 16.7182 7.4375 17C7.4375 17.2818 7.54944 17.552 7.7487 17.7513C7.94796 17.9506 8.21821 18.0625 8.5 18.0625H11.6875C11.9693 18.0625 12.2395 17.9506 12.4388 17.7513C12.6381 17.552 12.75 17.2818 12.75 17C12.75 16.7182 12.6381 16.448 12.4388 16.2487C12.2395 16.0494 11.9693 15.9375 11.6875 15.9375H8.5Z" fill="#1A9EFD"></path>
                        </svg>

                    <p>Learn from the best</p>

                    <p class="cardcont">Get access to lectures and get mentored by one of the best in the market.</p>

                </div>

                <div class="cdiv6 card">
                    
                    <svg class="cardimg6" width="24" height="28" viewBox="0 0 24 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11.0539 0.0820312C9.92734 0.295313 8.9375 0.814844 8.13906 1.61328C6.48203 3.27031 6.06641 5.80781 7.11094 7.89141C7.41172 8.4875 7.71797 8.90859 8.2375 9.41172L8.71875 9.88203L8.45625 9.98047C8.01328 10.15 7.23672 10.5547 6.75547 10.8719C6.29609 11.1727 5.47578 11.8344 5.22969 12.1023L5.10391 12.2336L4.24531 11.9109C3.30469 11.5555 3.08047 11.5281 2.76875 11.7469C2.44609 11.982 2.42969 12.0805 2.42969 13.7977V15.3562L2.12344 15.4547C1.04609 15.7937 0.242188 16.8984 0.242188 18.0469C0.242188 19.1953 1.04609 20.3 2.12344 20.6391L2.42969 20.7375V22.4164C2.42969 23.9477 2.44062 24.1063 2.53359 24.2812C2.58828 24.3852 2.70859 24.5164 2.79609 24.5656C3.08047 24.7352 11.8469 28 12.0055 28C12.1586 28 20.7281 24.8172 21.1383 24.6039C21.275 24.5383 21.3898 24.418 21.4609 24.2812C21.5648 24.0789 21.5703 23.9641 21.5703 22.4V20.7375L21.8766 20.6391C23.1945 20.2289 24.0148 18.7469 23.6758 17.418C23.4352 16.4773 22.7898 15.7664 21.9039 15.4711L21.5703 15.3562V13.8031C21.5703 12.3484 21.5648 12.2336 21.4609 12.0312C21.3352 11.7906 21.0234 11.5938 20.7609 11.5938C20.668 11.5938 20.2141 11.7359 19.7492 11.9164L18.8961 12.2336L18.7703 12.1023C18.0758 11.3586 16.5664 10.3687 15.5437 9.98047L15.2867 9.8875L15.768 9.41172C16.6648 8.52578 17.1789 7.56875 17.3867 6.37109C17.8734 3.58203 16.0687 0.847656 13.2852 0.158594C12.7 0.0109386 11.6227 -0.0273438 11.0539 0.0820312ZM12.7273 1.71719C13.8867 1.94141 14.8875 2.7125 15.4125 3.78438C15.9648 4.91641 15.9648 6.02109 15.407 7.16406C15.1992 7.59609 15.0789 7.76016 14.6852 8.15391C14.2914 8.54766 14.1273 8.66797 13.6953 8.87578C12.5523 9.43359 11.4477 9.43359 10.3047 8.87578C9.87266 8.66797 9.70859 8.54766 9.31484 8.15391C8.92656 7.76562 8.80078 7.59609 8.5875 7.16406C8.03516 6.0375 8.03516 4.9 8.5875 3.77344C8.80078 3.34141 8.92656 3.17188 9.31484 2.78359C9.70312 2.39531 9.87266 2.26953 10.3047 2.05625C11.1031 1.6625 11.8742 1.55859 12.7273 1.71719ZM13.5969 11.1016C14.3133 11.2492 14.975 11.4898 15.6695 11.8508C16.2 12.1242 17.0914 12.7312 17.1297 12.8461C17.1352 12.868 15.9867 13.3273 14.5703 13.8578L12 14.8203L9.44609 13.8633C8.04609 13.3383 6.88125 12.8898 6.86484 12.8789C6.79375 12.8078 7.69609 12.1844 8.40703 11.8125C9.2 11.3969 10.0695 11.1234 11.0156 10.9922C11.5844 10.9156 12.9898 10.9703 13.5969 11.1016ZM7.69609 14.957L11.1797 16.2641V21.1258C11.1797 24.9922 11.1633 25.982 11.1141 25.9656C11.0758 25.9492 9.47344 25.3531 7.55937 24.6367L4.07031 23.3297V22.0391V20.743L4.29453 20.6773C4.59531 20.5844 4.96172 20.2125 5.07109 19.8789C5.20781 19.4852 5.20781 16.6086 5.07109 16.2148C4.96172 15.8813 4.59531 15.5094 4.29453 15.4164L4.07031 15.3508V14.4758C4.07031 13.8031 4.08672 13.6117 4.14141 13.6281C4.17422 13.6445 5.77656 14.2406 7.69609 14.957ZM19.9297 14.4812V15.3508L19.7055 15.4164C19.3937 15.5094 19.0383 15.8813 18.9234 16.2312C18.8414 16.4719 18.8305 16.7234 18.8469 18.1672L18.8633 19.8242L19.0164 20.0867C19.1859 20.3766 19.5195 20.6445 19.7711 20.6992L19.9297 20.7375V22.0336V23.3297L16.4461 24.6367C14.5266 25.3531 12.9242 25.9492 12.8914 25.9656C12.8367 25.982 12.8203 24.9922 12.8203 21.1258V16.2641L16.3367 14.9461C18.2672 14.2188 19.8641 13.6227 19.8914 13.6227C19.9133 13.6172 19.9297 14.0055 19.9297 14.4812ZM3.52344 18.0523V19.157L3.06953 19.1297C2.71406 19.1133 2.56641 19.0805 2.40781 18.982C1.81172 18.6102 1.71875 17.7734 2.21094 17.2812C2.4625 17.0297 2.65391 16.9641 3.15703 16.9586L3.52344 16.9531V18.0523ZM21.5922 17.1117C21.707 17.1828 21.8602 17.3414 21.9422 17.4617C22.068 17.6477 22.0898 17.7461 22.0898 18.0469C22.0898 18.3477 22.068 18.4461 21.9422 18.632C21.7125 18.982 21.4664 19.1023 20.9305 19.1297L20.4766 19.157V18.0469V16.9367L20.9305 16.9641C21.2859 16.9805 21.4336 17.0133 21.5922 17.1117Z" fill="#F97115"></path>
                        </svg>

                    <p>Learn Something new</p>

                    <p class="cardcont">Learn new concepts daily, increase your productivity & reach your full potential.</p>

                </div>

            </div>

        </div>


        <!-- courses section -->
        
        
        
        
        
        <div class="courses" id="courses">
            <p class="subheading">Courses</p>

            <div class="coursecardcontainer">

                <div class="child">
                <%for(AllCourses ac:list) {%>
                	
                    <div class="cards">
                        <img src="<%=ac.getImg() %>" alt="Course 1" class="course-image">
                        <h2 class="course-heading"><%=ac.getcName() %></h2>
                        <p class="course-description"><%=ac.getcDescription()%> </p>
                        <p class="course-price">Price : &#x20B9; <%=ac.getPrice() %></p>
                        <a href="cource?id=<%=ac.getId() %>" class="apply-button">Apply</a>
                    </div>
                	
                	
               <%}%>
        </div>
        <!-- about us  -->
        <div class="aboutus" id="aboutus">
            <p class="subheading" id="abtop">About US</p>
            
            <div class="aboutcontainer">
            
                <div class="abinfo">

                    <div class="abcont0">
                        <p class="abheading">Welcome To Study Buddy</p>
                        <p class="abdescription">We believe in the transformative power of education. Our mission is to empower learners of all ages and backgrounds to unlock their full potential through accessible and innovative learning experiences. Whether you're a student, educator, or lifelong learner, we are here to inspire, guide, and support you on your educational journey.</p>
                    </div>

                    <div class="abcont1">
                        <p  class="abheading">Our Vision</p>
                        <p class="abdescription">To create a world where education knows no boundaries. We envision a future where learning is a lifelong adventure, accessible to anyone, anywhere.</p>
                    </div>

                    <div class="abcont2">
                        <p class="abheading">Who We Are?</p>
                        <p class="abdescription">Study Buddy is not just an online learning hub; we are a community passionate about fostering curiosity, critical thinking, and continuous growth. Our team consists of educators, technologists, and enthusiasts dedicated to reshaping the educational landscape. Together, we are committed to providing a platform that goes beyond traditional boundaries, making learning engaging, interactive, and relevant to the dynamic needs of the 21st century.</p>
                    </div>
                </div>

                <div class="abimg">
                    <img src="https://img.freepik.com/free-vector/teamwork-concept-landing-page_52683-20165.jpg?t=st=1709134842~exp=1709138442~hmac=29874cf2fe85bc089eb4b33022b4aa89995bde08465def71532c34ba795fb193&w=740" alt="img">
                </div>
            </div>
            
        </div>


        <!-- contact us -->
        <div class="contact" id="contactus">
            
            <p class="subheading">Contact us</p>

            <div class="subcontact">

                <div class="con-leftdiv">
                    <img src="https://img.freepik.com/free-vector/flat-design-illustration-customer-support_23-2148887720.jpg?t=st=1709134947~exp=1709138547~hmac=c2dfb4be28091e9182b057812afde215ab3957c7039b3def00df900370a3ad69&w=740" alt="contactimg">
                </div>

                <div class="con-rightdiv">

                    <form action="https://formsubmit.co/omggaming2810@gmail.com" method="POST">
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="Firstname" placeholder="Your name..">
                    
                        <label for="lname">Last Name</label>
                        <input type="text" id="lname" name="Lastname" placeholder="Your last name..">
                    
                        <label for="lname">Email ID</label>
                        <input type="text" id="lname" name="Email ID" placeholder="Your Email ID..">
                        
                    
                        <label for="subject">Subject</label>
                        <textarea id="subject" name="Subject" placeholder="Write something.." style="height:150px"></textarea>
                    
                        <input type="submit">
                    
                    </form>
            

                </div>

            
            </div>
        </div>

        <!-- footer -->
        <div class="footer">
            <div class="topfooter">
                <div class="footcontainer">
                    <div class="t1">
                       <img src="https://img.freepik.com/free-vector/education-business-logo-template-branding-design-vector-education-center-text_53876-136247.jpg?t=st=1709134724~exp=1709138324~hmac=0da2aade431302b4f207a44b0024fbe7c37fd82b29ead7cdf5dfdd966ca2808c&w=740" alt="logoIMG">
                        <p id="foothead">Study Buddy</p>
                        <p>"Empowering minds, shaping futures."</p>
                    </div>

                    <div class="t2">
                        <p class="footsubhed-1">Menu</p>
                        <ul>
                            <li><a href="#home">Home</a></li>
                            <li><a href="#courses">Courses</a></li>
                            <li><a href="#aboutus">About Us</a></li>
                            <li><a href="#contactus">Contact Us</a></li>
                             <li><a href="http://localhost:8879/sm/login">Admin Login</a></li>
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
                <p>Copyright � 2024 Study Buddy Technologies Pvt Ltd. All Rights Reserved.</p>
            </div>
            
        </div>

    </div>

    <script src="https://kit.fontawesome.com/9e44236902.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
    <script>
        var typeData = new Typed(".role", {
          strings: [
    
            "Comprehensive Courses",
            "Flexible Learning",
            "Interactive Environment",
            "Expert Instructors",
            "Cutting-Edge Technology",
            "Development Resources",
          ],
          loop: true,
          typeSpeed: 100,
          backSpeed: 80,
          backDelay: 1000,
        });
      </script>
</body>
</html>