<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring MVC</title>
    <link href="<c:url value="/resources/static/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js" />"></script>
    <script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<header>
    <jsp:include page="navbar.jsp"/>
</header>

<div class="container">
    <div class="col-md-offset-2 col-md-7">
        <h2 class="text-center">User</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Add User</div>
            </div>
            <div class="panel-body">
                <form:form action="saveUser" cssClass="form-horizontal" method="post" modelAttribute="user">
                    <form:hidden path="id"/>

                    <div class="form-group">
                        <label for="username" class="col-md-3 control-label">Name</label>
                        <div class="col-md-9">
                            <form:input path="username" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email" class="col-md-3 control-label">Email</label>
                        <div class="col-md-9">
                            <form:input type="email" path="email" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label">Password</label>
                        <div class="col-md-9">
                            <form:input type="password" path="password" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="country" class="col-md-3 control-label">Country</label>
                        <div class="col-md-9">
                            <form:input path="country" cssClass="form-control"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="roles" class="col-md-3 control-label">Role</label>
                        <div class="col-md-9">
                            <form:select path="roles" cssStyle="width: 100%">
                                <form:option  value="USER"  />
                                <form:option  value="ADMIN" />
                            </form:select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-9">
                            <form:button cssClass="btn btn-primary">Submit</form:button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>