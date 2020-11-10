<%
Dim valueX,valueY
X=request("x")
Y=request("y")

valueX=Cint(X)
valueY=Cint(Y)
%>
<%=valueX+valueY%>