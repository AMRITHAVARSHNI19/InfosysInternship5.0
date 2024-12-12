<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Rental System</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('https://images2.alphacoders.com/997/997526.jpg'); /* Background image */
  background-size: cover;
  background-repeat: no-repeat;
  margin: 0;
  padding: 0;
}

.navbar {
 
  background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent background for better visibility */
  padding: 10px;
  position: relative;
  z-index: 100; /* Ensures navbar is above the background */
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 200; /* Ensures dropdown is above other elements */
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

/* Header logo and website name styling */
.header {
  background-color: rgba(0, 0, 0, 0.9); /* Semi-transparent header for contrast */
  padding: 10px;
  display: flex;
  align-items: center;
  z-index: 1000; /* Ensures the header stays on top */
  position: relative;
}

.header img {
  width: 60px; /* Logo size */
  height: auto;
  margin-right: 10px;
}

.header h1 {
  color: white;
  font-family: ALGERIAN;
  font-size: 30px;
  margin: 0;
}

h1 {
  color: white;
  text-shadow: 2px 2px 5px black; /* Adds text shadow for better readability */
}

</style>
</head>
<body>
<div class="header">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjTLFLnpkAOPbcLIdbDvAqZpiIlGv5HKBEhQ&s" alt="Car Rental Logo"> <!-- Add your logo file here -->
  <h1>Car Rental System</h1> <!-- Website name -->
</div>

<div align="center">
  <h1 style="font-family:ALGERIAN">Welcome To Car Rental Page</h1>
  <div class="navbar">
    <div class="dropdown">
      <button class="dropbtn">Customer</button>
      <div class="dropdown-content">
       <!--  <a href="">Customer Addition</a > -->
        <a href="/customerReport">Customer Update</a>
        <a href="/customerReport">Customer Deletion</a>
        <a href="/customerReport">Customer Reports</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Variant</button>
      <div class="dropdown-content">
        <a href="/variantAdd">Variant Addition</a>
        <a href="/variantReport">Variant Reports</a>
      </div>
    </div>

    <div class="dropdown">
      <button class="dropbtn">Car</button>
      <div class="dropdown-content">
        <a href="/carAdd">Car Addition</a>
        <a href="/carReport">Car Report</a>
      </div>
    </div>

    <div class="dropdown">
      <button class="dropbtn">Booking</button>
      <div class="dropdown-content">
        <a href="/">New Booking</a>
        <a href="/">Booking Update</a>
        <a href="/">Cancellation</a>
        <a href="/">Booking Report</a>
      </div>
    </div>
    <a href="/logout">Logout</a>
  </div>
</div>
</body>
</html>
