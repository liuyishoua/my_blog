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
                            <a href="http://www.liuyishou.site:8080/showArticle?id=${article.category1.id}" title="Python爬虫实战：京东拍拍验机（帮你买到成色完美的二手iPhone）">http://www.liuyishou.site:8080/showArticle?id=${article.category1.id}</a>
                        </li>
                        <li class="post-copyright-license">
                            <strong>版权声明： </strong>本博客所有文章除特别声明外，均采用 <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" rel="external nofollow" target="_blank"><i class="fa fa-fw fa-creative-commons"></i>BY-NC-SA</a> 许可协议。转载请注明出处！</li>
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

<%--                评论模块--%>
                <div class="comments v" id="comments" style="opacity: 1; display: block;">
                    <form action="/addReply?id=${article.id}" method="post">
                    <div class="vwrap"><div class="vheader item3">
                        <input name="name" placeholder="昵称" class="vnick vinput" type="text">
                        <input name="email" placeholder="邮箱" class="vmail vinput" type="email">
                        <input name="url" placeholder="网址(http://)" class="vlink vinput" type="text">
                    </div>
                        <div class="vedit">
                            <textarea id="veditor" class="veditor vinput" placeholder="(ʃ♡ƪ´▽`)老铁，留个言呗～，记得在上面留下【邮箱】，方便收到回复通知～" name="comment"></textarea>
                            <div class="vctrl">
                                <span class="vemoji-btn">表情</span> | <span class="vpreview-btn">预览</span>
                            </div>
                            <div class="vemojis" style="display:none;">
                                <i name="grinning" title="grinning">😀</i><i name="smiley" title="smiley">😃</i><i name="smile" title="smile">😄</i><i name="grin" title="grin">😁</i><i name="laughing" title="laughing">😆</i><i name="sweat_smile" title="sweat_smile">😅</i><i name="joy" title="joy">😂</i><i name="blush" title="blush">😊</i><i name="innocent" title="innocent">😇</i><i name="wink" title="wink">😉</i><i name="relieved" title="relieved">😌</i><i name="heart_eyes" title="heart_eyes">😍</i><i name="kissing_heart" title="kissing_heart">😘</i><i name="kissing" title="kissing">😗</i><i name="kissing_smiling_eyes" title="kissing_smiling_eyes">😙</i><i name="kissing_closed_eyes" title="kissing_closed_eyes">😚</i><i name="yum" title="yum">😋</i><i name="stuck_out_tongue_winking_eye" title="stuck_out_tongue_winking_eye">😜</i><i name="stuck_out_tongue_closed_eyes" title="stuck_out_tongue_closed_eyes">😝</i><i name="stuck_out_tongue" title="stuck_out_tongue">😛</i><i name="sunglasses" title="sunglasses">😎</i><i name="smirk" title="smirk">😏</i><i name="unamused" title="unamused">😒</i><i name="disappointed" title="disappointed">😞</i><i name="pensive" title="pensive">😔</i><i name="worried" title="worried">😟</i><i name="confused" title="confused">😕</i><i name="persevere" title="persevere">😣</i><i name="confounded" title="confounded">😖</i><i name="tired_face" title="tired_face">😫</i><i name="weary" title="weary">😩</i><i name="angry" title="angry">😠</i><i name="rage" title="rage">😡</i><i name="no_mouth" title="no_mouth">😶</i><i name="neutral_face" title="neutral_face">😐</i><i name="expressionless" title="expressionless">😑</i><i name="hushed" title="hushed">😯</i><i name="frowning" title="frowning">😦</i><i name="anguished" title="anguished">😧</i><i name="open_mouth" title="open_mouth">😮</i><i name="astonished" title="astonished">😲</i><i name="dizzy_face" title="dizzy_face">😵</i><i name="flushed" title="flushed">😳</i><i name="scream" title="scream">😱</i><i name="fearful" title="fearful">😨</i><i name="cold_sweat" title="cold_sweat">😰</i><i name="cry" title="cry">😢</i><i name="disappointed_relieved" title="disappointed_relieved">😥</i><i name="sob" title="sob">😭</i><i name="sweat" title="sweat">😓</i><i name="sleepy" title="sleepy">😪</i><i name="sleeping" title="sleeping">😴</i><i name="mask" title="mask">😷</i><i name="smiling_imp" title="smiling_imp">😈</i><i name="smiley_cat" title="smiley_cat">😺</i><i name="smile_cat" title="smile_cat">😸</i><i name="joy_cat" title="joy_cat">😹</i><i name="heart_eyes_cat" title="heart_eyes_cat">😻</i><i name="smirk_cat" title="smirk_cat">😼</i><i name="kissing_cat" title="kissing_cat">😽</i><i name="scream_cat" title="scream_cat">🙀</i><i name="crying_cat_face" title="crying_cat_face">😿</i><i name="pouting_cat" title="pouting_cat">😾</i><i name="cat" title="cat">🐱</i><i name="mouse" title="mouse">🐭</i><i name="cow" title="cow">🐮</i><i name="monkey_face" title="monkey_face">🐵</i><i name="hand" title="hand">✋</i><i name="fist" title="fist">✊</i><i name="v" title="v">✌️</i><i name="point_up" title="point_up">👆</i><i name="point_down" title="point_down">👇</i><i name="point_left" title="point_left">👈</i><i name="point_right" title="point_right">👉</i><i name="facepunch" title="facepunch">👊</i><i name="wave" title="wave">👋</i><i name="clap" title="clap">👏</i><i name="open_hands" title="open_hands">👐</i><i name="+1" title="+1">👍</i><i name="-1" title="-1">👎</i><i name="ok_hand" title="ok_hand">👌</i><i name="pray" title="pray">🙏</i><i name="ear" title="ear">👂</i><i name="eyes" title="eyes">👀</i><i name="nose" title="nose">👃</i><i name="lips" title="lips">👄</i><i name="tongue" title="tongue">👅</i><i name="heart" title="heart">❤️</i><i name="cupid" title="cupid">💘</i><i name="sparkling_heart" title="sparkling_heart">💖</i><i name="star" title="star">⭐️</i><i name="sparkles" title="sparkles">✨</i><i name="zap" title="zap">⚡️</i><i name="sunny" title="sunny">☀️</i><i name="cloud" title="cloud">☁️</i><i name="snowflake" title="snowflake">❄️</i><i name="umbrella" title="umbrella">☔️</i><i name="coffee" title="coffee">☕️</i><i name="airplane" title="airplane">✈️</i><i name="anchor" title="anchor">⚓️</i><i name="watch" title="watch">⌚️</i><i name="phone" title="phone">☎️</i><i name="hourglass" title="hourglass">⌛️</i><i name="email" title="email">✉️</i><i name="scissors" title="scissors">✂️</i><i name="black_nib" title="black_nib">✒️</i><i name="pencil2" title="pencil2">✏️</i><i name="x" title="x">❌</i><i name="recycle" title="recycle">♻️</i><i name="white_check_mark" title="white_check_mark">✅</i><i name="negative_squared_cross_mark" title="negative_squared_cross_mark">❎</i><i name="m" title="m">Ⓜ️</i><i name="i" title="i">ℹ️</i><i name="tm" title="tm">™️</i><i name="copyright" title="copyright">©️</i><i name="registered" title="registered">®️</i>
                            </div>
                            <div class="vinput vpreview" style="display:none;"></div>
                        </div>
                        <div class="vcontrol">
                            <div class="col col-20" title="Markdown is supported">
                                <a href="https://segmentfault.com/markdown" target="_blank">
                                    <svg class="markdown" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true">
                                        <path fill-rule="evenodd" d="M14.85 3H1.15C.52 3 0 3.52 0 4.15v7.69C0 12.48.52 13 1.15 13h13.69c.64 0 1.15-.52 1.15-1.15v-7.7C16 3.52 15.48 3 14.85 3zM9 11H7V8L5.5 9.92 4 8v3H2V5h2l1.5 2L7 5h2v6zm2.99.5L9.5 8H11V5h2v3h1.5l-2.51 3.5z"></path></svg>
                                </a>
                            </div>
                            <div class="col col-80 text-right">
                            <button type="submit" title="Cmd|Ctrl+Enter" class="vsubmit vbtn">回复</button>
                        </div>
                        </div>
                        <div style="display:none;" class="vmark"></div>
                    </div>
                    </form>
