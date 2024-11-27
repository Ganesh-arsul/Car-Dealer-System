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

<h2 align="center"><font><strong></strong></font></h2>
        <%
        try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance", "root", "password");
        statement=con.createStatement();
        String sql ="SELECT * FROM advertisement";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){

        %>
        <div style="margin-left:50px float:left">
                <div style=" margin-left:50px float:left" >
                <h1  style=" padding:5px"><%=resultSet.getString("heading")  %></h1>
                <img src="../img/<%=resultSet.getString("image")%>" style="width:400px; padding:5px" />
                <h4  style=" padding:5px">Contact for more details ::<%=resultSet.getString("contact")  %></h4>

                </div>
        </div>

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