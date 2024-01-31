<%-- 
    Document   : new
    Created on : Jan 23, 2024, 8:58:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add a new category</h1>
        <form action="add">
            Enter id <input type="number" placeholder="Enter ID" name="id"><br>
            Enter name <input type="text" placeholder="Enter Name" name="name"><br>
            Enter describe <input type="text" placeholder="Enter Describe" name="desc"><br>
            <button type="submit">Save</button>
        </form>
        <h2 style="color: red;">${requestScope.error}</h2>
    </body>
</html>
