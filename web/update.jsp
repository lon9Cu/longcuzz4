<%-- 
    Document   : update
    Created on : Jan 25, 2024, 10:52:14 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update category</h1>
        <c:set var="c" value="${requestScope.category}"/>
        <form action="update">
            Enter id <input type="number" readonly value="${c.id}" placeholder="Enter ID" name="id"><br>
            Enter name <input type="text" placeholder="Enter Name" name="name" value="${c.name}"><br>
            Enter describe <input type="text" placeholder="Enter Describe" name="desc" value="${c.describe}"><br>
            <button type="submit">Update</button>
        </form>
        <h2 style="color: red;">${requestScope.error}</h2>
    </body>
</html>
