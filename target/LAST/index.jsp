<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>LAST 购物商场</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/slide.js"></script>
</head>
<body>
<script>
    $(function () {
        $('.nav ul li').hover(function () {
            $(this).children(".details").show();
        }, function () {
            $(this).children(".details").hide();
        });
        $('#my').hover(function () {
            $(this).find("div").show();
        }, function () {
            $(this).find("div").hide();
        });
    });
</script>
<!------------顶部---------------->
<div class="top">
    <div class="wt1080">
        <div class="fl">
            <a href="${pageContext.request.contextPath}/index.jsp">商城首页</a>&emsp;|&emsp;
            <c:if test="${userSession==null}">
                请&emsp;<a href="${pageContext.request.contextPath}/login.jsp" style="color: #ff9900">登陆</a>&emsp;或&emsp;<a href="#">立即注册</a>
            </c:if>
            <c:if test="${userSession!=null}">
                尊敬的会员:&emsp;<a href="#" style="color: #ff9900">${userSession.name}</a>
            </c:if>
        </div>


        <div class="fr">
            <ul>
                <li style="position: relative;" id="my">
                    <a href="my_order.jsp">我的订单</a>
                </li>
                <li><span class="shop">购物车</span></li>
                <li><span class="phone"><a href="article.jsp">手机店铺</a></span></li>
                <li><span><a href="article.jsp">关于本店</a></span></li>
                <li><span><a href="article.jsp">帮助中心</a></span></li>
                <li><span class="phone2">012-1234 5678</span></li>
            </ul>
        </div>
    </div>
</div>
<!--------------logo搜索------------->
<div class="wt1080 header">
    <div class="logo fl"><a href="index.jsp"><img src="${pageContext.request.contextPath}/image/logo.png"></a></div>
    <div class="search fl">
        <div>
            <input name="search" type="text" class="a_search fl" placeholder="请输入关键字" id="chaiName">
            <span class="b_search fl" id="chaiGoods"></span>
        </div>
    </div>
    <a class="my_shop fr" href="${pageContext.request.contextPath}/gouwuche.jsp">我的购物车</a>
    <div class="clear"></div>
</div>
<!--------------导航------------------>
<div class="nav">
    <div class="wt1080">
        <ul>
            <li><a href="index.jsp" class="current"><span>首页</span></a></li>
            <li><a href="${pageContext.request.contextPath}/goods/selType.do?typeName=宝宝洗护"><span>宝宝洗护</span></a></li>
            <li><a href="${pageContext.request.contextPath}/goods/selType.do?typeName=宝宝玩具"><span>宝宝玩具</span></a></li>
            <li><a href="${pageContext.request.contextPath}/goods/selType.do?typeName=童床"><span>童床</span></a></li>
            <li><a href="${pageContext.request.contextPath}/goods/selType.do?typeName=尿裤湿巾"><span>尿裤湿巾</span></a></li>
            <li><a href="${pageContext.request.contextPath}/goods/selType.do?typeName=奶粉"><span>奶粉</span></a></li>
            <li><a href="lanmu.jsp"><span>合作申请</span></a></li>
        </ul>
        <div style="clear:both"></div>
    </div>
</div>

<!----------------轮播图-------------------->
<div class="index_banner minWidth" id="focus">
    <ul>
        <li style="background:url(${pageContext.request.contextPath}/image/bg2.png) no-repeat center;height: 452px;"><a
                href="#" title="" target="_blank"></a></li>
        <li style="background:url(${pageContext.request.contextPath}/image/bg2.png) no-repeat center;height: 452px;"><a
                href="#" title="" target="_blank"></a></li>
    </ul>
