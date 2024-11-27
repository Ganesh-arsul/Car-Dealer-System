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
    <body onload="setUser(); code()">
      <section>
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#">Car Dealership Service
              </a>
            </div>
<jsp:include page="Menu.jsp" />
          </div>
          </div>
        </nav>
      </section>
    <section class="h-100 gradient-form" style="background-color: #eee;">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <section class="h-100 gradient-form" style="background-color: #eee;">
                      <div class="input-group">

                          <form action = "PostAdvertiseDao" method="post">
                            <h3>Post Advertisement</h3>
                            <div class="form-outline mb-4">
                              <input type="text" id="brand" name="heading" class="form-control"
                                     placeholder="heading" />
                              <label class="form-label" for="form2Example11">Heading
                              </label>
                            </div>
                         <div class="form-outline mb-4">
                              <input type="text" id="contact" name="contact" class="form-control"
                                     placeholder="contact" />
                              <label class="form-label" for="form2Example11">Contact
                              </label>
                            </div>
                              <div class="form-outline mb-4">
                               <input type="file" id="pic" name="pic" accept="image/*"  class="form-control"
                                    placeholder="Image"/>
                                <label class="form-label" for="form2Example22">Upload Pic
                                 </label>
                                </div>
                                 <input type="hidden" id="custId" name="custId" value=""/>
                            <div class="text-center pt-1 mb-5 pb-1">
                              <button type="submit" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="button">Submit
                              </button>
                            </div>
                          </form>

            </div>
          </section>
        </div>
      </div>
    </section>
    </body>
  </html>
