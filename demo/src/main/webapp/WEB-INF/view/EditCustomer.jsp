<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Customer</title>
<style>
/* Add your custom styling here */
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
}

form {
	max-width: 600px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 8px;
}

input {
	width: calc(50% - 12px); /* Adjust width as needed */
	padding: 8px;
	margin-bottom: 12px;
	box-sizing: border-box;
	display: inline-block; /* Display input fields inline */
}

/* Clearfix to handle line break after inline-block elements */
clearfix {
	display: flex;
}

button {
	padding: 10px 20px;
	background-color: #4caf50;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>
<body>
	<form action="edit" method="post">
		<h2>Add Customer</h2>
		<div class="clearfix">
			<label for="id">Customer Id:</label> <input type="hidden" name="id"
				value="${customer.getId()}"> <label for="firstName">First
				Name:</label> <input type="text" id="firstName" name="firstName"
				value="${customer.getFirstName()}" required> <br> <label
				for="lastName">Last Name:</label> <input type="text" id="lastName"
				name="lastName" value="${customer.getLastName()}" required>
			<br>
		</div>
		<div>
			<label for="street">Street:</label> <input type="text" id="street"
				name="street" value="${customer.getStreet()" required> <label
				for="address">Address:</label> <input type="text" id="address"
				name="address" value="${customer.getAddress()" required> <label
				for="city">City:</label> <input type="text" id="city" name="city"
				value="${customer.getCity()" required> <label for="state">State:</label>
			<input type="text" id="state" name="state"
				value="${customer.getState()" required>

		</div>
		<div>
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" value="${customer.getEmail()" required> <label
				for="phone">Phone:</label> <input type="text" id="phone"
				name="phone" value="${customer.getPhone()" required>
		</div>

	</form>

	<a href="CustomerPage">Back </a>
</body>
</html>