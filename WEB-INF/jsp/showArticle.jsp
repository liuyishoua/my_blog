<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="domain.Article" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="theme-next gemini use-motion" lang="zh-CN">
<head>
    <meta name="generator" content="Hexo 3.9.0">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
    <meta name="theme-color" content="#222">
    <meta name="google-site-verification" content="ESDrHUrdx5GtlOeY6W5HY9JwdMrROMp3wFWvApAVQdI">
    <%--		meta一些设置能够使得浏览器爬虫更容易爬取--%>
    <link rel="stylesheet" href="/lib/fancybox/source/jquery.fancybox.css">
    <%--		上面这个样式用来设置点击图片出现大图，还有而外操作--%>
    <link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.min.css?v=4.7.0">
    <%--		上面这个样式主要用来设置图标！！！--%>
    <link rel="stylesheet" href="/css/main.css?v=7.2.0">
    <script type="text/javascript" src="/js/wangEditor.js"></script>
    <script id="hexo.configurations">
        var NexT = window.NexT || {};
        var CONFIG = {
            root: '/',
            scheme: 'Gemini',
            version: '7.2.0',
            sidebar: {
                "position": "left",
                "display": "post",
                "offset": 12,
                "onmobile": false
            },
            back2top: {
                "enable": true,
                "sidebar": true,
                "scrollpercent": true
            },
            copycode: {
                "enable": false,
                "show_result": false,
                "style": null
            },
            fancybox: true,
            fastclick: false,
            lazyload: false,
            tabs: true,
            motion: {
                "enable": true,
                "async": false,
                "transition": {
                    "post_block": "fadeIn",
                    "post_header": "slideDownIn",
                    "post_body": "slideDownIn",
                    "coll_header": "slideLeftIn",
                    "sidebar": "slideUpIn"
                }
            },
            algolia: {
                applicationID: '',
                apiKey: '',
                indexName: '',
                hits: {
                    "per_page": 10
                },
                labels: {
                    "input_placeholder": "Search for Posts",
                    "hits_empty": "We didn't find any results for the search: ${query}",
                    "hits_stats": "${hits} results found in ${time} ms"
                }
            },
            translation: {
                copy_button: '复制',
                copy_success: '复制成功',
                copy_failure: '复制失败'
            }
        };
    </script>
    <link rel="canonical" href="https://www.imcyc.cn/">
    <script id="page.configurations">
        CONFIG.page = {
            sidebar: "",
        };
    </script>
    <title>liuyishou</title> <noscript>
    <style>
        .use-motion .motion-element, .use-motion .brand, .use-motion .menu-item, .sidebar-inner, .use-motion .post-block, .use-motion .pagination, .use-motion .comments, .use-motion .post-header, .use-motion .post-body, .use-motion .collection-title { opacity: initial; } .use-motion .logo, .use-motion .site-title, .use-motion .site-subtitle { opacity: initial; top: initial; } .use-motion .logo-line-before i { left: initial; } .use-motion .logo-line-after i { right: initial; } </style>
</noscript>
</head>
<body itemscope itemtype="http://schema.org/WebPage" lang="zh-CN"> <canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;"></canvas>
<script type="text/javascript" src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
<script type="text/javascript" src="js/src/fireworks.js"></script>
<div class="container sidebar-position-left page-home">
    <div class="headband"></div>

    <%--    左上方功能模块--%>
    <%@ include file="/include/headerSidebar.jsp"%>


    <%--    主页面内容--%>
    <main id="main" class="main">
        <div class="main-inner">
            <div class="content-wrap">