</div>
<div class="clear"></div>
<!--------------中间部分------------->
<div class="wt1080 middle">
    <div class="fl">
        <ul>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg3.png">
                <p>全球正品货源</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg4.png">
                <p>全球直邮</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg5.png">
                <p>一件代发</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg6.png">
                <p>售后无忧</p>
            </li>
        </ul>
    </div>
    <div class="fr">
        <p class="one">在线客服：
            <a href="tencent://message/?uin=1653611839&Site=Sambow&Menu=yes"><img
                    src="${pageContext.request.contextPath}/image/tubiao2.png"></a>&nbsp;&nbsp;
            <a href="tencent://message/?uin=1830629646&Site=Sambow&Menu=yes"><img
                    src="${pageContext.request.contextPath}/image/tubiao2.png"></a>&nbsp;&nbsp;
            <a href="tencent://message/?uin=1830629646&Site=Sambow&Menu=yes"><img
                    src="${pageContext.request.contextPath}/image/tubiao2.png"></a>&nbsp;&nbsp;
            <span>（时间：9：00-24：00）</span>
        </p>
        <p class="two">联系电话：<i>012-1234 5678</i></p>
    </div>
    <div class="clear"></div>
</div>

<!---------------商品介绍一大块----------------->
<div class="product">
    <div class="wt1080">
        <!------------上部分----------->
        <div class="up">
            <div class="crazy fl">限时折扣</div>
            <a href="#"><img src="${pageContext.request.contextPath}/image/guanggao.png" class="fr"></a>
            <div class="clear"></div>
        </div>
        <!------------下部分----------->
        <div class="down">
            <div class="fl">
                <ul>
                    <c:forEach items="${RebateList}" var="rList" begin="0" end="2">
                        <li style="width: 338px">
                            <div class="pic"><a
                                    href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${rList.goodsId}"
                                    title="${rList.gName}"><img
                                    src="${rList.gImg}"></a></div>
                            <p>
                                <a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${rList.goodsId}">${rList.gName}</a>
                            </p>
                            <div>
                                <c:if test="${rList.gRebate==0||rList.gRebate==1}">
                                    <span class="one">￥${rList.gPrice}</span>
                                </c:if>
                                <c:if test="${rList.gRebate!=0&&rList.gRebate!=1}">
                                    <span class="one">￥${rList.gPrice*rList.gRebate}</span>
                                    <span class="two">￥${rList.gPrice}</span>
                                </c:if>

                                <div class="clear"></div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!--------------商品开始---------------->
    <!------------------1楼-------------->
    <div class="floor wt1080" style="border-top:2px solid #1d84a7;">
        <div class="floor_one"></div>
        <!---------------左边---------------->
        <div class="left" style="height: 200px">
            <div class="start"
                 style="background: #1d84a7;background-image: url(${pageContext.request.contextPath}/image/f_one.png);background-position: 50% 40%;background-repeat: no-repeat;">
                宝宝洗护
            </div>
            <div class="second" style="background: #48aacd;">
                <div style="margin-right: 18px">
                    <p style="color: white;font-size: 18px;margin-top: 40px">无任何刺激性;</p>
                    <p style="color: white;font-size: 18px;margin-top: 25px">品质纯正温和;</p>
                    <p style="color: white;font-size: 18px;margin-top: 25px">针对宝宝皮肤精心挑选;</p>
                    <p style="color: white;font-size: 18px;margin-top: 25px">完全吻合婴儿皮肤特性;</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!--------------中间---------------->
        <div class="zhongbu">
            <ul>
                <c:forEach items="${xiHuList}" var="xList" begin="0" end="3">
                    <li>
                        <h1>${xList.gName}</h1>
                        <p>${xList.gName}</p>
                        <div class="pic"><a
                                href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${xList.goodsId}"><img
                                src="${xList.gImg}"
                                style="height: 144px;width:180px"></a></div>
                    </li>
                </c:forEach>
            </ul>
            <span class="heng"></span>
            <span class="shu"></span>
        </div>
        <!--------------------右边部分-------------------------->
        <div class="right">
            <h1>最新热卖</h1>
            <ul>
                <c:forEach items="${xiHuList}" var="xList" begin="0" end="3">
                    <li>
                        <dl>
                            <dt>
                                <a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${xList.goodsId}"><img
                                        src="${xList.gImg}"
                                        style="width: 65px;height:65px"></a>
                            </dt>
                            <dd class="xiangxi"><a href="">${xList.gName}</a></dd>

                            <dd><span class="fl">￥48.00</span><span class="fr">￥68.00</span></dd>

                            <c:if test="${xList.gRebate==0||xList.gRebate==1}">
                                <dd><span class="fl">￥${xList.gPrice }</span></dd>
                            </c:if>
                            <c:if test="${xList.gRebate!=0&&xList.gRebate!=1}">
                                <dd><span class="fl">￥${xList.gPrice*xList.gRebate}</span><span
                                        class="fr">￥${xList.gPrice}</span></dd>
                            </c:if>
                        </dl>
                        <div class="clear"></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <!------------------2楼-------------->
    <div class="floor wt1080" style="border-top:2px solid #a50332;">
        <div class="floor_two"></div>
        <!---------------左边---------------->
        <div class="left">
            <div class="start"
                 style="background: #a50332;background-image: url(${pageContext.request.contextPath}/image/f_one.png);background-position: 50% 40%;background-repeat: no-repeat;">
                宝宝玩具
            </div>
            <div class="second" style="background: #cc3467;">
                <ul>
                    <div style="margin-right: 18px">
                        <p style="color: white;font-size: 18px;margin-top: 40px">激发孩子的思维力;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">激发孩子的想象力;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">调动孩子的积极性;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">增进孩子的感性认识;</p>
                    </div>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <!--------------中间---------------->
        <div class="zhongbu">
            <ul>
                <c:forEach items="${wanJuList}" var="wList" begin="0" end="3">
                    <li>
                        <h1>${wList.gName}</h1>
                        <p>${wList.gName}</p>
                        <div class="pic"><a
                                href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${wList.goodsId}"><img
                                src="${wList.gImg}"
                                style="height: 144px;width:180px"></a></div>
                    </li>
                </c:forEach>
            </ul>
            <span class="heng"></span>
            <span class="shu"></span>
        </div>
        <!--------------------右边部分-------------------------->
        <div class="right">
            <h1>最新热卖</h1>
            <ul>
                <c:forEach items="${wanJuList}" var="wList" begin="0" end="3">
                    <li>
                        <dl>
                            <dt>
                                <a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${wList.goodsId}"><img
                                        src="${wList.gImg}"
                                        style="width: 65px;height:65px"></a>
                            </dt>
                            <dd class="xiangxi"><a href="">${wList.gName}</a></dd>
                            <c:if test="${wList.gRebate==0||wList.gRebate==1}">
                                <dd><span class="fl">￥${wList.gPrice }</span></dd>
                            </c:if>
                            <c:if test="${wList.gRebate!=0&&wList.gRebate!=1}">
                                <dd><span class="fl">￥${wList.gPrice*wList.gRebate}</span><span
                                        class="fr">￥${wList.gPrice}</span></dd>
                            </c:if>
                        </dl>
                        <div class="clear"></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <!------------------3楼-------------->
    <div class="floor wt1080" style="border-top:2px solid #217575;">
        <div class="floor_three"></div>
        <!---------------左边---------------->
        <div class="left">
            <div class="start"
                 style="background: #217575;background-image: url(${pageContext.request.contextPath}/image/f_one.png);background-position: 50% 40%;background-repeat: no-repeat;">
                童 &nbsp&nbsp 床
            </div>
            <div class="second" style="background: #339a99;">
                <ul>
                    <div style="margin-right: 18px">
                        <p style="color: white;font-size: 18px;margin-top: 40px">有利婴儿身体安全;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">有利形成独立个性;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">安全标准的合格小铺;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">专业设计保护宝宝安全;</p>
                    </div>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <!--------------中间---------------->
        <div class="zhongbu">
            <ul>
                <c:forEach items="${tonChuangList}" var="tList" begin="0" end="3">
                    <li>
                        <h1>${tList.gName}</h1>
                        <p>${tList.gName}</p>
                        <div class="pic"><a
                                href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${tList.goodsId}"><img
                                src="${tList.gImg}"
                                style="height: 144px;width:180px"></a></div>
                    </li>
                </c:forEach>
            </ul>
            <span class="heng"></span>
            <span class="shu"></span>
        </div>
        <!--------------------右边部分-------------------------->
        <div class="right">
            <h1>最新热卖</h1>
            <ul>
                <c:forEach items="${tonChuangList}" var="tList" begin="0" end="3">
                    <li>
                        <dl>
                            <dt>
                                <a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${tList.goodsId}"><img
                                        src="${tList.gImg}"
                                        style="width: 65px;height:65px"></a>
                            </dt>
                            <dd class="xiangxi"><a href="">${tList.gName}</a></dd>
                            <c:if test="${tList.gRebate==0||tList.gRebate==1}">
                                <dd><span class="fl">￥${tList.gPrice }</span></dd>
                            </c:if>
                            <c:if test="${tList.gRebate!=0&&tList.gRebate!=1}">
                                <dd><span class="fl">￥${tList.gPrice*tList.gRebate}</span><span
                                        class="fr">￥${tList.gPrice}</span></dd>
                            </c:if>
                        </dl>
                        <div class="clear"></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!------------------4楼-------------->
    <div class="floor wt1080" style="border-top:2px solid #ee6018;">
        <div class="floor_four"></div>
        <!---------------左边---------------->
        <div class="left">
            <div class="start"
                 style="background: #ee6018;background-image: url(${pageContext.request.contextPath}/image/f_one.png);background-position: 50% 40%;background-repeat: no-repeat;">
                尿裤湿巾
            </div>
            <div class="second" style="background: #ff9a66;">
                <ul>
                    <div style="margin-right: 18px">
                        <p style="color: white;font-size: 18px;margin-top: 40px">吸收好;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">透气性好;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">柔软舒适;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">天然原材料;</p>
                    </div>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <!--------------中间---------------->
        <div class="zhongbu">
            <ul>
                <c:forEach items="${niaoBuList}" var="nList" begin="0" end="3">
                    <li>
                        <h1>${nList.gName}</h1>
                        <p>${nList.gName}</p>
                        <div class="pic"><a
                                href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${nList.goodsId}"><img
                                src="${nList.gImg}"
                                style="height: 144px;width:180px"></a></div>
                    </li>
                </c:forEach>
            </ul>
            <span class="heng"></span>
            <span class="shu"></span>
        </div>
        <!--------------------右边部分-------------------------->
        <div class="right">
            <h1>最新热卖</h1>
            <ul>
                <c:forEach items="${niaoBuList}" var="nList" begin="0" end="3">
                    <li>
                        <dl>
                            <dt>
                                <a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${nList.goodsId}"><img
                                        src="${nList.gImg}"
                                        style="width: 65px;height:65px"></a>
                            </dt>
                            <dd class="xiangxi"><a href="">${nList.gName}</a></dd>
                            <c:if test="${nList.gRebate==0||nList.gRebate==1}">
                                <dd><span class="fl">￥${nList.gPrice }</span></dd>
                            </c:if>
                            <c:if test="${nList.gRebate!=0&&nList.gRebate!=1}">
                                <dd><span class="fl">￥${nList.gPrice*nList.gRebate}</span><span
                                        class="fr">￥${nList.gPrice}</span></dd>
                            </c:if>
                        </dl>
                        <div class="clear"></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!------------------5楼-------------->
    <div class="floor wt1080" style="border-top:2px solid #0f7f29;">
        <div class="floor_five"></div>
        <!---------------左边---------------->
        <div class="left">
            <div class="start"
                 style="background: #0f7f29;background-image: url(${pageContext.request.contextPath}/image/f_one.png);background-position: 50% 40%;background-repeat: no-repeat;">
                奶粉
            </div>
            <div class="second" style="background: #3ab055;">
                <ul>
                    <div style="margin-right: 18px">
                        <p style="color: white;font-size: 18px;margin-top: 25px">有利于钙的吸收;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">提高宝宝抵抗力;</p>
                        <p style="color: white;font-size: 18px;margin-top: 25px">更有利于宝宝的成长;</p>
                        <p style="color: white;font-size: 18px;margin-top: 40px">成分比例与母乳更接近;</p>
                    </div>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <!--------------中间---------------->
        <div class="zhongbu">
            <ul>
                <c:forEach items="${naiFenList}" var="nfList" begin="0" end="3">
                    <li>
                        <h1>${nfList.gName}</h1>
                        <p>${nfList.gName}</p>
                        <div class="pic"><a
                                href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${nfList.goodsId}"><img
                                src="${nfList.gImg}"
                                style="height: 144px;width:180px"></a></div>
                    </li>
                </c:forEach>
            </ul>
            <span class="heng"></span>
            <span class="shu"></span>
        </div>
        <!--------------------右边部分-------------------------->
        <div class="right">
            <h1>最新热卖</h1>
            <ul>
                <c:forEach items="${naiFenList}" var="nfList" begin="0" end="3">
                    <li>
                        <dl>
                            <dt>
                                <a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${nfList.goodsId}"><img
                                        src="${nfList.gImg}"
                                        style="width: 65px;height:65px"></a>
                            </dt>
                            <dd class="xiangxi"><a href="">${nfList.gName}</a></dd>
                            <c:if test="${nfList.gRebate==0||nfList.gRebate==1}">
                                <dd><span class="fl">￥${nfList.gPrice }</span></dd>
                            </c:if>
                            <c:if test="${nfList.gRebate!=0&&nfList.gRebate!=1}">
                                <dd><span class="fl">￥${nfList.gPrice*nfList.gRebate}</span><span
                                        class="fr">￥${nfList.gPrice}</span></dd>
                            </c:if>
                        </dl>
                        <div class="clear"></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<!---------------------保障------------------->
