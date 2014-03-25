<!DOCUMENT HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/users.css">
    <title>Users (<%=request.getUserPrincipal().getName()%>)</title>
    <script src="js/read.js"></script>
</head>
<body>
<div id="layer-1">
    <table id="users-1">
        <tr>
            <th><a>Email</a></th>
            <th>First Name</th>
            <my:security allowRoles="both">
                <th>
                    Last Name
                </th>
            </my:security>

        </tr>
        <c:if test="${not empty users}">
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><a href="edit?email=${user.email}">${user.email}</a></td>
                    <td>${user.firstName}</td>
                    <my:security allowRoles="both">
                    <td>${user.lastName}</td>
                    </my:security>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</div>
<div id="layer-3">

    <form action="/save" method="get">
        <button id="button-2" type="submit" name="button">Exit</button>
    </form>
    <form action="/create" method="post">
        <button id="button-3" type="submit" name="button">Create user</button>
    </form>

</div>
</body>
</html>