<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Report</title>
<style>
  /* Body and General Styles */
      body {
        background-image: url('https://images2.alphacoders.com/997/997526.jpg'); /* Replace with the path to your background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        color: #FFF;
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }


  /* Header Styles */
  h1 {
    font-size: 2.5em;
    color: #ff6200;
    text-decoration: underline;
    margin-top: 20px;
  }

  h2 {
    font-size: 1.5em;
    color: #ff6200;
    margin-top: 20px;
  }

  /* Table Styles */
  table {
    border-collapse: collapse;
    width: 90%;
    background-color: rgba(51, 51, 51, 0.8);
    color: #fff;
    margin: 20px auto;
    border: 2px solid #ff6200;
    box-shadow: 0 0 10px #ff6200;
  }

  th, td {
    padding: 15px;
    text-align: center;
    border: 1px solid #ff6200;
  }

  th {
    background-color: #ff6200;
    font-weight: bold;
  }

  /* Link Styles */
  a {
    color: #ff6200;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }

  /* Button Style */
  .button {
    background-color: #ff6200;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
    border-radius: 5px;
  }

  .button:hover {
    background-color: #e55d00;
  }

  /* Center Align Container */
  div[align="center"] {
    text-align: center;
    margin: auto;
    padding: 20px;
  }
</style>
</head>
<body>
  <div align="center">
    <h1 color="#fff"><u>Car Report</u></h1>
    <br/>
    <h2 color="#fff">Car Details</h2>
    <table border="2">
      <tr>
        <th>Car Number</th>
        <th>Car Name</th>
        <th>Car Color</th>
        <th>Manufacturer</th>
        <th>MFG Year</th>
        <th>Variant Details</th>
        <th>Rent/Hour</th>
        <th>Available</th>
        <th>Deletion</th>
        <th>Updation</th>
      </tr>
      <c:forEach items="${carList}" var="car">
        <tr>
          <td>${car.carNumber}</td>
          <td>${car.carName}</td>
          <td>${car.carColor}</td>
          <td>${car.manufacturer}</td>
          <td>${car.yearOfMfg}</td>
          <td>
            <table>
              <c:forEach items="${variantMap}" var="cmp">
                <c:if test="${car.variantId==cmp.key}">
                  <tr>
                    <td>Variant Name:</td>
                    <td>${cmp.value.variantName}</td>
                  </tr>
                  <tr>
                    <td>Number of Seats:</td>
                    <td>${cmp.value.numberOfSeat}</td>
                  </tr>
                  <tr>
                    <td>Fuel:</td>
                    <td>${cmp.value.fuel}</td>
                  </tr>
                </c:if>
              </c:forEach>
            </table>
          </td>
          <td>${car.rentRate}</td>
          <td>${car.available}</td>
          <td><a href="/carDeletion/${car.carNumber}">Car Deletion</a></td>
          <td><a href="/carUpdate/${car.carNumber}">Car Update</a></td>
        </tr>
      </c:forEach>
    </table>
    <h3 color="#fff"><a href="/index">Return</a></h3>
  </div>
</body>
</html>
