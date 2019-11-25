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
    <link rel="stylesheet" href="lib/fancybox/source/jquery.fancybox.css">
    <%--		上面这个样式用来设置点击图片出现大图，还有而外操作--%>
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css?v=4.7.0">
    <%--		上面这个样式主要用来设置图标！！！--%>
    <link rel="stylesheet" href="css/main.css?v=7.2.0">
    <script src="/js/jquery-1.11.3.min.js"></script>
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

                <%
                    List<Article> articles= (List<Article>) request.getAttribute("articleList");
                    int count = 0;
                %>

                <%--                子分类主文章标题概览--%>
                    <div id="content" class="content">
                        <div class="post-block category" style="opacity: 1; display: block;">
                            <div id="posts" class="posts-collapse">
                                <div class="collection-title"
                                     style="opacity: 1; display: block; transform: translateX(0px);">
                                    <h1>${articleList.get(0).category}<small>分类</small>
                                    </h1>
                                </div>
                            <c:forEach items="${articleList}" var="article">
                                <%
                                    String publish_time = DateFormat.getDateInstance().format(articles.get(count).getPublish_time());
                                    String publish_time1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(articles.get(count).getPublish_time());
                                    String publish_time2 = new SimpleDateFormat("MM-dd").format(articles.get(count).getPublish_time());
                                    count++;
                                %>
                                <article class="post post-type-normal" itemscope=""
                                         itemtype="http://schema.org/Article">
                                    <header class="post-header"
                                            style="opacity: 1; display: block; transform: translateY(0px);">
                                        <h2 class="post-title">
                                            <a class="post-title-link" href="/showArticle?id=${article.id}"
                                               itemprop="url">
                                                <span itemprop="name">【${article.category}】${article.title}</span>
                                            </a>
                                        </h2>
                                        <div class="post-meta">
                                            <time class="post-time" itemprop="dateCreated"
                                                  datetime="<%=publish_time1%>" content="<%=publish_time%>">
                                                <%=publish_time2%>
                                            </time>
                                        </div>
                                    </header>
                                </article>
                                </c:forEach>
                            </div>
                        </div>
                    </div>


            </div>


            <div class="sidebar-toggle">
                <div class="sidebar-toggle-line-wrap"> <span class="sidebar-toggle-line sidebar-toggle-line-first"></span> <span
                        class="sidebar-toggle-line sidebar-toggle-line-middle"></span> <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
                </div>
            </div>

            <%--侧边栏模块--%>
            <%@include file="/include/sidebar.jsp"%>


            <div id="sidebar-dimmer"></div>
        </div>
    </main>
    <footer id="footer" class="footer">
        <div class="footer-inner">
            <div class="copyright">&copy; <span itemprop="copyrightYear">2019</span> <span class="with-love" id="animate"> <i
                    class="fa fa-heart"></i> </span> <span class="author" itemprop="copyrightHolder">Spr Chan</span> <span class="post-meta-divider">|</span>
                <span class="post-meta-item-icon"> <i class="fa fa-area-chart"></i> </span> <span class="post-meta-item-text">站点总字数：</span>
                <span title="站点总字数">97k</span> </div>
            <div class="busuanzi-count">
                <script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script> <span class="post-meta-item-icon">
							<i class="fa fa-user"></i> </span> <span class="site-uv" title="总访客量"> 站点总访客数：<span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
						</span> <span class="post-meta-divider">|</span> <span class="post-meta-item-icon"> <i class="fa fa-eye"></i>
						</span> <span class="site-pv" title="总访问量"> 站点总访问量：<span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
						</span>
            </div>
        </div>
    </footer>
</div>
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
<script src="https://cdn.jsdelivr.net/npm/valine@1.3.9/dist/Valine.min.js"></script>
<script src="/live2dw/lib/L2Dwidget.min.js?094cbace49a39548bed64abff5988b05"></script>

<div id="live2d-widget" class="live2d-widget-container" style="position: fixed; right: 0px; bottom: -20px; width: 180px; height: 360px; z-index: 99999; opacity: 1; pointer-events: none;">
    <canvas
            id="live2dcanvas" width="360" height="720" style="position: absolute; left: 0px; top: 0px; width: 180px; height: 360px;">
    </canvas>
</div>

</body>
</html>
