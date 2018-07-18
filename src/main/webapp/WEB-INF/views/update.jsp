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

    <title>Update Product!</title><meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        .topnav {
            position:relative;
            z-index:2;
            font-size:17px;
            background-color:#5f5f5f;
            color:#ffffff;
            width:100%;
            padding:0;
            letter-spacing:1px;
            font-family:"Segoe UI",Arial,sans-serif;
        }
        .topnav a{
            padding:10px 15px 9px 15px !important;
        }
        .topnav .bar a:hover,.topnav .bar a:focus{
            background-color:#000000 !important;
            color:#ffffff !important;
        }
        .topnav .bar a.active {
            background-color:#4CAF50;
            color:#ffffff;
        }
        .topnav .bar a.act {
            color:#ffffff;
        }
        .topnav .bar-item button{color:#ffffff;}
        a.topnav-icons {
            width:52px !important;
            font-size:20px !important;
            padding-top:11px !important;
            padding-bottom:13px !important;
        }
        .topnav .log {
            float: right;
        }

        .topnav .search-container {
            float: right;
        }

        .topnav input[type=text] {
            padding: 6px;
            margin-top: 8px;
            font-size: 17px;
            border: none;
        }

        .topnav .search-container button {
            float: right;
            padding: 6px;
            margin-top: 8px;
            margin-right: 16px;
            background: #ddd;
            font-size: 17px;
            border: none;
            cursor: pointer;
        }

        .topnav .search-container button:hover {
            background: #ccc;
        }

        @media screen and (max-width: 600px) {
            .topnav .search-container {
                float: none;
            }
            .topnav a, .topnav input[type=text], .topnav .search-container button {
                float: none;
                display: block;
                text-align: left;
                width: 100%;
                margin: 0;
                padding: 14px;
            }
            .topnav input[type=text] {
                border: 1px solid #ccc;
            }

        }
        .center {
            margin: auto;
            width: 14%;
            height:30%;
            padding: 50px;

        }
        .table{
            color: #4CAF50;
            background-color: aquamarine;
        }


    </style>

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
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Items    </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/cells">Items</a>
                <a class="dropdown-item" href="/addCell">CreateItem</a>
                <a class="dropdown-item" href="/deleteCell">Delete Item</a>
                <a class="dropdown-item" href="/updateCell">Update Item</a>
            </div>
        </li>
    </ul>
</nav>
<%--

<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/admin' title='admin'>Admin</a>
            <a class="act" href="/cells">Items</a>
            <a class="act" href="/addCell">CreateItem</a>
            <a class="act" href="/deleteCell">Delete Item</a>
            <a class="act" href="/updateCell">Update Item</a>
            <div class="log">
                <a class="active" href='/logout' title='login'>Logout</a>
            </div>
            <div class="search-container">


                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Submit</button>


            </div>
        </div>
    </div>
</div><br>
--%>
<h1>Update Product!</h1>
<div>    <table class="table">
    <thead>
    <tr>
        <th>
            Product ID
        </th>
        <th>Product Name</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cell" items="${cell}">
        <tr>
            <td>${cell.id}</td>
            <td>${cell.pname}</td>
            <td>${cell.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>

<form action="/update" method="put" if-match="*" class="container">
    <div>
        Product ID:<br>
        <input type="text" name="id"></div><br>
    <div>
        <div>
            Product Name:<br>
            <input type="text" name="pname"></div>
        <div>
            <%-- Size:<br>
             <input type="text" name="size"></div><br>
         <div>--%>
            <div>
                Price:<br>
                <input type="text" name="price"></div><br>
            <div>
                <input type="submit" name="submit" value="update">
            </div>

</form>

</div>
</body>
</html>

