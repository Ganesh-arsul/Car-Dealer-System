<header>
	<script src="../js/homePage.js"></script>
	<script>
	function getUser() {
		var user = localStorage.getItem("email");
		console.log(user,"-----------");
  document.getElementById("user").innerHtml = localStorage.getItem("email");

	}

	function logout() {
		window.location.replace("http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM");
	}
	</script>
</header>

<body onload="code();getUser()">
	<div id="buyerMenu">
		<ul class="nav navbar-nav">
			<li ><a href="/ONLINE_CAR_DEALER_SYSTEM/HomePageBuyer.jsp">Home</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/Contact.jsp">Contact US</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AboutUsBuyer.jsp">About US</a></li>

			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/SeeAdvertisement.jsp">Advertisement</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/servicesBuyer.jsp">Services</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/CarSearchBuyer.jsp">Search Car</a></li>
		</ul>
		<p style="float:right;margin-top:5px">${userEmail}</p>
		<button class="btn btn-secondary" style="float:right;margin-top:5px" onclick="logout()">Logout</button>
	</div>
	<div id="sellerMenu">
		<ul class="nav navbar-nav">
			<li ><a href="/ONLINE_CAR_DEALER_SYSTEM/HomePageBuyer.jsp">Home</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/Contact.jsp">Contact US</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AboutUsBuyer.jsp">About US</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AddCar.jsp">Add Car</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/subscription.jsp">Subscription</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/servicesBuyer.jsp">Services</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/CarSearchBuyer.jsp">Search Car</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/PostAdvertisment.jsp">Post Advertisement</a></li>
		</ul>
				<p style="float:right;margin-top:5px" id="user"></p>
			<button class="btn btn-secondary" style="float:right;margin-top:5px" onclick="logout()">Logout</button>
	</div>
	<div id="adminMenu">
		<ul class="nav navbar-nav">
			<li><a href="/ONLINE_CAR_DEALER_SYSTEM/HomePageBuyer.jsp">Home</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/Contact.jsp">Contact US</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AboutUsBuyer.jsp">About US</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AddCar.jsp">Add Car</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AllCarServiceBookins.jsp">Booked Services</a></li>
			<li><a href="http://localhost:8082/ONLINE_CAR_DEALER_SYSTEM/JspPages/AllCars.jsp">All Cars</a></li>
		</ul>
		<li>
			<button class="btn btn-secondary" style="float:right;margin-top:5px" onclick="logout()">Logout</button>
		</li>
	</div>