<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Car</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0; /* Light grey background */
            color: #333; /* Dark grey text */
        }

        header {
            background-color: #333; /* Black background for header */
            color: #fff; /* White text */
            padding: 10px;
            text-align: center;
        }

        header a {
            color: #fff; /* White text for links */
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
            font-weight: bold;
        }

        header a:hover {
            text-decoration: underline;
        }

        .form-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff; /* White content area */
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .form-heading {
            text-align: center;
            font-size: 22px;
            color: #333; /* Dark grey */
            margin-bottom: 20px;
        }

        .label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333; /* Dark grey */
        }

        .input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 5px;
            font-size: 14px;
            color: #333; /* Dark grey text */
        }

        .input:disabled {
            background-color: #f0f0f0; /* Light grey for disabled fields */
        }

        .submit-button, .reset-button {
            display: inline-block;
            width: 48%;
            padding: 10px 0;
            font-size: 16px;
            font-weight: bold;
            color: #fff; /* White text */
            background-color: #333; /* Black button background */
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            margin: 5px 1%;
        }

        .submit-button:hover, .reset-button:hover {
            background-color: #555; /* Dark grey hover effect */
        }

        .variantIdContainer {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <a href="/index">Home</a>
        <a href="/logout">Logout</a>
    </header>

    <!-- Form Container -->
    <div class="form-container">
        <h2 class="form-heading">Update Car</h2>
        <form:form action="/carUpdate" method="post" modelAttribute="carRecord">
            <form:hidden path="available" />
            <form:hidden path="carNumber" />
            <form:hidden path="carName" />
            <form:hidden path="carColor" />
            <form:hidden path="manufacturer" />
            <form:hidden path="yearOfMfg" />
            <form:hidden path="variantId" />

            <label class="label" for="carNumber">Car Registration Number:</label>
            <form:input path="carNumber" id="carNumber" class="input" placeholder="Registration number" disabled="true" />

            <label class="label" for="carName">Car Name:</label>
            <form:input path="carName" id="carName" class="input" placeholder="Car name" disabled="true"/>

            <label class="label" for="carColor">Car Color:</label>
            <form:input path="carColor" id="carColor" class="input" placeholder="Car color" disabled="true"/>

            <label class="label" for="manufacturer">Car Manufacturer Name:</label>
            <form:input path="manufacturer" id="manufacturer" class="input" placeholder="Manufacturer name" disabled="true"/>

            <label class="label" for="yearOfMfg">Year of manufacturing:</label>
            <form:input path="yearOfMfg" id="yearOfMfg" class="input" placeholder="Year of manufacturing" disabled="true"/>

            <label class="label" for="rentRate">Enter New Rent Rate per Hour:</label>
            <form:input path="rentRate" id="rentRate" class="input" placeholder="Rent rate per hour" />

            <label class="label" for="available">Enter New Availability Status:</label>
            <form:input path="available" id="available" class="input" placeholder="Status" />

            <div class="variantIdContainer">
                <label class="label" for="variantId">Variant Id:</label>
                <form:input path="variantId" id="variantId" class="input" placeholder="Variant Id" disabled="true"/>
            </div>

            <button class="submit-button" type="submit">Submit</button>
            <button class="reset-button" type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>
