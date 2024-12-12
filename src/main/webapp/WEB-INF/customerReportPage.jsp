<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer List</title>
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
            background-color: #333; /* Black header background */
            color: #fff; /* White text */
            padding: 15px;
            text-align: center;
        }

        header a {
            color: #fff; /* White links */
            text-decoration: none;
            font-size: 16px;
            margin: 0 15px;
            font-weight: bold;
        }

        header a:hover {
            text-decoration: underline;
        }

        .main-container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff; /* White background for main content */
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .primary-heading {
            font-size: 24px;
            text-align: center;
            color: #333; /* Dark grey */
            margin-bottom: 20px;
        }

        .table-container {
            width: 100%;
            margin: 0 auto;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .table th, .table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd; /* Light grey border for table cells */
        }

        .table th {
            background-color: #333; /* Black background for table headers */
            color: #fff; /* White text for headers */
        }

        .table-row {
            background-color: #f9f9f9; /* Light grey rows */
        }

        .table-row:nth-child(even) {
            background-color: #f1f1f1; /* Slightly darker grey for even rows */
        }

        .action-cell {
            text-align: center;
        }

        .action-btn {
            display: inline-block;
            padding: 8px 15px;
            margin: 5px;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }

        .update-btn {
            background-color: #333; /* Black background for update button */
        }

        .update-btn:hover {
            background-color: #555; /* Dark grey on hover */
        }

        .delete-btn {
            background-color: #e74c3c; /* Red background for delete button */
        }

        .delete-btn:hover {
            background-color: #c0392b; /* Darker red on hover */
        }

        .return-link {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #333; /* Black background for return link */
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            font-weight: bold;
        }

        .return-link:hover {
            background-color: #555; /* Dark grey on hover */
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <a href="/index">Home</a>
        <a href="/logout">Logout</a>
    </header>

    <!-- Main Container -->
    <div class="main-container" id="customerReportMainContainer">
        <h1 class="primary-heading">Customer Report</h1>
        
        <!-- Table Container -->
        <div class="table-container">
            <table class="table">
                <tr class="table-header">
                    <th>Username</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>License Number</th>
                    <th>Expiry Date</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>

                <c:forEach items="${customers}" var="customer">
                    <tr class="table-row">
                        <td>${customer.username}</td>
                        <td>${customer.firstName}</td>
                        <td>${customer.lastName}</td>
                        <td>${customer.address}</td>
                        <td>${customer.email}</td>
                        <td>${customer.mobile}</td>
                        <td>${customer.license}</td>
                        <td>${customer.expiryDate}</td>
                        <td>${customer.status}</td>
                        <td class="action-cell">
                            <a href="/customer/update/${customer.username}" class="action-btn update-btn">Customer Update</a>
                            <a href="/customerDelete/${customer.username}" class="action-btn delete-btn">Customer Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        
        <!-- Return Link -->
        <h3><a class="return-link" href="/index">Return Index</a></h3>
    </div>

</body>
</html>
