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
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
        }

        header {
            background-color: #333; /* Dark grey background for header */
            padding: 10px 0;
            text-align: center;
        }

        header .btn, header .myaccount-btn, header .logout-btn {
            color: white;
            font-size: 16px;
            margin: 0 10px;
            text-decoration: none;
            font-weight: bold;
        }

        header .btn:hover, header .myaccount-btn:hover, header .logout-btn:hover {
            text-decoration: underline;
        }

        .booking-detail-container {
            width: 90%;
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff; /* White container background */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h3.booking-heading {
            text-align: center;
            color: #333;
            font-size: 22px;
            margin-bottom: 20px;
        }

        .section {
            margin-bottom: 20px;
        }

        .section-heading {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 5px;
        }

        .detail-item {
            margin: 5px 0;
            font-size: 16px;
        }

        .detail-item strong {
            color: #333;
        }

        .detail-value {
            color: #555;
        }

        .transaction-item {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .transaction-item p {
            margin: 5px 0;
            font-size: 14px;
        }

        .status {
            font-weight: bold;
        }

        .status.pending {
            color: orange;
        }

        .status.cancelled {
            color: red;
        }

        .status.confirmed {
            color: green;
        }

        .action-links {
            text-align: center; /* Centering the buttons */
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background-color: #333; /* Dark grey buttons */
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
            cursor: pointer;
            border: none;
        }

        .btn.disabled {
            background-color: #ccc; /* Light grey for disabled buttons */
            cursor: not-allowed;
        }

        .btn:hover:not(.disabled) {
            background-color: #555; /* Darker grey on hover */
        }

        .btn[data-tooltip]:hover::after {
            content: attr(data-tooltip);
            display: block;
            position: absolute;
            background-color: #333;
            color: #fff;
            font-size: 12px;
            padding: 5px;
            border-radius: 3px;
            white-space: nowrap;
            margin-top: 5px;
        }
    </style>
    <script>
        function handleAction(actionType, isActive, bookingId) {
            if (isActive) {
                switch (actionType) {
                    case "payDues":
                        window.location.href = `/makePayment/${bookingId}`;
                        break;
                    case "returnBooking":
                        window.location.href = `/returnBooking/${bookingId}`;
                        break;
                    case "cancelBooking":
                        window.location.href = `/cancelBooking/${bookingId}`;
                        break;
                    default:
                        alert("Invalid action.");
                }
            }
        }
    </script>
</head>
<body>
    <header>
        <a href="/index" class="btn">Home</a>
        <a href="/myaccount" class="btn">My Account</a>
        <a href="/logout" class="btn">Logout</a>
    </header>

    <div class="booking-detail-container">
        <h3 class="booking-heading">Booking Report</h3>
        <div class="section">
            <h2 class="section-heading">Booking Information</h2>
            <p class="detail-item"><strong>Booking ID:</strong> <span class="detail-value">${booking.bookingId}</span></p>
            <p class="detail-item"><strong>Start Date:</strong> <span class="detail-value">${booking.fromDate}</span></p>
            <p class="detail-item"><strong>End Date:</strong> <span class="detail-value">${booking.toDate}</span></p>
            <p class="detail-item"><strong>Status:</strong> <span class="detail-value">
                <c:choose>
                    <c:when test="${booking.status == 'CNF'}"><span class="status confirmed">Confirmed</span></c:when>
                    <c:when test="${booking.status == 'P'}"><span class="status pending">Pending</span></c:when>
                    <c:when test="${booking.status == 'C'}"><span class="status cancelled">Cancelled</span></c:when>
                    <c:when test="${booking.status == 'R'}"><span class="status confirmed">Returned</span></c:when>
                    <c:otherwise>Unknown Status</c:otherwise>
                </c:choose>
            </span></p>
        </div>
        
        <!-- Additional sections for Car Details and Payment Info go here -->

        <div class="section action">
            <div class="action-links">
                <button class="btn ${booking.pendingPayment > 0 && booking.status != 'C' && booking.status != 'R' ? '' : 'disabled'}" 
                        onclick="handleAction('payDues', ${booking.pendingPayment > 0 && booking.status != 'C' && booking.status != 'R'}, '${booking.bookingId}')">
                    Pay Dues
                </button>
                <button class="btn ${booking.status == 'CNF' && booking.pendingPayment == 0 ? '' : 'disabled'}" 
                        onclick="handleAction('returnBooking', ${booking.status == 'CNF' && booking.pendingPayment == 0}, '${booking.bookingId}')">
                    Return
                </button>
                <button class="btn ${booking.status == 'P' || (booking.advancePayment == 0 && booking.status != 'C') ? '' : 'disabled'}" 
                        onclick="handleAction('cancelBooking', ${booking.status == 'P' || (booking.advancePayment == 0 && booking.status != 'C')}, '${booking.bookingId}')">
                    Cancel
                </button>
            </div>
        </div>
    </div>
</body>
</html>
