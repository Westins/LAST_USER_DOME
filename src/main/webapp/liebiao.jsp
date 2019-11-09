<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>商品显示</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/liebiao.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/slide.js"></script>
</head>
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
<body>
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
                <li><span class="shop">购物车<a href="gouwuche.jsp">0</a>件</span></li>
                <li><span class="phone"><a href="article.jsp">手机商城</a></span></li>
                <li><span><a href="article.jsp">关于LAST</a></span></li>
                <li><span><a href="article.jsp">帮助中心</a></span></li>
                <li><span class="phone2">028-6133 8882</span></li>
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
            <div class="clear"></div>
        </div>
    </div>
    <a class="my_shop fr" href="${pageContext.request.contextPath}/gouwuche.jsp">我的购物车</a>
    <div class="clear"></div>
</div>
<!--------------导航------------------>
<div class="nav">
    <div class="wt1080">
        <ul>
            <li><a href="${pageContext.request.contextPath}/index.jsp" class="current"><span>首页</span></a></li>
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

<!---------------------导航完--------------------->
<div class="content">
    <!-------------------分类------------------>
    <%--    <div class="wt1080 fenlei">--%>
    <%--        <div class="left">分类：</div>--%>
    <%--        <div class="right">--%>
    <%--            <ul>--%>
    <%--                <li><a href="">奶粉（1244）</a></li>--%>
    <%--                <li><a href="">俄罗斯尿布（1244）</a></li>--%>
    <%--                <li><a href="">俄罗斯尿布（1244）</a></li>--%>
    <%--                <li><a href="">俄罗斯尿布（1244）</a></li>--%>
    <%--                <li><a href="">俄罗斯尿布（1244）</a></li>--%>
    <%--                <li><a href="">俄罗斯尿布（1244）</a></li>--%>
    <%--            </ul>--%>
    <%--        </div>--%>
    <%--        <div class="clear"></div>--%>
    <%--    </div>--%>
    <!-------------------位置------------------>
    <div class="place">
        查询内容：<a class="check" href="#" id="viewName"></a>< <<a class="check" href="#" id="viewType"></a> <a
            class="check" href="javascript:defualt();"
            style="color: orange">[清空]</a>
        <%--        <a class="biaoqian pa1" href="#">默认</a>--%>
        <a class="biaoqian pa2" href="#" id="priceS">价格 ↑</a>
        <a class="biaoqian pa3" href="#" id="xiaoLiangS">销量 ↑</a>
    </div>
    <!----------------产品详细------------------->
    <div class="product">
        <ul id="viewGoods">
            <c:forEach items="${goodsList}" var="gList">
                <li>
                    <div class="pic"><a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${gList.goodsId}"><img
                            src="${pageContext.request.contextPath}/${gList.gImg}"></a></div>
                    <p class="one"><a href="${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=${gList.goodsId}">${gList.gName}</a></p>
                    <c:if test="${gList.gType==2}">
                        <p class="two"><span style="color: #fe5500">￥<span
                                class="real">${gList.gPrice*gList.gRebate}</span></span><span class="wrong">￥${gList.gPrice}</span>
                        </p>
                    </c:if>
                    <c:if test="${gList.gType!=0}">
                        <p class="two"><span style="color: #fe5500">￥<span
                                class="real">${gList.gPrice}</span></span>
                        </p>
                    </c:if>
                    <p class="one"><a href="#" style="float: right;margin-bottom: 50px">销量:${gList.gXiaoLian}</a>
                    </p>
                </li>
            </c:forEach>
        </ul>
        <div class="clear"></div>
    </div>
    <div class="page wt1080"><a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a
            href="#">5</a><a href="#">下一页</a></div>
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
        <div class="weixin"><img src="image/weixin1.png">
            <p>扫描二维码下载APP
            </p></div>
        <!------------------------>
        <p class="beian">Copyright © 2019 LAST网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
    </div>
</div>
<script>
    var chai = $("#chaiName").val();
    var chaiType = ${goodsType.typeId};
    var chaiTypeName = "${goodsType.typeName}";
    var a = document.getElementById("chaiName").value;
    var gXl = "";
    var gPrice = "";
    var indexData = $("#indexData").val();
    selGoodsByName();

    $("#chaiGoods").click(function () {
        chai = $("#chaiName").val();
        selGoodsByName();
    })
    $("#priceS").click(function () {
        gPrice = "desc";
        selGoodsByName();
        gPrice = "";
    });
    $("#xiaoLiangS").click(function () {
        gXl = "desc";
        selGoodsByName();
        gXl = "";
    })

    function defualt() {
        chai = "";
        chaiType = 0;
        chaiTypeName = "";
        selGoodsByName();
    }

    function selGoodsByName() {
        $.ajax({
            url: "${pageContext.request.contextPath }/goods/selGoods.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            data: {"goodName": chai, "goodType": chaiType, "gXl": gXl, "gPrice": gPrice},    //参数值
            type: "POST",   //请求方式
            dataType: "json",
            success: function (req) {
                $("#viewGoods").empty()
                $.each(req, function (index, item) {
                    var data = null;
                    if (item.gState == 2) {
                        // 打折
                        data = "" +
                            "<li>\n" +
                            "                <div class=\"pic\"><a href=\"${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=" + item.goodsId + "\"><img\n" +
                            "                        src=\"" + item.gImg + "\"></a></div>\n" +
                            "                <p class=\"one\"><a href=\"${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=" + item.goodsId + "\">" + item.gName + "</a></p>\n" +
                            "                <p class=\"two\"><span style=\"color: #fe5500\">￥<span class=\"real\">" + item.gPrice * item.gRebate + "</span></span><span class=\"wrong\">￥" + item.gPrice + "</span>\n" +
                            "                </p>\n" +
                            "                <p class=\"one\"><a href=\"#\" style=\"float: right;margin-bottom: 50px\">销量:" + item.gXiaoLian + "</a></p>\n" +
                            "            </li>";
                    } else if (item.gState == 0) {
                        // 不打折
                        data = "" +
                            "<li>\n" +
                            "                <div class=\"pic\"><a href=\"${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=" + item.goodsId + "\"><img\n" +
                            "                        src=\"" + item.gImg + "\"></a></div>\n" +
                            "                <p class=\"one\"><a href=\"${pageContext.request.contextPath}/goods/selGoodsById.do?goodsId=" + item.goodsId + "\">" + item.gName + "</a></p>\n" +
                            "                <p class=\"two\"><span style=\"color: #fe5500\">￥<span class=\"real\">" + item.gPrice + "</span></span>\n" +
                            "                </p>\n" +
                            "                <p class=\"one\"><a href=\"#\" style=\"float: right;margin-bottom: 50px\">销量:" + item.gXiaoLian + "</a></p>\n" +
                            "            </li>";
                    }
                    $("#viewGoods").append(data);
                    $("#viewType").text(chaiTypeName);
                    $("#viewName").text(chai);
                })
            }
        });
    }
</script>
</body>
</html>
