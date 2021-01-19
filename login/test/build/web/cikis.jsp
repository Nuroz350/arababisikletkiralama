<%-- 
    Document   : cikis
    Created on : 11.Oca.2021, 15:08:22
    Author     : Nur ÖZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Çıkıs yap</title>
</head>
<body>
   <%
    
    session.invalidate();
    session = request.getSession();
    response.sendRedirect("index.jsp");
    
    %>
</body>
</html>
