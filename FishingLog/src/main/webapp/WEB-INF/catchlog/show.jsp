<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

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
			<c:choose>
				<c:when test="${empty catchLog and empty catchLogList}">
					<div class="container" id="page_content">
						<form action="getCatchLog.do" method="GET">
							<img src="images/hooklinelogger.png" class="site_logo" /><br>
								<p>Catch Log not found</p>
							Catch Log ID: <input type="text" name="catchLogId" /> <input
								class="btn btn-outline-primary" type="submit" value="Show Catch" />
						</form>
				</c:when>
				<c:when test="${not empty catchLogList }">

					<table>
						<tr class="column_title">
							<th>Species</th>
							<th>Weight (lbs)</th>
							<th>Length (inches)</th>
							<th>Date</th>
						</tr>
						<c:forEach var="c" items="${catchLogList}">
							<tr>
								<td><a href="https://en.wikipedia.org/wiki/${c.species}"
									target="_blank">${c.species}</a></td>
								<td>${c.weightInLbs}</td>
								<td>${c.lengthInInches}</td>
								<td>${c.dateCaught}</td>
								<td><a href="/getCatchLog.do?catchLogId=${c.id}"
									type="button" class="btn btn-primary">View</a></td>
								<td><a href="goToUpdateForm.do?id=${ c.id }" type="button"
									class="btn btn-secondary">Update</a></td>
								<td><form action="delete.do" method="POST">
										<input type="hidden" name="catchLogId" value="${c.id}">
										<input type="submit" class="btn btn-danger" value="Delete" />
									</form></td>
							</tr>
						</c:forEach>
					</table>
				</c:when>
				<c:otherwise>
					<div>
						<hr>
						<h2>
							<a href="https://en.wikipedia.org/wiki/${catchLog.species}"
								target="_blank">${catchLog.species}(${catchLog.scientificName})</a>
						</h2>
						<h6>Fisherman ID: ${catchLog.fishermanId} Catch ID:
							${catchLog.id}</h6>
						<h6>Date: ${catchLog.dateCaught } | Time:
							${catchLog.timeCaught}</h6>
						<h6>Water Type: ${catchLog.waterType } | Water Temp:
							${catchLog.waterTemp}</h6>
						<h6>Moon Phase: ${catchLog.moonPhase} | Bait Used:
							${catchLog.baitUsed}</h6>
						<h6>Weight(Lbs): ${catchLog.weightInLbs} | Length(Inches):
							${catchLog.lengthInInches}</h6>
						<h6>Catch and Release: ${catchLog.catchAndRelease}</h6>
						<h6>Notes: ${catchLog.notes}</h6>
						<hr>
						<div class="embed_section">
							<div class="fish_picture">
								<c:choose>
									<c:when test="${not empty catchLog.imageUrl }">
										<br>
										<img class="fish_picture" src="${catchLog.imageUrl}"
											alt="Fish Photo" width="400" height="400" />
									</c:when>
								</c:choose>
								<c:choose>
									<c:when
										test="${not empty catchLog.latitude and not empty catchLog.longitude}">
										<iframe class="embed_map" width="400" height="400"
											style="border: 0" loading="lazy" allowfullscreen
											referrerpolicy="no-referrer-when-downgrade"
											src="https://maps.google.com/maps?q=${catchLog.latitude},${catchLog.longitude}&z=14&output=embed">
										</iframe>
									</c:when>
								</c:choose>
							</div>
						</div>
						<hr>
						<a href="goToUpdateForm.do?id=${ catchLog.id }" type="button"
							class="btn btn-secondary">Update Catch Log</a>
					</div>
					<!-- Delete Film Button -->
					<form action="delete.do" method="POST">
						<input type="hidden" name="catchLogId" value="${catchLog.id}">
						<input type="submit" class="btn btn-danger"
							value="Delete this Catch Log" />
					</form>
				</c:otherwise>
			</c:choose>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
				crossorigin="anonymous"></script>
		</div>

		<c:if test="${not empty message}">
			<h3 class="message">${message}</h3>
		</c:if>
	</div>


</body>
</html>