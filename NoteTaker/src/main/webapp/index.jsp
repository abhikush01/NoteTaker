<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker : Home Page</title>
    <%@include file = "all_js_css.jsp" %>
  </head>
  <body>
  	
  	<%@include file = "navbar.jsp" %>
    
    <div class = "container">
    	<br>
    	<div class="card py-4">
    		<img class="img-fluid mx-auto" style="max-width:400px" src="img/notepad.png">
    		<h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
    		<div class="container text-center">
    			<a href="add_notes.jsp" class="btn btn-outline-primary text-center">Start here</a>
    		</div>
    	</div>
    </div>
    
       
  </body>
</html>