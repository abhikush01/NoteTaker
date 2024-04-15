<%@page import ="com.helper.FactoryProvider" %>
<%@page import ="org.hibernate.Session"%>
<%@page import ="org.hibernate.Transaction"%>
<%@page import ="com.entities.Note" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page: Note Taker</title>
<%@include file = "all_js_css.jsp" %>
</head>
<body>
	<%@include file = "navbar.jsp" %>
	<div class="container">
		<br>
		<h1>Edit Your Note</h1>
		<br>
		
		
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
		%>
		
		<form action="UpdateServlet" class="container" method="post">
  			
  			<input value="<%= note.getId()%>" name="noteID" type="hidden"/>
  			
  			<div class="mb-3">
   				 <label for="title" class="form-label">Note title</label>
    			 <input name="title" type="text" required class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" value="<%=note.getTitle()%>"/>
   			</div>
   			
  			<div class="mb-3">
    			<label for="content"  >Note content</label>
    			<textarea name="content" id="content" required class="form-control" style = "height:300px" placeholder= "Enter your content here" ><%=note.getContent()%></textarea>
  			</div>
  			<div class="container text-center">
  				<button type="submit" class="btn btn-success">Save</button>
  			</div>
  			
		</form>
		
		
	</div>


</body>
</html>