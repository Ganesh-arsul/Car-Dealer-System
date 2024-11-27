<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<script>
		function setUser(){
        var user = localStorage.getItem("email") ;
         document.getElementById("custId").value = localStorage.getItem("email");
        }
		</script>

	</head>
  <body onload="setUser();code()">
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
              <div class="row d-flex justify-content-center align-items-center h-100"> <div class="input-group">
                  <div class="form-outline">

                    <h3> Subscription </h3>
                    <form action="SubscriptionDao" method="post">

                       <label class="form-label" for="brand">Subscription Type</label><br>
                      <input type="search" id="subType" name="subType" class="form-control" /></input>

                      <label class="form-label" for="paymentType">Payment Type </label><br>
                      <input type="search" id="paymentType" name="paymentType" class="form-control" />

                      <label class="form-label" for="cardDetails">Credit/Debit Number </label><br>
                      <input type="search" id="cardDetails" name="cardDetails" class="form-control" />
                      <input type="hidden" id="custId" name="custId" class="form-control" />


                  </div>
                  <input type="submit" class="btn btn-primary" style="margin-top:10px" onclick="carSearch(addCarService)" value="Subscribe"> </form>
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