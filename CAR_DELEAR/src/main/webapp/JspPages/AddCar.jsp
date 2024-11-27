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
	</head>

	<body onload="code()">
		<section>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header"> <a class="navbar-brand" href="#">Car Dealership Service
              </a> </div>
					<jsp:include page="Menu.jsp" /> </div>
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
                          <h3>Add Car Details</h3>
                          <form action = "addCarDetail">
                            <div class="form-outline mb-4">
                              <input type="text" id="brand" name="brand" class="form-control"
                                     placeholder="Brand" />
                              <label class="form-label" for="form2Example11">Brand
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="fuel" name="fuel" class="form-control"
                                     placeholder="fuel" />
                              <label class="form-label" for="form2Example11">Fuel
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="model" name="model" class="form-control"
                                     placeholder="model" />
                              <label class="form-label" for="form2Example11">Model
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="color" name="color" class="form-control"
                                     placeholder="color" />
                              <label class="form-label" for="form2Example11">Color
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="engine" name="engine" class="form-control"
                                     placeholder="engine" />
                              <label class="form-label" for="form2Example11">Engine
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="breaking system" name="breaking system" class="form-control"
                                     placeholder="breaking system" />
                              <label class="form-label" for="form2Example11">Breaking System
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="transmission" name="transmission" class="form-control"
                                     placeholder="transmission" />
                              <label class="form-label" for="form2Example11">Transmission
                              </label>
                            </div>
                            <div class="form-outline mb-4">
                              <input type="text" id="category" name="category"  class="form-control"
                                     placeholder="category"/>
                              <label class="form-label" for="form2Example22">Category
                              </label>
                            </div>
                               <div class="form-outline mb-4">
                               <input type="text" id="price" name="price"  class="form-control"
                                placeholder="price"/>
                               <label class="form-label" for="form2Example22">Price
                              </label>
                             </div>
                              <div class="form-outline mb-4">
                               <input type="file" id="pic" name="pic" accept="image/*"  class="form-control"
                                    placeholder="Image"/>
                                <label class="form-label" for="form2Example22">Category
                                 </label>
                                </div>
                            <div class="text-center pt-1 mb-5 pb-1">
                              <button type="submit" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="button">Submit
                              </button>
                            </div>
                          </form>

                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>
    </body>
  </html>