<%--                文章内容模块--%>
                <div id="content" class="content">
                    <div id="posts" class="posts-expand">
                            <%--									${article.title}--%>
                            <%
                                Article article = (Article)request.getAttribute("article");
                                String update_time = DateFormat.getDateInstance().format(article.getUpdate_time());
                                String publish_time = DateFormat.getDateInstance().format(article.getPublish_time());
                                String update_time1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(article.getUpdate_time());
                                String publish_time1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(article.getPublish_time());
                            %>
                        <article class="post post-type-normal" itemscope="" itemtype="http://schema.org/Article">
                            <div class="post-block" style="opacity: 1; display: block;">
                                <link itemprop="mainEntityOfPage" href="/showArticle?id=${article.id}">
                                <span itemprop="author" itemscope="" itemtype="http://schema.org/Person" hidden=""></span>
                                <span itemprop="publisher" itemscope="" itemtype="http://schema.org/Organization" hidden=""></span>
                                <header class="post-header" style="opacity: 1; display: block; transform: translateY(0px);">
                                    <h1 class="post-title" itemprop="name headline">${article.title}</h1>
                                    <div class="post-meta">
            <span class="post-meta-item">
              <span class="post-meta-item-icon">
                <i class="fa fa-calendar-o"></i>
              </span>
                <span class="post-meta-item-text">发表于</span>
              <time title="创建时间：<%=publish_time1%>" itemprop="dateCreated datePublished" ><%=publish_time%></time>
            </span>
                 <span class="post-meta-item">
                <span class="post-meta-item-icon">
                  <i class="fa fa-calendar-check-o"></i>
                </span>
                  <span class="post-meta-item-text">更新于</span>
                <time title="修改时间：<%=update_time1%>" itemprop="dateModified" ><%=update_time%></time>
              </span>
                                        <span class="post-meta-item">
              <span class="post-meta-item-icon">
                <i class="fa fa-folder-o"></i>
              </span>
                <span class="post-meta-item-text">分类于</span>
                <span itemprop="about" itemscope="" itemtype="http://schema.org/Thing"><a href="/subCategory?id=${article.category1.id}" itemprop="url" rel="index"><span itemprop="name">${article.category}</span></a></span>

            </span>
               <span class="post-meta-item">
                <span class="post-meta-item-icon">
                  <i class="fa fa-comment-o"></i>
                </span>

                <span class="post-meta-item-text">评论数：</span>
                <a href="/showArticle?id=${article.id}" itemprop="discussionUrl">
                  <span class="post-comments-count valine-comment-count" data-xid="/20190519-PaiPaiYanJi.html" itemprop="commentCount">${article.comment_num}</span>
                </a>
              </span>
                                        <span id="/20190519-PaiPaiYanJi.html" class="post-meta-item leancloud_visitors" data-flag-title="${article.comment_num}">
              <span class="post-meta-item-icon">
                <i class="fa fa-heart"></i>
              </span>
                <span class="post-meta-item-text">热度：</span>
                <span class="leancloud-visitors-count">50</span>
                <span>℃</span>
            </span>
                <br>
            </div>
            </header>
                <div class="post-body" itemprop="articleBody" style="opacity: 1; display: block; transform: translateY(0px);">
                ${article.content}
                </div>
                <div style="text-align:center;color: #ccc;font-size:22px;">
                    ————————— 本文结束 <i class="fa fa-book"></i> 感谢您的阅读 —————————
                </div>

                <div>
                    <div id="reward-container">
                        <div>老铁 ლↂ‿‿ↂლ (支付宝扫一扫即可领红包! 多谢支持～)</div>
                        <button id="reward-button" disable="enable" onclick="var qr = document.getElementById(&quot;qr&quot;); qr.style.display = (qr.style.display === 'none') ? 'block' : 'none';">
                            打赏
                        </button>
                        <div id="qr" style="display: none;">
                            <div style="display: inline-block">
                                <img src="${pageContext.request.contextPath}/images/wechatpay.png" alt=" 微信支付">
                                <p>微信支付</p>
                            </div>
                            <div style="display: inline-block">
                                <img src="${pageContext.request.contextPath}/images/hongbao.png" alt="支付宝">
                                <p>支付宝～</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <ul class="post-copyright">
                        <li class="post-copyright-author">
                            <strong>本文作者： </strong>liuyishou</li>
                        <li class="post-copyright-link">
                            <strong>本文链接：</strong>
                            <a href="/showArticle?id=${article.id}" title="Python爬虫实战：京东拍拍验机（帮你买到成色完美的二手iPhone）">http://www.liuyishou.site/showArticle?id=${article.id}</a>
                        </li>
                        <li class="post-copyright-license">
                            <strong>项目源码： </strong>请于 <a href="https://github.com/liuyishoua/my_blog" target="_blank">github</a> 查看源码</li>
                    </ul>
                </div>
                <footer class="post-footer">
                    <div class="post-tags">
                        <a href="/subCategory?id=${article.category1.id}" rel="tag"><i class="fa fa-tag"></i> ${category.name}</a>
                    </div>
                    <div class="post-nav">
                        <%
                            String message = "post-nav-next";
                            String message1 = "next";
                            String message2 = "fa-chevron-left";
                        %>
                        <c:forEach items="${articleList}" var="article1">
                            <div class="<%=message%> post-nav-item">

                                <a href="/showArticle?id=${article1.id}" rel="<%=message1%>" title="【数据结构】${article1.title}">
                                    <%
                                        if (message1=="next"){
                                    %>
                                    <i class="fa fa-chevron-left"></i>【${article1.category}】${article1.title}
                                    <%}else{%>
                                    【${article1.category}】${article1.title} <i class="fa fa-chevron-right"></i>
                                    <%}%>
                                </a>

                            </div>
                            <span class="post-nav-divider"></span>
                            <%
                                message = "post-nav-prev";
                                message1 = "prev";
                                message2 = "fa-chevron-right";
                            %>
                        </c:forEach>
                    </div>
                </footer>
            </div>
        </article>
        </div>
        </div>
    </div>
<%--                评论模块--%>
<%--                删除掉了评论模块--%>


            <div class="sidebar-toggle">
                <div class="sidebar-toggle-line-wrap"> <span class="sidebar-toggle-line sidebar-toggle-line-first"></span> <span
                        class="sidebar-toggle-line sidebar-toggle-line-middle"></span> <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
                </div>
            </div>

<%--            侧边栏模块！！！--%>
            <%@include file="/include/sidebar.jsp"%>

            <div id="sidebar-dimmer"></div>
        </div>
    </main>

