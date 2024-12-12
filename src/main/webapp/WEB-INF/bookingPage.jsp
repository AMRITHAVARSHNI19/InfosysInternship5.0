<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Booking</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8; /* Light Grey */
            color: #333; /* Dark Grey Text */
        }

        header {
            background-color: #333; /* Black Header */
            color: #fff; /* White Text */
            padding: 10px 0;
            text-align: center;
        }

        .navbar a {
            color: #fff; /* White Text */
            text-decoration: none;
            font-size: 16px;
            margin: 0 10px;
            font-weight: bold;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .form-container {
            max-width: 500px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff; /* White Background */
            border: 1px solid #ccc; /* Light Grey Border */
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Subtle Shadow */
        }

        .form-heading {
            text-align: center;
            font-size: 20px;
            color: #333; /* Dark Grey */
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333; /* Dark Grey */
        }

        .input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc; /* Light Grey Border */
            border-radius: 3px;
            margin-bottom: 15px;
        }

        .input:disabled {
            background-color: #f0f0f0; /* Light Grey Background for Disabled Inputs */
        }

        .submit-button {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #fff; /* White Text */
            background-color: #333; /* Black Button */
            border: none;
            border-radius: 3px;
            cursor: pointer;
            text-align: center;
        }

        .submit-button:hover {
            background-color: #555; /* Dark Grey on Hover */
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="navbar">
            <a href="/index">Home</a>
            <a href="/logout">Logout</a>
        </div>
    </header>

    <!-- Form Container -->
    <div class="form-container">
        <h2 class="form-heading">New Booking</h2>

        <form:form action="/createBooking" method="post" modelAttribute="carBooking">
            <form:hidden path="bookingId" />
            <form:hidden path="carNumber" />
            <form:hidden path="username" />

            <label for="bookingId">Booking Id:</label>
            <form:input path="bookingId" id="bookingId" class="input" placeholder="Booking ID" disabled="true" />

            <label for="carNumber">Car Number:</label>
            <form:input path="carNumber" id="carNumber" class="input" placeholder="Car Number" disabled="true" />

            <label for="username">Username:</label>
            <form:input path="username" id="username" class="input" placeholder="Username" disabled="true" />

            <label for="rentRate">Rent Rate (per day):</label>
            <input type="text" id="rentRate" value="${rentRate}" disabled="true" class="input" />

            <label for="fromDate">Enter From Date:</label>
            <form:input path="fromDate" id="fromDate" class="input" placeholder="yyyy-MM-dd" />

            <label for="toDate">Enter To Date:</label>
            <form:input path="toDate" id="toDate" class="input" placeholder="yyyy-MM-dd" />

            <button class="submit-button" type="submit">Proceed to Payment</button>
        </form:form>
    </div>
</body>
</html>
