var down = document.getElementById("GFG_DOWN");

function bookTestDrive(brand, model) {
     var element = document.getElementById("paymentForm");
     element.style.display = "none";
     var element = document.getElementById("testDriveForm");
     element.style.display = "block";
    var brandValue = brand;
    var modelValue = model;
    var custIdValue = localStorage.getItem("email");

    var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("id", "testDrive");
    form.setAttribute("action", "testDriveDao");

    // Create an input element for date
    var ID = document.createElement("input");
    ID.setAttribute("type", "date");
    ID.setAttribute("name", "date");
    ID.setAttribute("placeholder", "Date");

    // Create an input element for time
    var time = document.createElement("input");
    time.setAttribute("type", "time");
    time.setAttribute("name", "time");
    time.setAttribute("placeholder", "Time");


    var model = document.createElement("input");
    model.setAttribute("type", "hidden");
    model.setAttribute("name", "model");
    model.setAttribute("value", modelValue);

    var brand = document.createElement("input");
    brand.setAttribute("type", "hidden");
    brand.setAttribute("name", "brand");
    brand.setAttribute("value", brandValue);

    var type = document.createElement("input");
    type.setAttribute("type", "hidden");
    type.setAttribute("name", "type");
    type.setAttribute("value", "testDrive");

    var custId = document.createElement("input");
    custId.setAttribute("type", "hidden");
    custId.setAttribute("name", "custId");
    custId.setAttribute("value", custIdValue);
    // Create a submit button
    var s = document.createElement("input");
    s.setAttribute("type", "submit");
    s.setAttribute("value", "Submit");

    form.append(ID);
    form.append(time);
    form.append(brand);
    form.append(model);
    form.append(custId);
    form.append(type);

    // Append the button to the form
    form.append(s);
    console.log(document.getElementById("testDriveForm").childElementCount)
    if(document.getElementById("testDriveForm").childElementCount == 2){
        document.getElementById("testDriveForm").appendChild(form);
    }

}


function buyCar(brand, model, custId) {
    var element = document.getElementById("paymentForm");
     element.style.display = "block";
     var element = document.getElementById("testDriveForm");
     element.style.display = "none";
    var brandValue = brand;
    var modelValue = model;
    var custIdValue = custId;
    // Create a form dynamically

    var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "testDriveDao");

    // Create an input element for date
    var ID = document.createElement("input");
    ID.setAttribute("type", "text");
    ID.setAttribute("name", "paymentType");
    ID.setAttribute("placeholder", "Payment Type");


    // Create an input element for time
    var time = document.createElement("input");
    time.setAttribute("type", "text");
    time.setAttribute("name", "cardDetails");
    time.setAttribute("placeHolder", "Credit or Debit card number");

    var custId = document.createElement("input");
    custId.setAttribute("type", "hidden");
    custId.setAttribute("name", "custId");
    custId.setAttribute("value", custIdValue);
    var type = document.createElement("input");
    type.setAttribute("type", "hidden");
    type.setAttribute("name", "type");
    type.setAttribute("value", "buyCar");
    form.append(time);
    // Create a submit button
    var s = document.createElement("input");
    s.setAttribute("type", "submit");
    s.setAttribute("value", "Submit");

    // Append the email_ID input to the form
    form.append(ID);
    form.append(time);
    form.append(custId);
    form.append(type);
    form.append(s);
    if(document.getElementById("paymentForm").childElementCount ==2){
        document.getElementById("paymentForm").appendChild(form);
    }


}