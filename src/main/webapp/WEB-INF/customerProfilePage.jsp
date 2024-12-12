<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Profile</title>
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
            background-color: #333; /* Black header background */
            color: #fff; /* White text */
            padding: 15px;
            text-align: center;
        }

        header a {
            color: #fff; /* White links */
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
            font-weight: bold;
        }

        header a:hover {
            text-decoration: underline;
        }

        .profile-container {
            max-width: 700px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff; /* White content background */
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .incomplete-prof-container {
            text-align: center;
            margin: 20px 0;
        }

        .incomplete-message {
            font-size: 18px;
            color: #555; /* Medium grey text */
            margin-bottom: 20px;
        }

        .complete-profile-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff; /* White text */
            background-color: #333; /* Black button background */
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .complete-profile-button:hover {
            background-color: #555; /* Dark grey hover effect */
        }

        .section {
            margin-bottom: 20px;
        }

        .primary-heading {
            font-size: 22px;
            text-align: center;
            color: #333; /* Dark grey */
            margin-bottom: 15px;
        }

        .section-heading {
            font-size: 18px;
            color: #333; /* Dark grey */
            margin-bottom: 10px;
        }

        .detail-item {
            margin: 5px 0;
            font-size: 16px;
        }

        .detail-value {
            color: #555; /* Medium grey for values */
        }

        .update-button {
            display: block;
            width: 100%;
            text-align: center;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #fff; /* White text */
            background-color: #333; /* Black button background */
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            margin-bottom: 20px;
        }

        .update-button:hover {
            background-color: #555; /* Dark grey hover effect */
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <a href="/index">Home</a>
        <a href="/myaccount">My Account</a>
        <a href="/logout">Logout</a>
    </header>

    <!-- Profile Container -->
    <div class="profile-container">
        <c:choose>
            <c:when test="${customer == null}">
                <div class="incomplete-prof-container">
                    <p class="incomplete-message">
                        Looks like you have not completed your profile yet! Please complete your profile by providing your details.
                    </p>
                    <a href="/myaccount/completeProfile" class="complete-profile-button">Complete Profile</a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="section my-account">
                    <h2 class="primary-heading">My Account</h2>
                    <a href="/customer/update/${customer.username}" class="update-button">Update Details</a>
                </div>
                <div class="section my-details">
                    <h2 class="section-heading">Customer Details:</h2>
                    <p class="detail-item"><strong>Username:</strong> <span class="detail-value">${customer.username}</span></p>
                    <p class="detail-item"><strong>First Name:</strong> <span class="detail-value">${customer.firstName}</span></p>
                    <p class="detail-item"><strong>Last Name:</strong> <span class="detail-value">${customer.lastName}</span></p>
                    <p class="detail-item"><strong>Address:</strong> <span class="detail-value">${customer.address}</span></p>
                    <p class="detail-item"><strong>Email:</strong> <span class="detail-value">${customer.email}</span></p>
                    <p class="detail-item"><strong>Mobile:</strong> <span class="detail-value">${customer.mobile}</span></p>
                </div>
                <div class="section license">
                    <h2 class="section-heading">License Details:</h2>
                    <p class="detail-item"><strong>License Number:</strong> <span class="detail-value">${customer.license}</span></p>
                    <p class="detail-item"><strong>Expiry Date:</strong> <span class="detail-value">${customer.expiryDate}</span></p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
