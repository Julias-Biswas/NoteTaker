<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Link All Bootstrap CDN -->
<%@include file="link/links.jsp"%>

<title>NoteTaker : Add Note</title>
</head>
<body>

	<!-- Navbar without Sign in -->
	<%@include file="navbar.jsp"%>

	<br><br>

	<div class="container">

		<br>
		<h1 class="text-center">Please fill your note details</h1>
		<br>

		<!-- Add Note Form -->
		<form action="SaveNoteServlet" method="POST">
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Note Title Here..."
					required="required" name="title">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label>
				<textarea class="form-control" id="exampleInputPassword1"
					placeholder="Enter Your Content Here..."
					style="height: 250px; resize: none;" required="required"
					name="content"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add Your Note</button>
			</div>
		</form>

	</div>

	<!-- Footer -->
	<div class="container-flude" style="margin-top: 158px;">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>