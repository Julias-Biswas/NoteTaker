<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Link All Bootstrap CDN -->
<%@include file="link/links.jsp"%>

<title>NoteTaker : All Notes</title>
</head>
<body>

	<!-- Navbar without Sign in -->
	<%@include file="navbar.jsp"%>

	<br>
	<br>

	<div class="container">
		<h1 class="text-center text-uppercase m-3">All Notes</h1>

		<div class="row">

			<%
			Session s = FactoryProvider.getFactory().openSession();

			Query query = s.createQuery("FROM Note");

			List<Note> list = query.list();

			for (Note note : list) {
				//out.println(note.getId()+" : "+note.getTitle()+"<br><br>");
			%>

			<div class="col-md-12">
				<div class="card mt-3">
					<div class="row">
						<div class="col-md-6 text-center"></div>
						<div class="col-md-6">
							<p class="text-primary font-weight-bold" style="float: right;"><%=note.getAddedDate().toLocaleString()%></p>
						</div>
					</div>
					<div class="card-body text-center">
						<img class="card-img-top p-2 mx-auto" src="img/note.png"
							alt="Card image cap" style="max-width: 100px;" />
						<h3 class="card-title"><%=note.getTitle()%></h3>
						<p class="card-text"><%=note.getContent()%></p>
						<a href="edit.jsp?nid=<%=note.getId()%>" class="btn btn-primary"><i
							class="fa-solid fa-file-pen"></i> Update</a> <a
							href="DeleteServlet?nid=<%=note.getId()%>" class="btn btn-danger"><i
							class="fa-solid fa-trash"></i> Delete</a>
					</div>
				</div>
			</div>

			<%
			}

			s.close();
			%>
		</div>
	</div>

	<!-- Footer -->
	<div class="container-flude" style="margin-top: 50px;">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>