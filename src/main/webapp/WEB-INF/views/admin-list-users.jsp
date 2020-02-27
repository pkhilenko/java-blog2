<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<div class="container">
    <div class="col-md-offset-1 col-md-10 mt-5">
        <input type="button" value="Add User" onclick="window.location.href='/admin/showForm';"
               class="btn btn-primary" />
        <hr />
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">
                    <h2>Users</h2>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>name</th>
                        <th>email</th>
                        <th>country</th>
                        <th>role</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="user" items="${users}">
                        <c:url var="updateLink" value="updateForm">
                            <c:param name="userId" value="${user.id}" />
                        </c:url>
                        <c:url var="deleteLink" value="delete">
                            <c:param name="userId" value="${user.id}" />
                        </c:url>
                        <tr>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.country}</td>
                            <td>
                                <c:forEach var="role" items="${user.roles}">
                                    <span>${role} </span>
                                </c:forEach>
                            </td>
                            <td>
                                <a href="${updateLink}">Update</a> | <a href="${deleteLink}"
                                     onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>