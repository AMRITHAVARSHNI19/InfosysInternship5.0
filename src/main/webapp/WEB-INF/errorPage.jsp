<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
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
            justify-content: center;
            height: 100vh;
        }

        header {
            width: 100%;
            background-color: #333; /* Dark grey header */
            padding: 10px;
            text-align: center;
        }

        header a {
            color: white;
            font-size: 16px;
            text-decoration: none;
            margin: 0 10px;
        }

        header a:hover {
            text-decoration: underline;
        }

        .error-container {
            text-align: center;
            background-color: #fff; /* White background for the error container */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
        }

        .error-message {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .action-links {
            margin-top: 20px;
        }

        .link-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #333; /* Dark grey buttons */
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
        }

        .link-button:hover {
            background-color: #555; /* Slightly darker grey on hover */
        }
    </style>
</head>
<body>
    <header>
        <a href="/index">Home</a>
        <a href="/myaccount">My Account</a>
        <a href="/logout">Logout</a>
    </header>

    <div class="error-container">
        <h1 class="error-message">${errorMessage}</h1>
        <div class="action-links">
            <a href="/index" class="link-button">Return to Home</a>
            <a href="${redirectLink}" class="link-button">${linkText}</a>
        </div>
    </div>
</body>
</html>
