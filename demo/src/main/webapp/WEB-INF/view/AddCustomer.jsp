<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Customer</title>
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
	<form action="saveCustomer" method="post" >
		<h2>Add Customer</h2>
		<div class="clearfix">
		<label for="id">Customer Id:</label> <input type="text"
				id="id" name="id" required>
			<label for="firstName">First Name:</label> <input type="text"
				id="firstName" name="firstName" required> <label
				for="lastName">Last Name:</label> <input type="text" id="lastName"
				name="lastName" required>
		</div>
		<div class="clearfix">
			<label for="street">Street:</label> <input type="text" id="street"
				name="street" required> <label for="address">Address:</label>
			<input type="text" id="address" name="address" required>
		</div>
		<div class="clearfix">
			<label for="city">City:</label> <input type="text" id="city"
				name="city" required> <label for="state">State:</label> <input
				type="text" id="state" name="state" required>
		</div>
		<div class="clearfix">
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" required> <label for="phone">Phone:</label> <input
				type="text" id="phone" name="phone" required>
		</div>
		<button type="submit">Add Customer</button>
	</form>
</body>
</html>
