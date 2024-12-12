<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Rental System - User Login</title>
<style>
    /* General Styling */
    body {
        background-image: url('https://images2.alphacoders.com/997/997526.jpg'); /* Replace with the path to your background image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        color: #FFF;
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }

    /* Header styling */
    .header {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 15px;
        background-color: rgba(0, 0, 0, 0.8);
        position: fixed;
        top: 0;
        left: 0;
        color: #ff6600;
        font-size: 24px;
        font-weight: bold;
    }

    /* Logo and title */
    .header img {
        height: 40px;
        margin-right: 10px;
    }

    /* Centered container for the form */
    .container {
        background-color: rgba(51, 51, 51, 0.8);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 20px rgba(255, 165, 0, 0.6);
        width: 300px;
        text-align: center;
        margin-top: 100px; /* Offset for the fixed header */
    }

    /* Header styling inside the form container */
    .container h3 {
        background-color: #ff6600;
        color: #fff;
        padding: 10px 0;
        border-radius: 5px;
        margin-bottom: 20px;
        font-size: 20px;
    }

    /* Form styling */
    .container form {
        display: flex;
        flex-direction: column;
    }

    /* Input fields */
    .container input[type="text"],
    .container input[type="password"] {
        background-color: #222;
        color: #FFF;
        border: 1px solid #ff6600;
        padding: 10px;
        border-radius: 5px;
        margin-bottom: 15px;
    }

    /* Submit button */
    .container input[type="submit"] {
        background-color: #ff6600;
        color: #FFF;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }

    .container input[type="submit"]:hover {
        background-color: #e65c00;
    }

    /* Register link */
    .container a {
        color: #ff6600;
        font-weight: bold;
        text-decoration: none;
        font-size: 16px;
    }

    /* Adjust spacing for elements */
    h2 {
        margin-top: 20px;
    }
</style>
</head>
<body>

<!-- Header with logo and title -->
<div class="header">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjTLFLnpkAOPbcLIdbDvAqZpiIlGv5HKBEhQ&s" alt="Website Icon"> <!-- Replace with the path to your icon -->
    <span>Car Rental System</span>
</div>

<div class="container">
    <h3>User Login</h3>
    <form action="/login" method="post">
        Enter User Id:<input type="text" name="username"/>
        <br/>
        Enter Password:<input type="password" name="password"/>
        <br/>
        <input type="submit" value="Submit"/>
    </form>
    <h2>
        <a href="/register">Register for new User</a>
    </h2>
</div>

</body>
</html>
