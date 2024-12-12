<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complete Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
        }

        header {
            background-color: #333; /* Dark grey background for header */
            color: white;
            padding: 10px;
            text-align: center;
        }

        header a {
            color: white;
            font-size: 16px;
            text-decoration: none;
            margin: 0 10px;
        }

        header a:hover {
            text-decoration: underline;
        }

        .form-container {
            width: 90%;
            max-width: 600px;
            margin: 30px auto;
            background-color: #fff; /* White form background */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .form-heading {
            text-align: center;
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .label {
            display: block;
            font-size: 14px;
            color: #333;
            margin-bottom: 5px;
        }

        .input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .input:focus {
            border-color: #555;
            outline: none;
        }

        .btn {
            display: inline-block;
            width: 120px;
            padding: 10px;
            font-size: 16px;
            color: white;
            background-color: #333; /* Dark grey buttons */
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            margin: 10px;
        }

        .btn:hover {
            background-color: #555; /* Slightly darker grey on hover */
        }

        .submit-button {
            margin-right: 10px;
        }

        .reset-button {
            margin-left: 10px;
        }

        .form-actions {
            text-align: center; /* Center the buttons */
        }
    </style>
</head>
<body>
    <header>
        <a href="/index">Home</a>
        <a href="/myaccount">My Account</a>
        <a href="/logout">Logout</a>
    </header>

    <div class="form-container">
        <h2 class="form-heading">Update Profile Details</h2>
        <form:form action="/myaccount/update" method="post" modelAttribute="customer">
            <form:hidden path="username" />
            <form:hidden path="email" />
            <form:hidden path="status" />

            <label class="label" for="username">Username:</label>
            <form:input path="username" id="username" class="input" disabled="true" />

            <label class="label" for="email">Email:</label>
            <form:input path="email" id="email" class="input" disabled="true" />

            <label class="label" for="firstName">Enter First Name:</label>
            <form:input path="firstName" id="firstName" class="input" placeholder="First Name" />

            <label class="label" for="lastName">Enter Last Name:</label>
            <form:input path="lastName" id="lastName" class="input" placeholder="Last Name" />

            <label class="label" for="address">Enter Address:</label>
            <form:input path="address" id="address" class="input" placeholder="Address" />

            <label class="label" for="mobile">Enter Mobile Number:</label>
            <form:input path="mobile" id="mobile" class="input" placeholder="Mobile Number" />

            <label class="label" for="license">Enter Driving License Number:</label>
            <form:input path="license" id="license" class="input" placeholder="License Number" />

            <label class="label" for="expiryDate">Enter Expiry Date:</label>
            <form:input path="expiryDate" id="expiryDate" class="input" placeholder="Expiry Date" />

            <div class="form-actions">
                <button class="submit-button btn" type="submit">Submit</button>
                <button class="reset-button btn" type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>
