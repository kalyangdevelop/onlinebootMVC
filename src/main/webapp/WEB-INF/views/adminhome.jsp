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
    <title>Admin Home!</title>
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
    <a class="navbar-brand" href='/admin' title='admin'>Admin</a>

    <!-- Links -->
    <ul class="navbar-nav">

        <li class="nav-item">
            <a class="nav-link" href='/logout' title='login'>Login Out</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop2" data-toggle="dropdown">
                Admin Add   </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/adminlogin">Admin List</a>
                <a class="dropdown-item" href="/addadmin">Add Admin</a>
                <a class="dropdown-item" href="/deleteadmin">Delete Admin</a>

            </div>
        </li>
        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Items    </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/cells">Items</a>
                <a class="dropdown-item" href="/addCell">CreateItem</a>
                <a class="dropdown-item" href="/deleteCell">Delete Item</a>
                <a class="dropdown-item" href="/updateCell">Update Item</a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop1" data-toggle="dropdown">
               Orders List
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/orders">Orders</a>
                <a class="dropdown-item" href="/deleteOrder">Delete Order</a>

            </div>
        </li>
    </ul>
</nav>

<%--<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/admin' title='admin'>Admin</a>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">

                </a>
                <div class="dropdown-menu">
                    <a class="act" href="/addCell">CreateItem</a>
                    <a class="act" href="/deleteCell">Delete Item</a>
                    <a class="act" href="/updateCell">Update Item</a>
                </div>
            </li>


            <a class="act" href="/orders">Order List</a>
            <a class="act" href="/deleteOrder">Delete Order</a>
            <a class="act" href="/updateOrder">Update Order</a>
            <div class="log">
                <a class="active" href='/logout' title='login'>Login Out</a>
            </div>
            <div class="search-container">


                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Submit</button>


            </div>
        </div>
    </div>
</div><br>--%>
<h1>Admin Page!</h1>

    <p>Welcome to admin page. <br>
        You can add, delete and update <b>Products</b>. <br> You can delete <b>Orders</b>. <br> You can add, delete and update <b>Admins</b>...... </p>
</body>
</html>

