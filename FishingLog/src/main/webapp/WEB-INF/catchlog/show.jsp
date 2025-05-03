<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
		<link href="css/style.css" rel="stylesheet">
	
</head>
<body>
<div class="container">
	<a href="home.do">Home</a>
	<c:choose>
		<c:when test="${empty catchLog }">
			<p>Catch Log not found</p>
		</c:when>
		<c:otherwise>
			<div>
				<hr>
				<h2>${catchLog.species}(${catchLog.scientificName})</h2>
				<h6>Date: ${catchLog.dateCaught } | Time: ${catchLog.timeCaught}</h6>
				<h6>Water Type: ${catchLog.waterType } | Water Temp: ${catchLog.waterTemp}</h6>
				<hr>
			<a href="goToUpdateForm.do?id=${ catchLog.id }" type="button" class="btn btn-secondary">Update Catch Log</a>
			</div>
		</c:otherwise>
	</c:choose>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
	 integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</div>
</body>
</html>