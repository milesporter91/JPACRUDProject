<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fishing Log</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
		<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div class="container" id="page_content"><form action="getCatchLog.do" method="GET">
		<img src="images/hooklinelogger.png" class="site_logo" /><br>
		Catch Log ID: <input type="text" name="catchLogId" /> <input
			class="btn btn-outline-primary" type="submit" value="Show Catch" />
	</form>
	<br>
	<c:if test="${not empty message}">
    <h3 class = "message">${message }</h3>
    </c:if>
    <br><div class="buttons">
	<a href="goToCreateForm.do" type="button" class="btn btn-success">Create New Catch Log</a>
	<a href="showAll.do" type="button" class="btn btn-secondary">Show All Catch Logs</a>
	</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
	 integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
	 
</body>
</html>