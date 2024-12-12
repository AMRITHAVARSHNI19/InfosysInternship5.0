<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Report</title>
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
            max-width: 800px;
            margin-top: 20px;
            text-align: center;
            background-color: #fff; /* White background for the main container */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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

        #confirmed {
            color: green;
        }

        #pending {
            color: orange;
        }

        #cancelled {
            color: red;
        }

        #returned {
            color: blue;
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

    <div class="main-container" id="bookingReportMainContainer">
        <h1 class="primary-heading">Booking Report</h1>
        <div class="table-container">
            <table class="table">
                <tr class="table-header">
                    <th>Booking ID</th>
                    <th>Car Number</th>
                    <th>From Date</th>
                    <th>To Date</th>
                    <th>Status</th>
                    <th>Pending Payment</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${bookings}" var="booking">
                    <tr class="table-row">
                        <td>${booking.bookingId}</td>
                        <td>${booking.carNumber}</td>
                        <td>${booking.fromDate}</td>
                        <td>${booking.toDate}</td>
                        <td>
                            <c:choose>
                                <c:when test="${booking.status == 'CNF'}"><span id="confirmed">Confirmed</span></c:when>
                                <c:when test="${booking.status == 'P'}"><span id="pending">Pending</span></c:when>
                                <c:when test="${booking.status == 'C'}"><span id="cancelled">Cancelled</span></c:when>
                                <c:when test="${booking.status == 'R'}"><span id="returned">Returned</span></c:when>
                            </c:choose>
                        </td>
                        <td>₹${booking.pendingPayment}</td>
                        <td class="action-cell">
                            <a href="/bookingReport/${booking.bookingId}" class="action-btn details-btn">Details</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <h3><a class="return-link" href="/index">Return</a></h3>
    </div>
</body>
</html>
