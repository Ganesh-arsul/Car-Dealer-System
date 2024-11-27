<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.business.addCarService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String carBrand = request.getParameter("carBrand");
String carModel = request.getParameter("carBrand");
String carColor = request.getParameter("carBrand");
String carPrice = request.getParameter("carBrand");
String carImage = request.getParameter("carBrand");
%><html>
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
</nav>
</section>
<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
                 <p>Welcome : ${carBrand} </p>
                     <div id="keyBoard" class="col-md-4 mt-2">
                               <div class="card" style="width: 18rem;">
                                   <img src="../img/${carImage}" style="width: 520px;" class="card-img-top img-fluid" alt="keyboard">
                                   <div class="card-body">
                                       <h1 class="card-title" id="itemName"> <h1>${carBrand}</h1></h1>
                                       <h5>    MODEL : ${carModel}</h5>
                                       <h5>    COLOR: ${carColor}</h5>
                                       <h5>  PRICE: ${carPrice}</h5>
                                       <div style="float:left;width:500px">
                               <button class="btn btn-primary" onClick="bookTestDrive('${carBrand}','${carModel}')" id="testDrive">BOOK TEST DRIVE</button>
                               <button class="btn btn-warning" onClick="buyCar('${carBrand}','${carModel}')" id="buyCar">Buy Car</button>
                             </div>
                               </div>
                           </div>
            </div>
    </div>
            </div>
     <div id="paymentForm" style="display:none;" class="container py-5 h-100 paymentForm">
      <h5 style="margin-left:20px"> Enter Payment Details  <h5>
    </div>
 <div id="testDriveForm" style="display:none" class="container py-5 h-100 paymentForm">
 <h5 style="margin-left:20px"> Enter Date and Time for test drive <h5>
  </div>
</section>
</body>
</html>