<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.business.addCarService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%addCarService addCarService = (addCarService)request.getAttribute("carDetails");%>
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
<body onload="code()" >
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
            <div class="input-group">
               <h3> Search Car</h3><br>
              <div class="form-outline">
              <form  action="SearchCarDao" method="post">
                <label class="form-label" for="form1">Brand</label><br>
                <input type="search" name="brand"  id="form1" class="form-control" />
                <label class="form-label" for="form1">Model</label>
                <input type="search" id="form1" name="model"  class="form-control" />
              </div><br>
              <label></label>
              <input type="submit" class="btn btn-primary" style="margin-top:10px" value="Search Car" onclick="carSearch(addCarService)">
              </form>
            </div>
    </div>
  </div>
</section>
</body>
</html>