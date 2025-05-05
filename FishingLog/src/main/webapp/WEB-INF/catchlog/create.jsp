<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Catch Log</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">

</head>
<body>
	<h1 class="site_title">Hook, Line, and Logger</h1>
	<div class="container">
		<a href="home.do">Home</a>
		<div class="container" id="create_page_content">
			<h1>Add New Catch Log</h1>
			<form action="create.do" method="POST">
				<table>
					<tr>
						<td><label for="fishermanId">Add Fisherman ID:</label></td>
						<td><input type="text" name="fishermanId"></td>
					</tr>
					<tr>
						<td><label for="dateCaught">Add Date Caught
								(YYYY:MM:DD):</label></td>
						<td><input type="text" name="dateCaught"></td>
					</tr>
					<tr>
						<td><label for="timeCaught">Add Time Caught (HH:MM):</label></td>
						<td><input type="text" name="timeCaught"></td>
					</tr>
					<tr>
						<td><label for="moonPhase">Add Moon Phase:</label></td>
						<td><input type="text" name="moonPhase"></td>
					</tr>
					<tr>
						<td><label for="waterType">Add Water Type:</label></td>
						<td><input type="text" name="waterType"></td>
					</tr>
					<tr>
						<td><label for="waterTemp">Add Water Temp:</label></td>
						<td><input type="text" name="waterTemp"></td>
					</tr>
					<tr>
						<td><label for="species">Add Species:</label></td>
						<td><input type="text" name="species"></td>
					</tr>
					<tr>
						<td><label for="scientificName">Add Scientific Name:</label></td>
						<td><input type="text" name="scientificName"></td>
					</tr>
					<tr>
						<td><label for="weightInLbs">Add Weight in Pounds:</label></td>
						<td><input type="text" name="weightInLbs"></td>
					</tr>
					<tr>
						<td><label for="lengthInInches">Add Length in Inches:</label></td>
						<td><input type="text" name="lengthInInches"></td>
					</tr>
					<tr>
						<td><label for="baitUsed">Add Bait Used:</label></td>
						<td><input type="text" name="baitUsed"></td>
					</tr>
					<tr>
						<td><label for="catchAndRelease">Add Catch and
								Release (True or False):</label></td>
						<td><input type="text" name="catchAndRelease"></td>
					</tr>
					<tr>
						<td><label for="latitude">Add Latitude:</label></td>
						<td><input type="text" name="latitude"></td>
					</tr>
					<tr>
						<td><label for="longitude">Add Longitude:</label></td>
						<td><input type="text" name="longitude"></td>
					</tr>
					<tr>
						<td><label for="notes">Add Notes:</label></td>
						<td><input type="text" name="notes"></td>
					</tr>
					<tr>
						<td><label for="imageUrl">Add Image URL:</label></td>
						<td><input type="text" name="imageUrl"></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn btn-primary">Save
								Catch Report</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>