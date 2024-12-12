<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0; /* Light Grey */
            color: #333; /* Dark Grey */
        }

        header {
            background-color: #333; /* Dark Grey */
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            margin: 0 15px;
            font-weight: bold;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .booking-detail-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border: 1px solid #ccc; /* Grey Border */
            border-radius: 5px;
        }

        .booking-heading {
            text-align: center;
            color: #333; /* Dark Grey */
            font-size: 20px;
            margin-bottom: 20px;
        }

        .section {
            margin-bottom: 20px;
        }

        .section-heading {
            font-size: 18px;
            color: #333; /* Dark Grey */
            border-bottom: 1px solid #ccc;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }

        .detail-item {
            font-size: 14px;
            margin: 5px 0;
        }

        .detail-value {
            font-weight: bold;
            color: #333; /* Dark Grey */
        }

        /* Payment History */
        .transaction-item {
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: #f7f7f7; /* Light Grey */
            margin-bottom: 5px;
            border: 1px solid #ccc; /* Grey Border */
            border-radius: 3px;
        }

        .transaction-item p {
            margin: 0;
            font-size: 14px;
        }

        .status {
            font-weight: bold;
        }

        .status.pending {
            color: #888; /* Medium Grey */
        }

        .status.cancelled {
            color: #a00; /* Dark Red */
        }

        .status.confirmed {
            color: #0a0; /* Dark Green */
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="navbar">
            <a href="/index">Home</a>
            <a href="/myaccount">My Account</a>
            <a href="/logout">Logout</a>
        </div>
    </header>

    <!-- Booking Details -->
    <div class="booking-detail-container">
        <h3 class="booking-heading">Booking Report</h3>

        <div class="section booking-details">
            <h2 class="section-heading">Booking Information:</h2>
            <p class="detail-item"><strong>Booking ID:</strong> <span class="detail-value">${booking.bookingId}</span></p>
            <p class="detail-item"><strong>Username:</strong> <span class="detail-value">${booking.username}</span></p>
            <p class="detail-item"><strong>Start Date:</strong> <span class="detail-value">${booking.fromDate}</span></p>
            <p class="detail-item"><strong>End Date:</strong> <span class="detail-value">${booking.toDate}</span></p>
            <p class="detail-item"><strong>Status:</strong>
                <span class="detail-value">
                    <c:choose>
                        <c:when test="${booking.status == 'CNF'}">Confirmed</c:when>
                        <c:when test="${booking.status == 'P'}">Pending</c:when>
                        <c:when test="${booking.status == 'C'}">Cancelled</c:when>
                        <c:when test="${booking.status == 'R'}">Returned</c:when>
                        <c:otherwise>Unknown Status</c:otherwise>
                    </c:choose>
                </span>
            </p>
        </div>

        <div class="section car-details">
            <h2 class="section-heading">Car Details:</h2>
            <p class="detail-item"><strong>Car Number:</strong> <span class="detail-value">${car.carNumber}</span></p>
            <p class="detail-item"><strong>Car Name:</strong> <span class="detail-value">${car.carName}</span></p>
            <p class="detail-item"><strong>Car Color:</strong> <span class="detail-value">${car.carColor}</span></p>
            <p class="detail-item"><strong>Manufacturer:</strong> <span class="detail-value">${car.manufacturer}</span></p>
            <p class="detail-item"><strong>Rent Rate (per day):</strong> <span class="detail-value">₹${car.rentRate}</span></p>
        </div>

        <div class="section payment-info">
            <h2 class="section-heading">Payment Information:</h2>
            <p class="detail-item"><strong>Total Payment:</strong> <span class="detail-value">₹${booking.totalPayment}</span></p>
            <p class="detail-item"><strong>Advance Payments:</strong> <span class="detail-value">₹${booking.advancePayment}</span></p>
            <p class="detail-item"><strong>Pending Payments:</strong> <span class="detail-value">₹${booking.pendingPayment}</span></p>
            <h3 class="detail-item">Payment History:</h3>
            <div id="transaction-list">
                <c:forEach items="${transactions}" var="transaction">
                    <div class="transaction-item">
                        <p class="transaction-id">${transaction.transactionId}</p>
                        <p class="transaction-amount">₹${transaction.amount}</p>
                        <p class="transaction-status">
                            <c:choose>
                                <c:when test="${transaction.approved == null}">
                                    <span class="status pending">In Review</span>
                                </c:when>
                                <c:when test="${transaction.approved == false}">
                                    <span class="status cancelled">Failed</span>
                                </c:when>
                                <c:when test="${transaction.approved == true}">
                                    <span class="status confirmed">Success</span>
                                </c:when>
                            </c:choose>
                        </p>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>
