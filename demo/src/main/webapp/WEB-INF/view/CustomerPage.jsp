<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Customer List</title>
<style>
/* Add your custom styling here */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

.edit-button, .delete-button {
	padding: 5px 10px;
	cursor: pointer;
}

.edit-button {
	background-color: #4CAF50;
	color: #fff;
}

.delete-button {
	background-color: #f44336;
	color: #fff;
}
</style>
</head>
<body>

	<h2>Customer List</h2>
	<a href="AddCustomer"><button style="margin-bottom: 10px;">Add
			Customer</button></a>

	<select id="searchCriteria">
		<option value="firstName">First Name</option>
		<option value="city">City</option>
		<option value="email">Email</option>
		<option value="phone">Phone</option>
	</select>


	<input type="text" id="searchTerm" placeholder="Enter search term">


	<button onclick="performSearch()">Search</button>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Street</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="customer" items="${customers}">
				<tr>
					<td>${customer.getId()}</td>
					<td>${customer.getFirstName()}</td>
					<td>${customer.getLastName()}</td>
					<td>${customer.getStreet()}</td>
					<td>${customer.getAddress()}</td>
					<td>${customer.getCity()}</td>
					<td>${customer.getState()}</td>
					<td>${customer.getEmail()}</td>
					<td>${customer.getPhone()}</td>


					<td><a href="editCustomer/${customer.getId()}"><button
								class="edit-button">Edit</button></a> <a
						href="/delete/${customer.getId()}"><button
								class="delete-button">Delete</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
