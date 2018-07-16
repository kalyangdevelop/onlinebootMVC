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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
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


<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/admin' title='Admin'>Admin</a>
            <a class="act" href="/orders">Order List</a>

            <%--<a class="act" href="/addOrder">Add Order</a>--%>
            <a class="act" href="/deleteOrder">Delete Order</a>
            <a class="act" href="/updateOrder">Update Order</a>
            <div class="log">
                <a class="active" href='/loginout' title='login'>Login Out</a>
            </div>
            <div class="search-container">


                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Submit</button>


            </div>
        </div>
    </div>
</div><br>
<h1>Order!</h1>

<div class="container">
    <form action="/uporder" method="post">

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

