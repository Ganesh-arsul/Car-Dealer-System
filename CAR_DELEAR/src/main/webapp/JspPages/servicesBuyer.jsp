<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";


try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Statement statement = null;
ResultSet resultSet = null;
%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Car-Dealership</title>
		<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
		<script src="../bootstrap/js/jquery.min.js"></script>
		<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/style.css">
		<script src="../bootstrap/js/bootstrap.min.js"></script>
		<script src="../js/homePage.js"></script>
	</head>
  <body onload="code()">
    <section>
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Car Dealership Service</a>
          </div>
<jsp:include page="Menu.jsp" />
        </div>
        </div>
        </div>
      </nav>
    </section>
    <section class="h-100 gradient-form" style="background-color: #eee;">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <section class="h-100 gradient-form" style="background-color: #eee;">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
               <div class="input-group">
                  <div class="form-outline">
                  <h3> Car Service </h3>
                    <form action="CarServiceDao" method="post">
                      <label>Model</label><br>
                      <input type="text" name="model" id="model" class="form-control" ></input>

                       <label class="form-label" for="brand">Brand</label><br>
                      <input type="search" id="brand" name="brand" class="form-control" /></input>

                      <label class="form-label" for="variant">Variant</label><br>
                      <input type="search" id="variant" name="variant" class="form-control" />

                      <label class="form-label" for="variant">Name</label><br>
                      <input type="search" id="name" name="name" class="form-control" />

                      <label class="form-label" for="name">Mobile</label><br>
                      <input type="search" id="mobile" name="mobile" class="form-control" />

                      <label class="form-label" for="mobile">Date</label><br>
                      <input type="date" id="date" name="date" class="form-control" />

                      <label class="form-label" for="Time">Date</label><br>
                      <input type="time" id="time" name="time" class="form-control" />
                  </div>
                  <input type="submit" class="btn btn-primary" onclick="carSearch(addCarService)"> Request Car service </form>
                </div>
              </div>
            </div>
          </section>
        </div>


      </div>
      </div>
    </section>
  </body>
</html>