<%--
  Created by IntelliJ IDEA.
  User: kalya
  Date: 7/10/2018
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Homepage!</title><meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>

    </style>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/home' title='Home'>HOME</a>
    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/loginpage' title='login'>Login</a>
        </li>
    </ul>
</nav>
<br><%--
<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/home' title='Home'>HOME</a>
                       <div class="log">
                <a class="active" href='/loginpage' title='login'>Login</a>
            </div>
        </div>
    </div>
</div><br>
--%>
<div class="container">
    <h1 style="text-align: center">Login</h1>
    <form action="/loginprocess" method="get" class="center">
        <div class="form-group">
            <label for="us">User Name:</label>
            <input type="text" class="form-control" id="us" placeholder="Enter User Name" name="userName">
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
        </div><br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<%--<h1>Login</h1>

<div>

    <form action="/" method="post" class="center">
        <div>
            User Name:<br>
            <input type="text" name="userName"></div><br>

        <div>
            Password:<br>
            <input type="password" name="password"></div><br>
        <div>

            <input type="submit" name="Login" value="Login">
        </div>


    </form>
</div>--%>
</body>
</html>

