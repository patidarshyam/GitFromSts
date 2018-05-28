<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style type="text/css">
li {
	list-style: none;
}

td {
	background-color: white;
}

tr {
	height: 200px;
}
</style>


</head>
<body style="background-color: gray;">
	<table  width="100%">
		<tr>
			<td width="300" align="center">
				<video style="border: 5px solid black;" controls
					src="http://localhost:8080/video/${fileName}" width="620">
					Sorry, your browser doesn't support embedded videos, but don't
					worry, you can
					<a href="#">download it</a> and watch it with your favorite video
					player!
				</video>
			</td>
		</tr>
	</table>
	
	<table width="100%">
		<tr>
			<td> 
			<h3 align="center">Upload Your Video</h3>
			<hr>
				<form action="upload" method="post" enctype="multipart/form-data">
					<strong>Select File : </strong><input type="file" name="file" /><br>
					 <input type="submit" value="upload" />
				</form>
			</td>
			<td>
				<h3 align="center">List of Videos</h3><hr>
				<ul>
					<c:forEach var="video" items="${requestScope.videos}">
						<li><a href="getVideo?id=${video}">${video}</a></li>
					</c:forEach>
				</ul>
			</td>
		</tr>
		
	</table>

</body>
</html>