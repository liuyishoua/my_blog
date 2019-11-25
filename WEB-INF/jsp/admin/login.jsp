<%--
  Created by IntelliJ IDEA.
  User: 刘志远
  Date: 2019/11/21
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

    <script>
        $(function () {
            $("#submit").click(function () {
                let user = $("#inputEmail3").val();
                let password = $("#inputPassword3").val();
                if (user=="liuyishou" && password=="123456"){
                    $(location).attr('href', 'publish');
                //    条js跳转页面能够使用相对路径来写
                }
                else {
                    $(".form-horizontal").append("<h2 style='text-align: center'>登陆失败！！！</h2>");
                }
            })
        })
    </script>
</head>
<body>
<div style="margin-top: 100px">
    <div style="background-color: #f5f5f5;padding: 50px">
        <h1 style="text-align: center;margin-bottom:50px">登陆写文章</h1>
        <div class="form-horizontal" style="width: 500px;margin:auto;">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Username:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="Username" name="name">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password"
                           name="password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Remember me
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button id="submit" type="submit" class="btn btn-primary" name="submit">Sign in</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
