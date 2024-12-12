<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Make Payment</title>
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

        .form-container {
            text-align: center;
            background-color: #fff; /* White form background */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
            margin-top: 20px;
        }

        .form-heading {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #333; /* Dark grey buttons */
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .btn:hover {
            background-color: #555; /* Slightly lighter grey on hover */
        }

        .detail-item {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .description {
            margin: 20px 0;
            font-style: italic;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: -15px;
            margin-bottom: 15px;
        }

        .error {
            border-color: red;
        }
    </style>
    <script>
        function validateForm(event) {
            let isValid = true;
            const amountInput = document.getElementById("amount");
            const paymentRefInput = document.getElementById("paymentRefNo");
            const pendingAmount = parseFloat("${pendingPayment}");
            const errorMessages = document.querySelectorAll(".error-message");

            // Clear previous error messages
            errorMessages.forEach(msg => msg.remove());

            // Validate amount
            const amountValue = amountInput.value.trim();
            const amount = parseFloat(amountValue);

            if (amountValue === "") {
                isValid = false;
                amountInput.classList.add("error");

                const errorMsg = document.createElement("div");
                errorMsg.className = "error-message";
                errorMsg.innerText = "Amount paid cannot be empty.";
                amountInput.insertAdjacentElement("afterend", errorMsg);
            } else if (amount > pendingAmount) {
                isValid = false;
                amountInput.classList.add("error");

                const errorMsg = document.createElement("div");
                errorMsg.className = "error-message";
                errorMsg.innerText = "Amount paid cannot be greater than the pending amount.";
                amountInput.insertAdjacentElement("afterend", errorMsg);
            } else {
                amountInput.classList.remove("error");
            }

            // Validate payment reference number
            if (paymentRefInput.value.trim() === "") {
                isValid = false;
                paymentRefInput.classList.add("error");

                const errorMsg = document.createElement("div");
                errorMsg.className = "error-message";
                errorMsg.innerText = "Payment reference number cannot be empty.";
                paymentRefInput.insertAdjacentElement("afterend", errorMsg);
            } else {
                paymentRefInput.classList.remove("error");
            }

            // Prevent form submission if there are validation errors
            if (!isValid) {
                event.preventDefault();
            }
        }

        // Attach validation to form submission
        document.addEventListener("DOMContentLoaded", function () {
            const paymentForm = document.getElementById("paymentForm");
            paymentForm.addEventListener("submit", validateForm);
        });
    </script>
</head>
<body>
    <header>
        <a href="/index">Home</a>
        <a href="/logout">Logout</a>
    </header>

    <div class="form-container">
        <h2 class="form-heading">Make Payment</h2>
        <form:form id="paymentForm" action="/makePayment" method="post" modelAttribute="transaction">
            <p class="detail-item"><strong>Booking ID:</strong> ${transaction.bookingId}</p>
            <p class="detail-item"><strong>Total Payment:</strong> ${totalPayment}</p>
            <p class="detail-item"><strong>Pending Payment:</strong> ${pendingPayment}</p>
            <p class="description"><strong>Make payment</strong></p>

            <form:hidden path="bookingId"/>
            <form:hidden path="transactionId"/>

            <label class="label" for="transactionId">Transaction Id:</label>
            <form:input path="transactionId" id="transactionId" class="input" disabled="true"/>

            <label class="label" for="amount">Amount Paid:</label>
            <form:input path="amount" id="amount" class="input" placeholder="Enter payment amount"/>

            <label class="label" for="paymentRefNo">Payment Reference Number:</label>
            <form:input path="paymentRefNo" id="paymentRefNo" class="input" placeholder="Enter payment reference number"/>

            <button class="btn" type="submit">Make Payment</button>
            <button class="btn" type="reset">Reset</button>
        </form:form>
    </div>
</body>
</html>
