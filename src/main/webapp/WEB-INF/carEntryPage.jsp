<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Car</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8; /* Light Grey Background */
            color: #333; /* Dark Grey Text */
        }

        header {
            background-color: #333; /* Black Header */
            color: #fff; /* White Text */
            padding: 10px 0;
            text-align: center;
        }

        header a {
            color: #fff; /* White Text */
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
            margin: 50px auto;
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

        .label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333; /* Dark Grey */
        }

        .input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc; /* Light Grey Border */
            border-radius: 5px;
            font-size: 14px;
        }

        .variantIdContainer {
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            background-color: #333; /* Black Button */
            color: #fff; /* White Text */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .btn:hover {
            background-color: #555; /* Darker Grey on Hover */
        }

        .form-actions {
            text-align: center;
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
        <h2 class="form-heading">Add Car</h2>
        <form:form action="/carAdd" method="post" modelAttribute="carRecord">
            <form:hidden path="available" />

            <label class="label" for="carNumber">Car Registration Number:</label>
            <form:input path="carNumber" id="carNumber" class="input" placeholder="Registration number" />

            <label class="label" for="carName">Enter Car Name:</label>
            <form:input path="carName" id="carName" class="input" placeholder="Car name" />

            <label class="label" for="carColor">Enter Car Color:</label>
            <form:input path="carColor" id="carColor" class="input" placeholder="Car color" />

            <label class="label" for="manufacturer">Enter Car Manufacturer Name:</label>
            <form:input path="manufacturer" id="manufacturer" class="input" placeholder="Manufacturer name" />

            <label class="label" for="yearOfMfg">Enter Year of Manufacturing:</label>
            <form:input path="yearOfMfg" id="yearOfMfg" class="input" placeholder="Year of manufacturing" />

            <label class="label" for="rentRate">Enter Rent Rate Per Hour:</label>
            <form:input path="rentRate" id="rentRate" class="input" placeholder="Rent rate per hour" />

            <div class="variantIdContainer">
                <label class="label" for="variantId">Select Variant:</label>
                <form:select path="variantId" class="input variantId" id="carVariantId">
                    <form:option value="" label="Select Variant Id" disabled="true" />
                    <c:forEach items="${variantIdList}" var="vids">
                        <form:option value="${vids}">${vids}</form:option>
                    </c:forEach>
                </form:select>
            </div>

            <div class="form-actions">
                <button class="btn" type="submit">Submit</button>
                <button class="btn" type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>
