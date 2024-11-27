<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta charset="utf-8">
<title>CSS-Test</title>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="bootstrap/js/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<section>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand"   style="color: white;" href="#">Car Dealership Service</a>
    </div>
  </div>
</nav>
</section>
<section class="h-100 gradient-form" style="background-color: darkseagreen;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">
                <form action ="LoginServlet" method="post">
                  <p>Please login to your account</p>
                  <div class="form-outline mb-4">
                    <input type="email" name = "email" id="form2Example11" class="form-control"
                      placeholder="Email address" required/>
                    <label class="form-label" for="form2Example11" required>Username</label>
                  </div>
                 <div class="form-outline mb-4">
                                            <select name="userType" id="userType" class="form-control">
                                            <option value="">Select User Type </option>
                                            <option value="buyer">Buyer </option>
                                            <option value="seller">Seller </option>
                                            <option value="admin">Admin </option>
                                            </select>
       <label class="form-label" for="form2Example11">User Type</label>

                  </div>
                  <div class="form-outline mb-4">
                    <input type="password" name ="password" id="form2Example22" class="form-control" required/>
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button type ="submit" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="button">Log
                      in</button>
                    <a class="text-muted" href="#!">Forgot password?</a>
                  </div>

                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Don't have an account?</p>
                   <a href="signUp.jsp"> Create Account</a>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                   <img src="img/002.jpg"
                                     style="width: 650px;" alt="logo">
                                   <h4 class="mt-1 mb-5 pb-1">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>