<%--    底部概览模块--%>
    <%@include file="/include/footer.jsp"%>


</div>
<script>
    if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
        window.Promise = null;
    }
</script>
<script size="300" alpha="0.6" zindex="-1" src="lib/canvas-ribbon/canvas-ribbon.js"></script>
<script src="lib/jquery/index.js"></script>
<script src="lib/velocity/velocity.min.js"></script>
<script src="lib/velocity/velocity.ui.min.js"></script>
<script src="lib/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="js/utils.js?v=7.2.0"></script>
<script src="js/motion.js?v=7.2.0"></script>
<script src="js/affix.js?v=7.2.0"></script>
<script src="js/schemes/pisces.js?v=7.2.0"></script>
<script src="js/next-boot.js?v=7.2.0"></script>
<%--cdn下载valine直接使用代码实现评论添加的前端和后台功能--%>
<script src="https://cdn.jsdelivr.net/npm/valine@1.3.9/dist/Valine.min.js"></script>
<script>
    var GUEST = ['nick', 'mail', 'link'];
    var guest = 'nick,mail,link';
    guest = guest.split(',').filter(function(item) {
        return GUEST.indexOf(item) > -1;
    });
    new Valine({
        el: '#comments',
        verify: false,
        notify: false,
        appId: 'jWkhbmugUPCnD6VY9AeQEwLd-gzGzoHsz',
        appKey: 'TqFQzOiCxOp6LReSMhNWresA',
        placeholder: '(ʃ♡ƪ´▽`)老铁，留个言呗～，记得在上面留下【邮箱】，方便收到回复通知～',
        avatar: 'retro',
        meta: guest,
        pageSize: '10' || 10,
        visitor: false,
        lang: 'zh-cn' || 'zh-cn'
    });
</script>
<script>
    function showTime(Counter) {
        var entries = [];
        var $visitors = $('.leancloud_visitors');
        $visitors.each(function() {
            entries.push($(this).attr('id').trim());
        });
        Counter('get', '/classes/Counter', {
            where: JSON.stringify({
                url: {
                    '$in': entries
                }
            })
        }).done(function({
                             results
                         }) {
            var COUNT_CONTAINER_REF = '.leancloud-visitors-count';
            if (results.length === 0) {
                $visitors.find(COUNT_CONTAINER_REF).text(0);
                return;
            }
            for (var i = 0; i < results.length; i++) {
                var item = results[i];
                var url = item.url;
                var time = item.time;
                var element = document.getElementById(url);
                $(element).find(COUNT_CONTAINER_REF).text(time);
            }
            for (var i = 0; i < entries.length; i++) {
                var url = entries[i];
                var element = document.getElementById(url);
                var countSpan = $(element).find(COUNT_CONTAINER_REF);
                if (countSpan.text() == '') {
                    countSpan.text(0);
                }
            }
        }).fail(function({
                             responseJSON
                         }) {
            console.log('LeanCloud Counter Error: ' + responseJSON.code + ' ' + responseJSON.error);
        });
    }
    $(function() {
        $.get('https://app-router.leancloud.cn/2/route?appId=' + 'jWkhbmugUPCnD6VY9AeQEwLd-gzGzoHsz').done(function({
                                                                                                                        api_server
                                                                                                                    }) {
            var Counter = function(method, url, data) {
                return $.ajax({
                    method: method,
                    url: 'https://' + api_server + '/1.1' + url,
                    headers: {
                        'X-LC-Id': 'jWkhbmugUPCnD6VY9AeQEwLd-gzGzoHsz',
                        'X-LC-Key': 'TqFQzOiCxOp6LReSMhNWresA',
                        'Content-Type': 'application/json',
                    },
                    data: data
                });
            };
            if ($('.post-title-link').length >= 1) {
                showTime(Counter);
            }
        });
    });
</script>
<script>
    (function() {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        bp.src = (curProtocol === 'https') ? 'https://zz.bdstatic.com/linksubmit/push.js' :
            'http://push.zhanzhang.baidu.com/push.js';
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
<script src="/live2dw/lib/L2Dwidget.min.js?094cbace49a39548bed64abff5988b05"></script>
<script>
    L2Dwidget.init({
        "pluginRootPath": "live2dw/",
        "pluginJsPath": "lib/",
        "pluginModelPath": "assets/",
        "tagMode": false,
        "debug": false,
        "model": {
            "jsonPath": "/live2dw/assets/tororo.model.json"
        },
        "display": {
            "position": "right",
            "width": 180,
            "height": 360
        },
        "mobile": {
            "show": true
        },
        "react": {
            "opacity": 1
        },
        "log": false
    });
</script>

<div id="live2d-widget" class="live2d-widget-container" style="position: fixed; right: 0px; bottom: -20px; width: 180px; height: 360px; z-index: 99999; opacity: 1; pointer-events: none;">
    <canvas
            id="live2dcanvas" width="360" height="720" style="position: absolute; left: 0px; top: 0px; width: 180px; height: 360px;">
    </canvas>
</div>

</body>
</html>
