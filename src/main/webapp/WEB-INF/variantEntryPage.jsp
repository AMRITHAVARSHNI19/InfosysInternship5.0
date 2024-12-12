<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Car Variant Entry</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .main-container {
            width: 80%;
            max-width: 600px;
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        label {
            font-size: 16px;
            color: #333; /* Dark grey text */
            margin-bottom: 8px;
            text-align: left;
        }

        form input[type="text"],
        form input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ddd; /* Light border */
            border-radius: 4px;
            font-size: 14px;
        }

        form input:focus {
            outline: none;
            border-color: #333; /* Highlight border on focus */
        }

        .form-buttons {
            display: flex;
            justify-content: space-between;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        button[type="submit"] {
            background-color: #333; /* Black button */
            color: white; /* White text */
        }

        button[type="submit"]:hover {
            background-color: #555; /* Darker grey on hover */
        }

        button[type="reset"] {
            background-color: #ddd; /* Light grey button */
            color: #333; /* Dark grey text */
        }

        button[type="reset"]:hover {
            background-color: #bbb; /* Slightly darker grey on hover */
        }
    </style>
</head>
<body>
    <div class="main-container">
        <h1>Car Variant Entry</h1>
        <form:form action="/variantAdd" method="post" modelAttribute="variantRecord">
            <form:hidden path="variantId"/>
            <label for="variantId">Variant Id:</label>
            <form:input path="variantId" id="variantId" disabled="true" />

            <label for="variantName">Enter Variant Name:</label>
            <form:input path="variantName" id="variantName" />

            <label for="numberOfSeat">Enter Number of Seats:</label>
            <form:input path="numberOfSeat" id="numberOfSeat" />

            <label for="fuel">Enter Type of Fuel:</label>
            <form:input path="fuel" id="fuel" />

            <div class="form-buttons">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>
