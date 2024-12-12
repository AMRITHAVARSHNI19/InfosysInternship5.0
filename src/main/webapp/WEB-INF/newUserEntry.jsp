<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register New User</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header-content a {
            color: #333;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            margin-left: 15px;
        }

        .header-content a:hover {
            text-decoration: underline;
        }

        .form-container {
            background-color: #fff; /* White background for form */
            padding: 30px 40px;
            border: 1px solid #ccc; /* Light grey border */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            text-align: center;
            width: 350px;
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

        .submit-button, .reset-button {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .submit-button {
            background-color: #333; /* Black background */
        }

        .reset-button {
            background-color: #777; /* Grey background */
        }

        .submit-button:hover {
            background-color: #555; /* Darker grey on hover */
        }

        .reset-button:hover {
            background-color: #999; /* Darker grey on hover */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2 class="form-heading">Register</h2>
        <h3 class="tertiary-heading">
            Already registered? 
            <span><a class="redirect-link" href="/loginpage">Login here!</a></span>
        </h3>
        <form:form id="registrationForm" method="post" action="/register" modelAttribute="userRecord" class="form-container">
            <label class="label">Enter User Id:</label>
            <form:input path="username" class="input" placeholder="Enter your User ID"/>

            <label class="label">Enter Password:</label>
            <form:input type="password" path="password" id="pass1" class="input" placeholder="Enter your Password"/>

            <label class="label">Re-type Password:</label>
            <input type="password" id="pass2" class="input" placeholder="Re-enter your Password"/>

            <label class="label">Enter Email:</label>
            <form:input path="email" class="input" placeholder="Enter your Email"/>

            <div class="userTypeContainer">
                <label class="label">Select User Type:</label>
                <form:select path="role" class="input userType">
                    <form:option value="" label="Select User Type" disabled="true"/>
                    <form:option value="Customer" label="Customer"/>
                    <form:option value="Admin" label="Admin"/>
                </form:select>
            </div>

            <button class="submit-button" type="button" onclick="validateEntries();">Submit</button>
            <button class="reset-button" type="reset">Reset</button>
        </form:form>
    </div>
    <script type="text/javascript">
        function validateEntries() {
            var pass1 = document.getElementById("pass1").value;
            var pass2 = document.getElementById("pass2").value;
            var email = document.getElementById("email").value;

            if (pass1.length < 5 || pass1.length > 10) {
                alert("Password length must be between 5 to 10");
                return;
            }

            var passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{5,10}$/;
            if (!passwordRegex.test(pass1)) {
                alert("Password must contain at least one uppercase letter, one digit, and one special character.");
                return;
            }

            if (pass1 !== pass2) {
                alert("Passwords do not match.");
                return;
            }

            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                alert("Please enter a valid email address.");
                return;
            }

            document.getElementById("registrationForm").submit();
        }
    </script>
</body>
</html>
