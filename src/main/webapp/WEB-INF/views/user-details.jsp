<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list user</title>
    <link href="<c:url value="/resources/static/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js" />"></script>
    <script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

</head>

<body>
<header>
    <jsp:include page="logout.jsp"/>
</header>

<div class="container">
    <div class="col-md-offset-1 col-md-10 mt-5">
        <hr/>
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2>User ${user.username}</h2>
                </div>
            </div>
            <div class="panel-body">
                <ul>
                    <li>email ${user.email}</li>
                    <li>country ${user.country}</li>
                    <li>roles ${user.roles}</li>
                    <li>active ${user.active}</li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>