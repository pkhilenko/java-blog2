<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>list user</title>
    <link href="<c:url value="/src/main/webapp/static/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/src/main/webapp/static/js/jquery-3.4.1.min.js" />"></script>
    <script src="<c:url value="/src/main/webapp/static/js/bootstrap.min.js" />"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10 mt-5">
        <input type="button" value="Add User" onclick="window.location.href='/admin/showForm'; return false;"
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

                    <c:forEach var="tempUser" items="${users}">
                        <c:url var="updateLink" value="updateForm">
                            <c:param name="userId" value="${tempUser.id}" />
                        </c:url>
                        <c:url var="deleteLink" value="delete">
                            <c:param name="userId" value="${tempUser.id}" />
                        </c:url>
                        <tr>
                            <td>${tempUser.name}</td>
                            <td>${tempUser.email}</td>
                            <td>${tempUser.country}</td>
                            <td>
                                <c:forEach var="tempRole" items="${tempUser.roles}">
                                    <span>${tempRole} </span>
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