<div class="baozhang">
    <div class="wt1080">
        <ul>
            <li>
                <img src="${pageContext.request.contextPath}/image/c1.png">
                <p>全球正品货源</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/c2.png">
                <p>一件代发</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/c3.png">
                <p>全球直邮</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/c5.png">
                <p>售后无忧</p>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<!---------------底部--------------->
<div class="footer">
    <div class="wt1080" style="position: relative">
        <div class="a_footer">
            <div class="left">
                <a href="index.jsp"><img src="${pageContext.request.contextPath}/image/logo.png"></a>
                <p class="lianxi">
                    <a href="#"><img src="${pageContext.request.contextPath}/image/weixin.png"></a>
                    <a href="#"><img src="${pageContext.request.contextPath}/image/weibo.png"></a>
                    <a href="#"><img src="${pageContext.request.contextPath}/image/QQ.png"></a>
                    <span>028-6133 8882</span>
                </p>
            </div>
            <div class="right">
                <ul>
                    <li>
                        <dl>
                            <dt><a href="article.jsp">新手指南</a></dt>
                            <dd><a href="article.jsp">购物流程</a></dd>
                            <dd><a href="article.jsp">支付方式</a></dd>
                            <dd><a href="article.jsp">通关关税</a></dd>
                            <dd><a href="article.jsp">常见问题</a></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href="article.jsp">新手指南</a></dt>
                            <dd><a href="article.jsp">购物流程</a></dd>
                            <dd><a href="article.jsp">支付方式</a></dd>
                            <dd><a href="article.jsp">通关关税</a></dd>
                            <dd><a href="article.jsp">常见问题</a></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href="article.jsp">新手指南</a></dt>
                            <dd><a href="article.jsp">购物流程</a></dd>
                            <dd><a href="article.jsp">支付方式</a></dd>
                            <dd><a href="article.jsp">通关关税</a></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href="article.jsp">新手指南</a></dt>
                            <dd><a href="article.jsp">购物流程</a></dd>
                            <dd><a href="article.jsp">支付方式</a></dd>
                            <dd><a href="article.jsp">通关关税</a></dd>
                            <dd><a href="article.jsp">常见问题</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div class="weixin"><img src="${pageContext.request.contextPath}/image/weixin1.png">
            <p>扫描二维码下载APP</p></div>
        <!------------------------>
        <p class="beian">Copyright © 2019 LAST购物网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
    </div>
</div>
<script>
    $("#chaiGoods").click(function () {
        var chai = $("#chaiName").val();
        location.href = "${pageContext.request.contextPath}/goods/selGoodsOther.do?goodName=" + chai;
    })
</script>
</body>
</html>