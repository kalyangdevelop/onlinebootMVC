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

    <title>Cell Phones!</title><meta charset="UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        div.gallery {
            margin: 1px;
            border: 1px solid #ccc;
            float: left;
            width: 180px;
            height: 40%;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery img {
            width: 55%;
            height: 45%;
        }

       /* div.desc {
            padding: 15px;
            text-align: center;
        }*/


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

        <li class="nav-item">
            <a class="nav-link" href="/cellphones">Products</a>
        </li>
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
            <a class="active" href='/home' title='Home'>HOME</a>

            <a class="act" href="/electronics">Electronics</a>
            <a class="act" href="/cellphones">Cell Phones</a>
            &lt;%&ndash;  <a class="act" href="/clothes">Clothes</a>&ndash;%&gt;
            <div class="log">
                <a class="active" href='/loginpage' title='login'>Login</a>
            </div>
            <div class="search-container">


                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Submit</button>


            </div>
        </div>
    </div>
</div></br>
--%>

<form>
    <c:forEach var="cell" items="${cell}">

        <div class="gallery"><a href="/addOrder"> <img src="smiley.gif" alt="Product" width="600" height="400"></a>
            <a href="/addOrder">${cell.pname}</a><br>
           <b>Product ID: </b>${cell.id} <br>
     <b> Product Name: </b>${cell.pname} <br>
               <b>Price: </b>${cell.price}</div>

    </c:forEach>



</form>
</body>
</html>

