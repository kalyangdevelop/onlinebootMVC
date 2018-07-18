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
    <title>OrdersList!</title>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        .table{
            background-color:#5f5f5f;
            color:#ffffff;
        }


    </style>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/admin' title='Admin'>Admin</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/logout' title='login'>LogOut</a>
            </div>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Orders
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/orders">Order List</a>
                <a class="dropdown-item" href="/deleteOrder">Dlete Order</a>

            </div>
        </li>
    </ul>
</nav>
<br>
<%--
<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/admin' title='admin'>Admin</a>
            <a class="act" href="/orders">Order List</a>

            &lt;%&ndash;<a class="act" href="/addOrder">Add Order</a>&ndash;%&gt;
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
<h1>Order List</h1>


<div class="container">

    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Address1</th>
            <th>Address2</th>
            <th>Total Bill</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="o" items="${o}">
            <tr>
                <td>${o.oid}</td>
                <td>${o.fullname}</td>
                <td>${o.email}</td>
                <td>${o.address1}</td>
                <td>${o.address2}</td>
                <td>${o.totalbill}</td>
                <td><button><a href="/uporder?oid=${o.oid}">Edit</a></button></td>
                <td><button><a href="/delor?oid=${o.oid}">Delete</a></button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</div>
</body>
</html>

