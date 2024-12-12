<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://img.freepik.com/free-vector/car-rental-concept-illustration_114360-9916.jpg?semt=ais_hybrid') no-repeat center center fixed;
            background-size: cover; /* Ensure the image covers the entire background */
            color: #333; /* Dark grey text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        body::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.5); /* Semi-transparent overlay to add blur */
            backdrop-filter: blur(8px); /* Blur effect */
            z-index: -1; /* Ensure the blur stays behind content */
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            padding: 30px 40px;
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
            width: 350px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%); /* Center the login box */
        }

        .form-heading {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
        }

        .tertiary-heading {
            font-size: 14px;
            margin-bottom: 20px;
        }

        .tertiary-heading a {
            color: #333;
            text-decoration: none;
            font-weight: bold;
        }

        .tertiary-heading a:hover {
            text-decoration: underline;
        }

        .label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
            text-align: left;
        }

        .input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 5px;
            font-size: 14px;
            color: #333;
            background-color: #f9f9f9; /* Subtle grey input background */
        }

        .input:focus {
            border-color: #555; /* Darker grey on focus */
            outline: none;
        }

        .submit-button {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #333; /* Black background */
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-button:hover {
            background-color: #555; /* Darker grey on hover */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2 class="form-heading">Login</h2>
        <h3 class="tertiary-heading">
            New user? 
            <span><a class="redirect-link" href="/register">Register here!</a></span>
        </h3>
        <form action="/login" method="post">
            <label class="label" for="username">Enter User ID:</label>
            <input
                class="input"
                type="text"
                name="username"
                id="username"
                placeholder="User ID"
            />
            <label class="label" for="password">Enter Password:</label>
            <input
                class="input"
                type="password"
                name="password"
                id="password"
                placeholder="Password"
            />
            <input class="submit-button" type="submit" value="Login" />
        </form>
    </div>
</body>
</html>
