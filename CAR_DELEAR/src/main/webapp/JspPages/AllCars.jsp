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

<h2 align="center"><font><strong>Car service Bookings </strong></font></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1" style="width:90%">
        <tr>

        </tr>
        <tr bgcolor="cadetblue">
        <td><b>Model</b></td>
        <td><b>Brand</b></td>
        <td><b>Variant</b></td>
        <td><b>Name</b></td>
        <td><b>Mobile</b></td>
        <td><b>Date</b></td>
        <td><b>Time</b></td>
        </tr>
        <%
        try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
        statement=con.createStatement();
        String sql ="SELECT * FROM car";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){

        %>
        <tr >

        <td><%=resultSet.getString("model") %></td>
        <td><%=resultSet.getString("brand") %></td>
        <td><%=resultSet.getString("fuel") %></td>
        <td><%=resultSet.getString("color") %></td>
        <td><%=resultSet.getString("engine") %></td>
        <td><%=resultSet.getString("category") %></td>
        <td><img src="../img/<%=resultSet.getString("pic")%>" style="width:100px; padding:5px" /></td>
        </tr>

        <%
        }

        } catch (Exception e) {
        e.printStackTrace();
        }
        %>
        </table>


      </div>
      </div>
    </section>
  </body>
</html>