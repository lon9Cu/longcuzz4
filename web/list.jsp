<%-- 
    Document   : list
    Created on : Jan 23, 2024, 8:47:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="width: 50%; margin: 0 auto; margin-top: 80px; background-color: bisque;">
            <h1>List of category</h1>
            <h2><a href="new.jsp">Add new</a></h2>
            <table border="1px" style="border-collapse: collapse;">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Describe</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${requestScope.data}" var="c">
                    <c:set var="id" value="${c.id}"/>
                    <tr>
                        <td>${id}</td>
                        <td>${c.name}</td>
                        <td>${c.describe}</td>
                        <td>
                            <a href="update?id=${id}">Update</a>&nbsp;&nbsp;&nbsp;
                            <a href="#" onclick="doDelete('${id}')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <script type="text/javascript">
            function doDelete(id){
                if(confirm('Mày có chắc chắn mày xoá' +id+ ' không đấy ?')){
                    window.location = 'delete?id='+id;
                }
            }
        </script>
    </body>
</html>
