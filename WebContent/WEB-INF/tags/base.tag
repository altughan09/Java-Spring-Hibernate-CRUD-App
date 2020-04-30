<%@tag description="Simple Base Tag" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Relationship Management</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/metro-all.min.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.dataTables.min.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css"/>
</head>
<body>
  <jsp:doBody/>
  	<script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>