<%--                    以上是提交的form表单--%>

                        <div class="vinfo" style="display:block;">
                            <div class="vcount col"><span class="vnum">10</span> 评论</div>
                        </div>
                    <div class="vlist">
                        <div class="vcard" id="5dd375f72a6bfd0072c26788">
                            <img class="vimg" src="https://gravatar.loli.net/avatar/9c583979b7b920ab83b1b5a21ab16070?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5dd375f72a6bfd0072c26788">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="http://127.0.0.1:8848" target="_blank">liuyihsou</a> <span class="vsys">Chrome 78.0.3904.97</span> <span class="vsys">Windows 10.0</span></div>
                        <div class="vmeta">
                            <span class="vtime">2 天前</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>真滴厉害！！！</p>

                        </div>
                    </div>
                        </div>
                        <div class="vcard" id="5dd375a42a6bfd0072c263ed">
                            <img class="vimg" src="https://gravatar.loli.net/avatar/d41d8cd98f00b204e9800998ecf8427e?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5dd375a42a6bfd0072c263ed">
                        <div class="vhead"><span class="vnick">Anonymous</span> <span class="vsys">Chrome 78.0.3904.97</span> <span class="vsys">Windows 10.0</span></div>
                        <div class="vmeta">
                            <span class="vtime">2 天前</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>厉害厉害！！！<br>😀</p>

                        </div>
                    </div></div><div class="vcard" id="5dce21842a6bfd007293e56d"><img class="vimg" src="https://gravatar.loli.net/avatar/0e17d3ec8d6fbbfce870d97b943ceef3?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5dce21842a6bfd007293e56d">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="https://rinvay.cc" target="_blank">Rinvay</a> <span class="vsys">Chrome 78.0.3904.70</span> <span class="vsys">Windows 10.0</span></div>
                        <div class="vmeta">
                            <span class="vtime">6 天前</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>兄弟，你的ssl证书过期了！</p>

                        </div>
                        <div class="vquote"><div class="vcard" id="5dd3764a43c257006abf472c"><img class="vimg" src="https://gravatar.loli.net/avatar/9c583979b7b920ab83b1b5a21ab16070?d=retro&amp;v=1.3.9">
                            <div class="vh" rootid="5dce21842a6bfd007293e56d">
                                <div class="vhead"><a class="vnick" rel="nofollow" href="http://127.0.0.1:8848" target="_blank">liuyihsou</a> <span class="vsys">Chrome 78.0.3904.97</span> <span class="vsys">Windows 10.0</span></div>
                                <div class="vmeta">
                                    <span class="vtime">2 天前</span>
                                    <span class="vat">回复</span>
                                </div>
                                <div class="vcontent">
                                    <p><a href="#5dce21842a6bfd007293e56d" target="_blank" rel="nofollow">@Rinvay </a> , 回复功能测试！</p>

                                </div>
                            </div></div></div></div></div><div class="vcard" id="5da3fe2d0237d70074061391"><img class="vimg" src="https://gravatar.loli.net/avatar/10348ed1b2738b583904435eac3d2119?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5da3fe2d0237d70074061391">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="http://haitaodou.com/" target="_blank">iherb优惠码</a> <span class="vsys">Chrome 63.0.3239.132</span> <span class="vsys">Windows 8.1</span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-10-14</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>还是相信眼见为实</p>

                        </div>
                    </div></div><div class="vcard" id="5d946c7b43e78c0067141529"><img class="vimg" src="https://gravatar.loli.net/avatar/d219af79b45e5891507fda4c4c2139a0?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5d946c7b43e78c0067141529">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="https://repostone.home.blog/" target="_blank">repostone</a> <span class="vsys">Chrome 63.0.3239.132</span> <span class="vsys">Windows 8.1</span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-10-02</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>非技术的路过。</p>

                        </div>
                    </div></div><div class="vcard" id="5d7efae943e78c006843b6c2"><img class="vimg" src="https://gravatar.loli.net/avatar/c5d14c4d197a37e70e21d40c6088dd99?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5d7efae943e78c006843b6c2">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="https://manman.qian.lu" target="_blank">格子老师</a> <span class="vsys">Chrome 69.0.3497.100</span> <span class="vsys">Windows 10.0</span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-09-16</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>学习一个月就能做到这么多 厉害！！</p>

                        </div>
                    </div></div><div class="vcard" id="5d7efacbc8959c0068505005"><img class="vimg" src="https://gravatar.loli.net/avatar/d41d8cd98f00b204e9800998ecf8427e?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5d7efacbc8959c0068505005">
                        <div class="vhead"><span class="vnick">Anonymous</span> <span class="vsys">Chrome 69.0.3497.100</span> <span class="vsys">Windows 10.0</span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-09-16</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>学习一个月就能做到这么多  厉害！！</p>

                        </div>
                    </div></div><div class="vcard" id="5d68a79543e78c0068c0930e"><img class="vimg" src="https://gravatar.loli.net/avatar/64e4f1a5543f167f39a076bf9cbbee2c?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5d68a79543e78c0068c0930e">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="https://www.foreverlong.cn/" target="_blank">forever_龙哥</a> <span class="vsys">Opera 9.80</span> <span class="vsys">Windows </span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-08-30</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>我来串门啦！</p>

                        </div>
                        <div class="vquote"><div class="vcard" id="5d68cb8fa3180b0068df5214"><img class="vimg" src="https://gravatar.loli.net/avatar/6e9164b08cc215816e6381d5f9f70b58?d=retro&amp;v=1.3.9">
                            <div class="vh" rootid="5d68a79543e78c0068c0930e">
                                <div class="vhead"><a class="vnick" rel="nofollow" href="https://www.imcyc.cn" target="_blank">站长</a> <span class="vsys">Chrome 72.0.3626.109</span> <span class="vsys">Windows 10.0</span></div>
                                <div class="vmeta">
                                    <span class="vtime">2019-08-30</span>
                                    <span class="vat">回复</span>
                                </div>
                                <div class="vcontent">
                                    <p><a href="#5d68a79543e78c0068c0930e" target="_blank" rel="nofollow">@forever_龙哥 </a> , 😘热烈欢迎</p>

                                </div>
                            </div></div></div></div></div><div class="vcard" id="5d5bb6acd5de2b006cd5e95b"><img class="vimg" src="https://gravatar.loli.net/avatar/1dadfd2aa6b8d371320dd268678c1d29?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5d5bb6acd5de2b006cd5e95b">
                        <div class="vhead"><a class="vnick" rel="nofollow" href="https://www.mxfuli.com" target="_blank">绅士福利</a> <span class="vsys">Chrome 75.0.3770.142</span> <span class="vsys">Windows 10.0</span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-08-20</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>哈哈哈哈。</p>

                        </div>
                    </div></div><div class="vcard" id="5d50507230863b0068a475f8"><img class="vimg" src="https://gravatar.loli.net/avatar/b96e1b27aa6cd71b018a8806d7dda2cb?d=retro&amp;v=1.3.9">
                    <div class="vh" rootid="5d50507230863b0068a475f8">
                        <div class="vhead"><span class="vnick">这只猫</span> <span class="vsys">Chrome 76.0.3809.81</span> <span class="vsys">iOS 12.3</span></div>
                        <div class="vmeta">
                            <span class="vtime">2019-08-12</span>
                            <span class="vat">回复</span>
                        </div>
                        <div class="vcontent">
                            <p>这只猫 好想要😉</p>

                        </div>
                    </div></div></div>

<%--                    判断是否添加评论成功--%>
                    <div class="vempty" style="display:none;">
                    <c:if test="not empty ${message}">
                        ${message}
                    </c:if>
                    </div>

                    <div class="vpage txt-center"></div>
                    <div class="info">
                        <div class="power txt-right">Powered By <a href="https://github.com/liuyishoua/sfkbbs" target="_blank">liuyishou</a><br></div>
                    </div>
                </div>
            </div>


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
