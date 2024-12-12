<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            width: 100%;
            background-color: #333; /* Dark grey header */
            padding: 10px 0;
            text-align: center;
        }

        header a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-size: 16px;
        }

        header a:hover {
            text-decoration: underline;
        }

        .main-container {
            width: 90%;
            max-width: 1000px;
            margin-top: 20px;
            background-color: #fff; /* White background for the main container */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .primary-heading {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .table-container {
            overflow-x: auto;
            margin-top: 20px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .table th, .table td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        .table-header {
            background-color: #333; /* Dark grey for header row */
            color: white;
        }

        .table-row:nth-child(even) {
            background-color: #f9f9f9; /* Light grey for even rows */
        }

        .table-row:hover {
            background-color: #ddd; /* Slightly darker grey on hover */
        }

        .inner-table {
            width: 100%;
            border: none;
            margin: 0 auto;
            text-align: left;
        }

        .inner-table th, .inner-table td {
            padding: 5px;
        }

        .action-cell {
            text-align: center;
        }

        .action-btn {
            padding: 5px 10px;
            font-size: 14px;
            color: white;
            background-color: #333; /* Dark grey buttons */
            text-decoration: none;
            border-radius: 3px;
            margin: 0 5px;
        }

        .action-btn:hover {
            background-color: #555; /* Slightly lighter grey on hover */
        }

        .return-link {
            color: #333;
            text-decoration: none;
            font-size: 16px;
        }

        .return-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <a href="/index">Home</a>
        <a href="/myaccount">My Account</a>
        <a href="/logout">Logout</a>
    </header>

    <div class="main-container" id="carReportMainContainer">
        <h1 class="primary-heading">Car Report</h1>
        <div class="table-container">
            <table class="table">
                <tr class="table-header">
                    <th>Car Number</th>
                    <th>Car Name</th>
                    <th>Color</th>
                    <th>Manufacturer</th>
                    <th>Year Of Mfg</th>
                    <th>Rent Rate</th>
                    <th>Variant Detail</th>
                    <th>Availability</th>
                    <th>Actions</th>
                </tr>

                <c:forEach items="${carList}" var="car">
                    <tr class="table-row">
                        <td>${car.carNumber}</td>
                        <td>${car.carName}</td>
                        <td>${car.carColor}</td>
                        <td>${car.manufacturer}</td>
                        <td>${car.yearOfMfg}</td>
                        <td>₹${car.rentRate}/day</td>
                        <td>
                            <c:set var="carVariant" value="${variantMap[car.variantId]}" />
                            <c:if test="${carVariant != null}">
                                <table class="inner-table">
                                    <tr>
                                        <th>Variant Id</th>
                                        <td>${carVariant.variantId}</td>
                                    </tr>
                                    <tr>
                                        <th>Variant Name</th>
                                        <td>${carVariant.variantName}</td>
                                    </tr>
                                    <tr>
                                        <th>No. of Seats</th>
                                        <td>${carVariant.numberOfSeat}</td>
                                    </tr>
                                    <tr>
                                        <th>Fuel</th>
                                        <td>${carVariant.fuel}</td>
                                    </tr>
                                </table>
                            </c:if>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${car.available == true}">Available</c:when>
                                <c:otherwise>Not Available</c:otherwise>
                            </c:choose>
                        </td>
                        <td class="action-cell">
                            <a href="/newBooking/${car.carNumber}" class="action-btn book-btn">Book</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <h3><a class="return-link" href="/index">Return</a></h3>
    </div>
</body>
</html>
