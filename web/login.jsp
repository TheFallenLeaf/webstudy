<%--
  Created by IntelliJ IDEA.
  User: tyy
  Date: 2019/12/6
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
    <link rel="stylesheet" href="assets/bootstrap-4.0.0/css/bootstrap.css">
    <script src="assets/bootstrap-4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-4">

        </div>

        <div class="col-lg-3">
            <form action="login" method="post">
                <div class="form-group">
                    <label>Email address</label>
                    <input type="email" class="form-control" name="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
    </div>


</div>

</body>
</html>
