<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int noteId = Integer.parseInt(request.getParameter("nid").trim());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Link All Bootstrap CDN -->
<%@include file="link/links.jsp"%>

<title>NoteTaker : Edit Your Note</title>
</head>
<body>

	<!-- Navbar without Sign in -->
	<%@include file="navbar.jsp"%>

	<br><br>

	<div class="container">
		<h1 class="text-center text-uppercase m-3">Edit Your Note</h1>

		<div class="row">
			<div class="col-md-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();

				Note note = (Note) s.get(Note.class, noteId);
				%>

				<!-- Edit Note Form -->
				<form action="UpdateServlet" method="POST">
					<div class="form-group">
						<input type="text" name="noteId" required="required"
							class="form-control" style="display: none;"
							value="<%=note.getId()%>">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Note Title</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"
							placeholder="Enter Note Title Here..." required="required"
							name="title" value="<%=note.getTitle()%>">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Note Content</label>
						<textarea class="form-control" id="exampleInputPassword1"
							placeholder="Enter Your Content Here..."
							style="height: 250px; resize: none;" required="required"
							name="content"><%=note.getContent()%></textarea>
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-success">Save Your
							Note</button>
					</div>
				</form>

				<%

				%>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="container-flude" style="margin-top: 175px;">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>