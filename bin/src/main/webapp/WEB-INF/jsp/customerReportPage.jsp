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
    <h1><u>Customer Report</u></h1>
    <br/>
    <h2>Customer Details</h2>
    <table border="2">
      <tr>
        <th>User Name</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Mobile Number</th>
        <th>License Number</th>
        <th>License Expiry Date</th>
        <th>Status</th>
        <th>Customer Updation</th>
        <th>Customer Deletion</th>
      </tr>
      <c:forEach items="${customerList}" var="cus">
        <tr>
          <td>${cus.username}</td>
          <td>${cus.firstName}</td>
          <td>${cus.lastName}</td>
          <td>${cus.address}</td>
          <td>${cus.email}</td>
          <td>${cus.mobile}</td>
          <td>${cus.license}</td>
          <td>${cus.experiryDate}</td>
          <td>${cus.status}</td>
          <td><a href="/customerUpdate/${cus.username}">Update Details</a></td>
          <td><a href="/customerDelete/${cus.username}">Delete User</a></td>
        </tr>
      </c:forEach>
    </table>
    <h3><a href="/index">Return</a></h3>
  </div>
</body>
</html>
