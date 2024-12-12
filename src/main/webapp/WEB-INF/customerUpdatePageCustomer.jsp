<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Profile Details</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
        }

        header {
            background-color: #333; /* Black header background */
            color: #fff; /* White text */
            padding: 15px;
            text-align: center;
        }

        header a {
            color: #fff; /* White links */
            text-decoration: none;
            font-size: 16px;
            margin: 0 15px;
            font-weight: bold;
        }

        header a:hover {
            text-decoration: underline;
        }

        .form-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 30px;
            background-color: #fff; /* White background for form container */
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .form-heading {
            font-size: 24px;
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .label {
            display: block;
            font-size: 14px;
            margin: 10px 0 5px;
            color: #333; /* Dark grey text */
        }

        .input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 14px;
            border: 1px solid #ddd; /* Light grey border */
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .input:disabled {
            background-color: #eaeaea; /* Grey background for disabled inputs */
        }

        .btn {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            margin: 10px 0;
        }

        .submit-button {
            background-color: #333; /* Black background for submit button */
            color: #fff; /* White text */
        }

        .submit-button:hover {
            background-color: #555; /* Dark grey on hover */
        }

        .reset-button {
            background-color: #e74c3c; /* Red background for reset button */
            color: #fff;
        }

        .reset-button:hover {
            background-color: #c0392b; /* Darker red on hover */
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <a href="/index">Home</a>
        <a href="/myaccount">My Account</a>
        <a href="/logout">Logout</a>
    </header>

    <!-- Form Container -->
    <div class="form-container">
        <h2 class="form-heading">Update Profile Details</h2>
        <form:form action="/myaccount/update" method="post" modelAttribute="customer">
            <form:hidden path="username"/>
            <form:hidden path="email"/>
            <form:hidden path="firstName"/>
            <form:hidden path="mobile"/>
            <form:hidden path="license"/>
            <form:hidden path="status"/>

            <label class="label" for="username">Username:</label>
            <form:input path="username" id="username" class="input" disabled="true" />

            <label class="label" for="email">Email:</label>
            <form:input path="email" id="email" class="input" disabled="true" />

            <label class="label" for="firstName">Enter First Name:</label>
            <form:input path="firstName" id="firstName" class="input" placeholder="First Name" disabled="true"/>

            <label class="label" for="lastName">Enter Last Name:</label>
            <form:input path="lastName" id="lastName" class="input" placeholder="Last Name" />

            <label class="label" for="address">Enter Address:</label>
            <form:input path="address" id="address" class="input" placeholder="Address" />

            <label class="label" for="mobile">Enter Mobile Number:</label>
            <form:input path="mobile" id="mobile" class="input" placeholder="Mobile Number" disabled="true"/>

            <label class="label" for="status">Enter Status:</label>
            <form:input path="status" id="status" class="input" placeholder="Status" disabled="true"/>

            <label class="label" for="license">Enter Driving License Number:</label>
            <form:input path="license" id="license" class="input" placeholder="License Number" disabled="true"/>

            <label class="label" for="expiryDate">Enter Expiry Date:</label>
            <form:input path="expiryDate" id="expiryDate" class="input" placeholder="Expiry Date" />

            <button class="submit-button btn" type="submit">Submit</button>
            <button class="reset-button btn" type="reset">Reset</button>
        </form:form>
    </div>

</body>
</html>
