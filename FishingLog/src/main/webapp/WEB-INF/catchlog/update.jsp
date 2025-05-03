<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>
<form action ="goToUpdateForm.do" method="GET">
<label for="fisherman_id">Fisherman ID: </label>
<input type="text" name="fisherman_id" placeholder="${catchLog.fishermanId }" /><br> 
<label for="date_caught">Date Caught: </label>
<input type="text" name="date_caught" placeholder="${catchLog.dateCaught }" />

<hr>
<input type="submit" class="btn btn-outline-primary" value="Update Catch Log" />
</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
	 integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</body>
</html>