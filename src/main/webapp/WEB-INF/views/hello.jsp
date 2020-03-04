<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<header>
    <jsp:include page="logout.jsp"/>
</header>

<c:forEach var="msq" items="${messages}">
    <h1>${msq}</h1>
</c:forEach>

</body>
</html>