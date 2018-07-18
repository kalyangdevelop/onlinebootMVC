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

    <title>User Update!</title><meta charset="UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/home' title='Home'>Home</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/loginpage' title='login'>Login</a>
            </div>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Orders
            </a>
            <div class="dropdown-menu">

                <a class="dropdown-item" href="/userdelorder">Cancel Order</a>
                <a class="dropdown-item" href="/useruporder">Update Order</a>
            </div>
        </li>
    </ul>
</nav>
<br>

<%--

<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/home' title='Home'>Home</a>
            <a class="act" href="/addOrder">Add Order</a>
            <a class="act" href="/udeleteOrder">Delete Order</a>
            <a class="act" href="/uupdateOrder">Update Order</a>
            <div class="log">
                <a class="active" href='/loginpage' title='login'>Login</a>
            </div>
            <div class="search-container">


                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Submit</button>


            </div>
        </div>
    </div>
</div><br>
--%>
<h1>User Update!</h1>

<div class="container">
    <form action="/uuporder" method="post">

        <div class="form-group">
            <label for="usr"> Full Name:</label>
            <input type="text" class="form-control" name="fullname" id="usr" ></div>
        <div>
            <div class="form-group">
                <label for="em"> Email:</label>
                <input type="text" class="form-control" name="email" id="em" ></div>


            <div class="form-group">
                <label for="ad1"> Address1:</label>
                <input type="text" class="form-control" name="address1" id="ad1" ></div>

            <div class="form-group">
                <label for="ad2"> Address2:</label>
                <input type="text" class="form-control" name="address2" id="ad2" ></div>
            <div class="form-group">
                <label for="tb"> Total Bill:</label>
                <input type="text" class="form-control" name="totalbill" id="tb" ></div>
            <button type="submit" class="btn btn-primary">Submit</button>


            <%--<input type="submit" name="submit" value="save">--%>
        </div>
    </form>
</div>
</body>
</html>

