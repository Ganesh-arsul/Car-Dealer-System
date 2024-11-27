function code(){
var buyerMenu = document.getElementById("buyerMenu");
var adminMenu = document.getElementById("adminMenu");
var sellerMenu = document.getElementById("sellerMenu");
var userEmail = localStorage.getItem("userType");

if(localStorage.getItem("userType") == 'buyer'){
     adminMenu.style.display = "none";
     sellerMenu.style.display = "none";
}
if(localStorage.getItem("userType") == 'admin'){
     buyerMenu.style.display = "none";
     sellerMenu.style.display = "none";
}
if(localStorage.getItem("userType") == 'seller'){
     adminMenu.style.display = "none";
     buyerMenu.style.display = "none";
}
}

