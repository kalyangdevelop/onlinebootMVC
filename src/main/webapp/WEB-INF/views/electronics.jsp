<%--
  Created by IntelliJ IDEA.
  User: kalya
  Date: 7/10/2018
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Products!</title><meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>

        .center {
            margin: 2px;
            width: 18%;
            height:18%;
            padding: 50px;
            color:#ffffff;
            font-family:"Segoe UI",Arial,sans-serif;
            font-size:16px;
        }


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

    </ul>
</nav>
<br>
<%--

<div class='card-2 topnav' id='topnav'>
    <div style="overflow:auto;">
        <div class="bar left" style="width:100%;overflow:hidden;height:44px">
            <a class="active" href='/home' title='Home'>HOME</a>

            <a class="act" href="/electronics">Products</a>
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
<h1>Products!</h1>


</body>
</html>

