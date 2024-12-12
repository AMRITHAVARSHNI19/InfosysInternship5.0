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

<h1><u>Car Update Page</u></h1>
<h2>
<form:form action="/carUpdate" method="post" modelAttribute="carRecord">
<form:hidden path="carNumber" />
<form:hidden path="carName" />
<form:hidden path="carColor" />
<form:hidden path="manufacturer" />
<form:hidden path="variantId" />
<form:hidden path="yearOfMfg" />
Car Registration Number: <form:input path="carNumber" disabled="true"/> <br/><br/>
Car Name: <form:input path="carName" disabled="true"/>
<br/><br/>
Car Color: <form:input path="carColor" disabled="true"/>
<br/><br/>
Manufacturer Name: <form:input path="manufacturer" disabled="true"/>
<br/><br/>
Variant Id<form:input list="variants" path="variantId" disabled="true"/>
<br/><br/>
Year of Manufacture: <form:input path="yearOfMfg" disabled="true"/> <br/><br>
Enter New  Rent Rate/hour: <form:input path="rentRate"/>
<br/><br>
Enter New Availability Status:<form:input path="available"/>

<datalist id="variants">
<c:forEach items="${variantIdList}" var="vids">
<option value="${vids}">
</option>
</c:forEach>
</datalist>
<br/><br>
<button type="submit">Submit</button>
<button type="reset">Reset</button>

</form:form>
</body>
</html>