<%--
  Created by IntelliJ IDEA.
  User: 刘志远
  Date: 2019/11/25
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<aside id="sidebar" class="sidebar">
    <div class="sidebar-inner">
        <div class="site-overview-wrap sidebar-panel sidebar-panel-active">
            <div class="site-overview">
                <div class="site-author motion-element" itemprop="author" itemscope
                     itemtype="http://schema.org/Person"><img
                        class="site-author-image" itemprop="image" src="images/head.png" alt>
                    <p class="site-author-name" itemprop="name"></p>
                    <div class="site-description motion-element" itemprop="description">
                        人生就像射箭，梦想就像箭靶子，连箭靶子都找不到，每天拉弓有什么用
                    </div>
                </div>
                <nav class="site-state motion-element">
                    <div class="site-state-item site-state-posts"><a href="/archives">
                        <%--                                    所有日志，应该是属于article的功能--%>
                        <span class="site-state-item-count">${countArticle}</span>
                        <span class="site-state-item-name">日志</span> </a></div>
                    <div class="site-state-item site-state-categories"><a href="/category"> <span
                            class="site-state-item-count">${categoryList.size()}</span>
                        <span class="site-state-item-name">分类</span> </a></div>
                </nav>
                <div class="links-of-author motion-element"> <span class="links-of-author-item">
                                <a href="https://github.com/liuyishoua/my_blog"
                                   title="GitHub &rarr; https://github.com/liuyishoua/my_blog" rel="external nofollow"
                                   target="_blank"><i class="fa fa-fw fa-github"></i></a>
										</span> <span class="links-of-author-item"> <a href="mailto:1813120647@qq.com"
                                                                                       title="邮箱 &rarr; mailto:1813120647@qq.com"
                                                                                       rel="external nofollow"
                                                                                       target="_blank"> <i
                        class="fa fa-fw fa-envelope"></i></a> </span> <span class="links-of-author-item">
											<a href="https://music.163.com/#/user/home?id=504552838"
                                               title="网易云音乐 &rarr; https://music.163.com/#/user/home?id=504552838"
                                               rel="external nofollow" target="_blank"><i
                                                    class="fa fa-fw fa-headphones"></i></a> </span> <span
                        class="links-of-author-item">
											<a href="https://blog.csdn.net/weixin_41466575"
                                               title="CSDN &rarr; https://blog.csdn.net/weixin_41466575"
                                               rel="external nofollow" target="_blank"><i
                                                    class="fa fa-fw fa-copyright"></i></a> </span> <span
                        class="links-of-author-item">
											<a href="https://space.bilibili.com/380018643"
                                               title="bilibili &rarr; https://space.bilibili.com/380018643"
                                               rel="external nofollow" target="_blank"><i class="fa fa-fw fa-bold"></i></a> </span>
                </div>
            </div>
        </div>
        <div class="back-to-top motion-element"><i class="fa fa-arrow-up"></i> <span
                id="scrollpercent"><span>0</span>%</span>
        </div>
        <script type="text/javascript" charset="utf-8" src="js/tagcloud.js"></script>
        <script type="text/javascript" charset="utf-8" src="js/tagcanvas.js"></script>
        <div class="widget-wrap">
            <h1 class="widget-title"></h1>
            <div id="myCanvasContainer" class="widget tagcloud">
                <canvas width="240" height="240" id="resCanvas" style="width:100%">
                    <ul class="tag-list">
                        <c:forEach items="${categoryList}" var="category">
                            <li class="tag-list-item">
                                <a class="tag-list-link" href="/subCategory?id=${category.id}">${category.name}</a>
                                <span class="tag-list-count">${category.num}</span>
                            </li>
                        </c:forEach>
                    </ul>
                </canvas>
            </div>
        </div>
    </div>
</aside>
</body>
</html>
