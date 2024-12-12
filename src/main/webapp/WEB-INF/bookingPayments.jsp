<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Payments - Admin</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8; /* Light Grey */
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

        .main-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff; /* White Background */
            border: 1px solid #ccc; /* Light Grey Border */
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Subtle Shadow */
        }

        .primary-heading {
            text-align: center;
            font-size: 22px;
            color: #333; /* Dark Grey */
            margin-bottom: 20px;
        }

        .table-container {
            overflow-x: auto;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 14px;
            text-align: left;
        }

        .table-header {
            background-color: #333; /* Black Header */
            color: #fff; /* White Text */
        }

        .table th, .table td {
            border: 1px solid #ccc; /* Light Grey Borders */
            padding: 10px;
        }

        .table-row:nth-child(even) {
            background-color: #f8f8f8; /* Light Grey for Alternate Rows */
        }

        .table-row:nth-child(odd) {
            background-color: #fff; /* White for Alternate Rows */
        }

        .action-cell {
            text-align: center;
        }

        .action-btn {
            padding: 5px 10px;
            font-size: 14px;
            font-weight: bold;
            border: none;
            border-radius: 3px;
            text-decoration: none;
            cursor: pointer;
        }

        .approve-btn {
            color: #fff; /* White Text */
            background-color: #4CAF50; /* Green Button */
        }

        .reject-btn {
            color: #fff; /* White Text */
            background-color: #f44336; /* Red Button */
        }

        .return-link {
            text-align: center;
            display: block;
            margin-top: 20px;
            color: #333; /* Dark Grey */
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
        }

        .return-link:hover {
            text-decoration: underline;
        }

        .status {
            font-weight: bold;
        }

        #pending {
            color: #f0ad4e; /* Amber */
        }

        #cancelled {
            color: #d9534f; /* Red */
        }

        #confirmed {
            color: #5cb85c; /* Green */
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <a href="/index">Home</a>
        <a href="/logout">Logout</a>
    </header>

    <!-- Main Content -->
    <div class="main-container">
        <h1 class="primary-heading">Booking Payments - Admin</h1>

        <!-- Table -->
        <div class="table-container">
            <table class="table">
                <tr class="table-header">
                    <th>Transaction ID</th>
                    <th>Payment Reference No.</th>
                    <th>Booking ID</th>
                    <th>Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>

                <c:forEach items="${transactions}" var="transaction">
                    <tr class="table-row">
                        <td>${transaction.transactionId}</td>
                        <td>${transaction.paymentRefNo}</td>
                        <td>${transaction.bookingId}</td>
                        <td>₹${transaction.amount}</td>
                        <td>
                            <c:choose>
                                <c:when test="${transaction.approved == null}">
                                    <span id="pending">Pending</span>
                                </c:when>
                                <c:when test="${transaction.approved == false}">
                                    <span id="cancelled">Rejected</span>
                                </c:when>
                                <c:when test="${transaction.approved == true}">
                                    <span id="confirmed">Approved</span>
                                </c:when>
                            </c:choose>
                        </td>
                        <td class="action-cell">
                            <c:choose>
                                <c:when test="${transaction.approved == null}">
                                    <a href="/updatePaymentStatus/${transaction.transactionId}/approve" class="action-btn approve-btn">Approve</a>
                                    <a href="/updatePaymentStatus/${transaction.transactionId}/reject" class="action-btn reject-btn">Reject</a>
                                </c:when>
                                <c:otherwise>N/A</c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <!-- Return Link -->
        <a class="return-link" href="/index">Return</a>
    </div>
</body>
</html>
