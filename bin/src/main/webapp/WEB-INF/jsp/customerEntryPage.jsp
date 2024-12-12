<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  /* Body and Background */
  body {
    background-image: url('https://images2.alphacoders.com/997/997526.jpg'); /* Replace with your background image path if any */
    background-size: cover;
    background-attachment: fixed;
    background-position: center;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    color: #fff;
  }

  /* Centered Container */
  div[align="center"] {
    width: 800px;
    margin: 100px auto;
    padding: 20px;
    background-color: rgba(51, 51, 51, 0.8);
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(255, 98, 0, 0.7);
    text-align: center;
  }

  /* Header Styles */
  h1 {
    font-size: 2em;
    color: #ff6200;
    text-transform: uppercase;
    margin-bottom: 20px;
  }

  h2 {
    font-size: 1.2em;
    color: #ff6200;
    margin-bottom: 15px;
  }

  /* Form Styles */
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  /* Input Field Styles */
  form input[type="text"],
  form input[type="number"],
  form input[list] {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ff6200;
    border-radius: 5px;
    background-color: #333;
    color: #fff;
    font-size: 1em;
    text-align: center;
  }

  /* Button Styles */
  form button {
    width: 45%;
    padding: 10px;
    margin: 10px;
    border: none;
    border-radius: 5px;
    background-color: #ff6200;
    color: #fff;
    font-size: 1em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  form button[type="reset"] {
    background-color: #333;
    border: 1px solid #ff6200;
  }

  form button:hover {
    background-color: #e55d00;
  }

  form button[type="reset"]:hover {
    background-color: #444;
  }

  /* Label Styling */
  label {
    font-size: 1em;
    color: #ff6200;
    text-align: left;
    margin-bottom: 5px;
  }
</style>
</head>

<body>
  <div align="center">
  <h1><u>Customer Entry Page</u></h1>
  <h2>
  <form:form action="/customerAdd" method="post" modelAttribute="customerRecord">
            <form:hidden path="username"/>
                <form:hidden path="email"/>
                <form:hidden path="status"/>
  		User Name<form:input path="username" disabled="true" />
  		<br/><br/>
  		Email: <form:input path="email" disabled="true"/>
  		<br/><br/>
  		Enter First Name: <form:input path="firstName" />
  		<br/><br/>
  		Enter Last Name:<form:input path="lastName" />
  		<br/><br/>
  		Enter Address: <form:input path="address" />
  		<br/><br/>
  		Enter Mobile Number: <form:input path="mobile" />
  		<br/><br/>
  		Enter License Number: <form:input path="license" />
  		<br/><br/>
  		Status:<form:input path="status" disabled="true"/>
  		<br/><br/>
  		Enter License Expiry Date: <form:input type="date" placeholder="dd-mm-yyyy" path="experiryDate" />
  		<br/><br/>
  		<button type="submit">Submit</button>
  		<button type="reset">Reset</button>
  </form:form>
  </h2>
  </div>
</body>
</html >