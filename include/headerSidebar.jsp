<%--
  Created by IntelliJ IDEA.
  User: 刘志远
  Date: 2019/11/25
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
<div class="header-inner">
    <div class="site-brand-wrapper">
        <div class="site-meta">
            <div class="custom-logo-site-title"> <a href="/index?p=1" class="brand" rel="start"> <span class="logo-line-before"><i></i></span>
                <span class="site-title">liuyishou</span> <span class="logo-line-after"><i></i></span> </a> </div>
        </div>
        <div class="site-nav-toggle"> <button aria-label="切换导航栏"> <span class="btn-bar"></span> <span class="btn-bar"></span>
            <span class="btn-bar"></span> </button> </div>
    </div>
    <nav class="site-nav">
        <ul id="menu" class="menu">
            <li class="menu-item menu-item-pencil-square"> <a href="login" rel="section"><i class="menu-item-icon fa fa-fw fa-pencil-square"></i>
                <br>写文章</a> </li>

            <script>
                <%--选定active--%>
                $(function () {
                    let url = $(location).attr("href");
                    if (url=="http://localhost:8080/index?p=1"){
                        $("#menu li").eq(1).attr("class","menu-item menu-item-home menu-item-active");
                    }else if(url=="http://localhost:8080/category"){
                        $("#menu li").eq(2).attr("class","menu-item menu-item-categories menu-item-active");
                    }else if (url=="http://localhost:8080/archives"){
                        $("#menu li").eq(3).attr("class","menu-item menu-item-archives menu-item-active");
                    }else if (url=="http://localhost:8080/about"){
                        $("#menu li").eq(4).attr("class","menu-item menu-item-about menu-item-active");
                    }else if (url=="http://localhost:8080/friendlink"){
                        $("#menu li").eq(5).attr("class","menu-item menu-item-friendlink menu-item-active");
                    }else {
                        $("#menu li").eq(6).attr("class","menu-item menu-item-search menu-item-active");
                    }
                })
            </script>

            <li class="menu-item menu-item-home">
                <a href="/index?p=1" rel="section"><i class="menu-item-icon fa fa-fw fa-home"></i>
                    <br>首页</a> </li>
<%--加了斜杠表示从根路径进行访问--%>
            <li class="menu-item menu-item-categories"> <a href="/category" rel="section"><i class="menu-item-icon fa fa-fw fa-th"></i>
                <br>分类</a> </li>

            <li class="menu-item menu-item-archives"> <a href="/archives" rel="section"><i class="menu-item-icon fa fa-fw fa-archive"></i>
                <br>归档</a> </li>

            <li class="menu-item menu-item-about"> <a href="/about" rel="section"><i class="menu-item-icon fa fa-fw fa-address-card"></i>
                <br>关于</a> </li>

            <li class="menu-item menu-item-friendlink"> <a href="/friendlink" rel="section"><i class="menu-item-icon fa fa-fw fa-link"></i>
                <br>友链</a> </li>

            <li class="menu-item menu-item-search"> <a href="javascript:;" class="popup-trigger"> <i class="menu-item-icon fa fa-search fa-fw"></i>
                <br>搜索</a> </li>
        </ul>
        <div class="site-search">
            <div class="popup search-popup local-search-popup">
                <div class="local-search-header clearfix"> <span class="search-icon"> <i class="fa fa-search"></i> </span>
                    <span class="popup-btn-close"> <i class="fa fa-times-circle"></i> </span>
                    <div class="local-search-input-wrapper"> <input autocomplete="off" placeholder="搜索..." spellcheck="false" type="text"
                                                                    id="local-search-input"> </div>
                </div>
                <div id="local-search-result"></div>
            </div>
        </div>
    </nav>
</div>
</header>
</body>
</html>
