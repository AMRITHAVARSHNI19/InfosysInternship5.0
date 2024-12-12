<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Variants</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        header {
            width: 100%;
            text-align: center;
            padding: 20px 0;
        }

        .navbar {
            display: flex;
            justify-content: center; /* Center the items horizontally */
            align-items: center;
            width: 100%;
        }

        .btn, .logout-btn {
            font-size: 16px;
            color: #333;
            text-decoration: none;
            margin-left: 15px;
            font-weight: bold;
        }

        .btn:hover, .logout-btn:hover {
            text-decoration: underline;
        }

        .main-container {
            width: 80%;
            max-width: 1000px;
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
        }

        .primary-heading {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
        }

        .table-container {
            width: 100%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #333; /* Black header */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light grey rows */
        }

        .action-btn {
            padding: 6px 12px;
            font-size: 14px;
            font-weight: bold;
            color: white;
            background-color: #333;
            text-decoration: none;
            border-radius: 5px;
        }

        .action-btn:hover {
            background-color: #555;
        }

        .return-link {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            text-decoration: none;
        }

        .return-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <header>
        <div class="navbar">
            <a href="/index" class="btn" id="home-btn">Home</a>
            <a href="/logout" class="logout-btn">Logout</a>
        </div>
    </header>

    <div class="main-container">
        <h1 class="primary-heading">Car Variant List</h1>

        <div class="table-container">
            <table class="table">
                <tr class="table-header">
                    <th>Variant Id</th>
                    <th>Variant Name</th>
                    <th>Number of Seats</th>
                    <th>Fuel</th>
                    <th>Delete</th>
                </tr>

                <c:forEach items="${variantList}" var="variant">
                    <tr class="table-row">
                        <td>${variant.variantId}</td>
                        <td>${variant.variantName}</td>
                        <td>${variant.numberOfSeat}</td>
                        <td>${variant.fuel}</td>
                        <td><a class="action-btn" href="/variantDeletion/${variant.variantId}">Delete Variant</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <br />
        <h3><a class="return-link" href="/index">Return Index</a></h3>
    </div>

</body>
</html>
