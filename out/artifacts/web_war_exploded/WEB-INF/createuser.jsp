<!DOCUMENT HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../css/main.css">
		<link rel="stylesheet" type="text/css" href="../css/createuser.css">
		<title>Create user.</title>
	</head>
	<body>
	<div id="layer-1">
        <form id="create"  action="/save" method="post">
	<div id="layer-2">
        <input type="hidden" name="oldEmail" value="${user.email}"/>
	 <input id="input-1" type="text" name="login" value="${user.email}">
 	 <input id="input-2" type="text" name="password" value="${user.password}">
 	 <input id="input-3" type="text" name="firstName" value="${user.firstName}">
	 <input id="input-4" type="text" name="lastName" value="${user.lastName}">
	 <p id="input-5"><input  name="role" type="checkbox" checked>Admin</p>
	 <p id="text-1">Login :</p>
	 <p id="text-2">Password :</p>
	 <p id="text-3">First Name :</p>
	 <p id="text-4">Last Name :</p>
     <p id="text-5">Role :</p>
	</div>
            <div id="layer-4">
            <button id="button-3" type="submit" name="button">Save</button>
                </div>
        </form>



	</div>
    <div id="layer-5">
        <form id="button-all" method="post" action="/users">
            <button id="button-2" type="submit" name="button">Back</button>
        </form>
    </div>
	</body>
</html>