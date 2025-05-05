<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<div class="container" id="page_content">
			<form action="update.do" method="POST" class="container">
				<input type="hidden" value="${catchLog.id }" name="catchLogId" /> <label
					for="fisherman_id">Fisherman ID: </label> <input type="text"
					id="fisherman_id" name="fishermanId"
					value="${catchLog.fishermanId }" /><br> <label
					for="date_caught">Date Caught: </label> <input type="text"
					id="date_caught" name="dateCaught" value="${catchLog.dateCaught }" /><br>
				<label for="time_caught">Time Caught: </label> <input type="text"
					id="time_caught" name="timeCaught" value="${catchLog.timeCaught }" /><br>
				<label for="moon_phase">Moon Phase: </label> <input type="text"
					id="moon_phase" name="moonPhase" value="${catchLog.moonPhase }" /><br>
				<label for="water_type">Water Type: </label> <input type="text"
					id="water_type" name="waterType" value="${catchLog.waterType}" /><br>
				<label for="water_temp">Water Temp: </label> <input type="text"
					id="water_temp" name="waterTemp" value="${catchLog.waterTemp }" /><br>
				<label for="species">Species: </label> <input type="text"
					id="species" name="species" value="${catchLog.species }" /><br>
				<label for="scientific_name">Scientific Name: </label> <input
					type="text" id="scientific_name" name="scientificName"
					value="${catchLog.scientificName }" /><br> <label
					for="weight_lbs">Weight in Pounds: </label> <input type="text"
					id="weight_lbs" name="weightInLbs" value="${catchLog.weightInLbs }" /><br>
				<label for="length_inches">Length in Inches: </label> <input
					type="text" id="length_inches" name="lengthInInches"
					value="${catchLog.lengthInInches }" /><br> <label
					for="bait_used">Bait Used: </label> <input type="text"
					id="bait_used" name="baitUsed" value="${catchLog.baitUsed }" /><br>
				<label for="catch_and_release">Catch and Release: </label> <input
					type="text" id="catch_and_release" name="catchAndRelease"
					value="${catchLog.catchAndRelease }" /><br> <label
					for="latitude">Latitude: </label> <input type="text" id="latitude"
					name="latitude" value="${catchLog.latitude }" /><br> <label
					for="longitude">Longitude: </label> <input type="text"
					id="longitude" name="longitude" value="${catchLog.longitude }" /><br>
				<label for="notes">Notes: </label> <input type="text" id="notes"
					name="notes" value="${catchLog.notes }" /><br> <label
					for="image_url">Image URL: </label> <input type="text"
					id="image_url" name="imageUrl" value="${catchLog.imageUrl }" /><br>
				<hr>
				<input type="submit" class="btn btn-outline-primary"
					value="Update Catch Log" /><br>
			</form>
			<img src="${catchLog.imageUrl }" />
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
</body>
</html>