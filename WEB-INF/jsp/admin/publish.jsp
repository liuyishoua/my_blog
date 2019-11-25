<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘志远
  Date: 2019/11/20
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/publish.css">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>
    <script>
        $(function () {
            $("#optionsRadios1").click(function () {
                $("#category").val($("#category1").val());
            })
            $("#optionsRadios2").click(function () {
                $("#category").val($("#category2").val());
                console.log($("#category").val())
            })
        })
    //    使用name均为category出现问题，发现

    </script>
</head>
<body style="background-color: #f5f6f7;">
    <h2 style="text-align: center;">博客创作</h2>
    <hr>
    <div id="content-body">
        <form action="/addPublish" method="post">
            <div id="title-box">
                <div class="input-group">
                    <span class="input-group-addon" id="sizing-addon2">@</span>
                    <input type="text" class="form-control" placeholder="输入文章标题" name="title">
                </div>
            </div>
            <div id="editor">
                <p>欢迎使用</p>
            </div>
            <div id="more">
                <div id="pos-box">
                    <div class="form-group row form-control-sm">
<%--                        选择一种方式添加分类或已有分类--%>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                添加分类
                            </label>
                            <label >文章标签：</label>
                            <input id="category1" type="text" style="width: 124.4px">
                            <label>   首字母大写</label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                已有分类
                            </label>
                            <label >文章标签：</label>
                            <select id="category2">
                                <option value="">请选择一种分类</option>
                                <c:forEach items="${categoryList}" var="category">
                                    <option value="${category.name}">${category.name}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                </div>
            </div>
            <input type="text" name="category" id="category" hidden>
            <input type="text" name="content" id="content" hidden>
            <div style="margin: auto">
                <button class="btn btn-primary" type="submit" id="submit" data-toggle="popover" data-content="${message}">发布博客</button>
            </div>
        </form>
        <c:if test="${not empty message}">
            <h3>添加成功！！！</h3>
        </c:if>
        <h2 style="text-align: center"><a href="/index?p=1">返回主页</a></h2>
    </div>
    <script src="/js/wangEditor.js"></script>
    <script>
        var E = window.wangEditor;
        var editor = new E('#editor');
        editor.create();
        $("#submit").click(function () {
            $("#content").val(editor.txt.html());
            //使用上面的val进行添加
            // alert(editor.txt.html());
        })
    </script>
</body>
</html>
