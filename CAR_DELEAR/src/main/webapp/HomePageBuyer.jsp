<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
    <head>
      <%
         String userType = request.getParameter("userType");
         String email = request.getParameter("email");
         %>
        <meta charset="utf-8">
        <title>CSS-Test
        </title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        		<link rel="stylesheet" href="css/style.css">

        <script src="bootstrap/js/jquery.min.js">
        </script>
        <script src="bootstrap/js/bootstrap.min.js">
        </script>
        	<script src="js/homePage.js"></script>
        <script>
          console.log('${userType}');
          if('${userType}' != ""){
            window.localStorage.setItem("userType", '${userType}');
            localStorage.setItem("email", '${email}');
          }
        </script>
        </head>
      <body onload="code()">
        <section>
          <nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">Car Dealership Service
                </a>
              </div>
              <jsp:include page="JspPages/Menu.jsp" />
            </div>
            </div>
          </nav>
        </section>
      <section class="h-100 gradient-form" style="background-color: #eee;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="container">
              <p>Welcome : ${userType}
              </p>
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active">
                  </li>
                  <li data-target="#myCarousel" data-slide-to="1">
                  </li>
                  <li data-target="#myCarousel" data-slide-to="2">
                  </li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="img/004.png" alt="Los Angeles" style="width:100%;">
                    <div class="carousel-caption">
                      <h3>
                      </h3>
                      <p>
                      </p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="img/003.jpg" alt="Chicago" style="width:100%;">
                    <div class="carousel-caption">
                      <h3>
                      </h3>
                      <p>
                      </p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="img/002.jpg" alt="New York" style="width:100%;">
                    <div class="carousel-caption">
                      <h3>
                      </h3>
                      <p>
                      </p>
                    </div>
                  </div>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left">
                  </span>
                  <span class="sr-only">Previous
                  </span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right">
                  </span>
                  <span class="sr-only">Next
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>
      </body>
  </html>
