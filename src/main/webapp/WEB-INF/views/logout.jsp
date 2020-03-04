<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
    <ul class="navbar-nav">
        <li><a href="${rootPath}/user" class="nav-link">Users</a></li>
    </ul>
    <ul class="navbar-nav">
        <li><a href="${rootPath}/logout" class="navbar-link">Logout</a></li>
    </ul>
</nav>
