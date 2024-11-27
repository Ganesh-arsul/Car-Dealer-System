<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta charset="utf-8">
<title>CSS-Test</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<section>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Car Dealership Service</a>
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
                <form action = "Signup1">
                  <p>Create New Account</p>
                  <div class="form-outline mb-4">
                    <input type="fname" id="fname" name="fname" class="form-control"
                      placeholder="First Name" />
                    <label class="form-label" for="form2Example11">First Name</label>
                  </div>
                    <div class="form-outline mb-4">
                    <input type="lname" id="lname" name="lname" class="form-control"
                      placeholder="Last Name" />
                    <label class="form-label" for="form2Example11">Last Name</label>
                  </div>
                    <div class="form-outline mb-4">
                                      <input type="email" id="email" name="email" class="form-control"
                                        placeholder="Email" />
                                      <label class="form-label" for="form2Example11">Email</label>
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
                    <input type="password" name="password" id="form2Example22" class="form-control" />
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button type="submit" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="button">Register</button>
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