<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Link All Bootstrap CDN -->
<%@include file="link/links.jsp"%>

<title>NoteTaker : Home</title>
</head>
<body>

	<!-- Navbar without Sign in -->
	<%@include file="navbar.jsp"%>

	<br><br>

	<div class="container p-4">
		<div class="card p-3">
			<img alt="" src="img/note.png" class="img-fluid mx-auto"
				style="max-width: 400px;">
			<h1 class="text-primary text-uppercase text-center">Start Taking
				Your Notes</h1>
			<div class="container text-center">
				<a href="add_notes.jsp" class="btn btn-outline-primary text-center">Start
					Here</a>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="container-flude" style="margin-top: 108px;">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>