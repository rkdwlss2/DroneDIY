<%
   response.write "This sentence is outputed"
   response.write "<script type='text/javascript'> aler('Fire'); </script>"
   
   response.end
   response.write "This sentence is not outputed"
response.redirect("http://www.google.com")
   %>
   