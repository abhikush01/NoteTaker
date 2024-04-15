<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Notes</title>
    <%@include file = "all_js_css.jsp" %>
  </head>
  <body>
    
    <%@include file = "navbar.jsp" %>
    
    <div class = "container">
    	
    	
    	<br>
    	<h1>Please fill your notes details</h1>
    	<br>
    	
    	<!-- This is add form -->
    	<form action="SavedNoteServlet" class="container" method="post">
  			<div class="mb-3">
   				 <label for="title" class="form-label">Note title</label>
    			 <input name="title" type="text" required class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here"/>
   			</div>
   			
  			<div class="mb-3">
    			<label for="content"  >Note content</label>
    			<textarea name="content" id="content" required class="form-control" style = "height:300px" placeholder= "Enter your content here"></textarea>
  			</div>
  			<div class="container text-center">
  				<button type="submit" class="btn btn-primary">Add</button>
  			</div>
  			
		</form>
    	
    </div>
    
       
  </body>
</html>