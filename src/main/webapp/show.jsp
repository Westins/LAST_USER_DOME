<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>商品显示</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/show.css" type="text/css" rel="stylesheet"/>
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
<!---------------------导航完--------------------->

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.imagezoom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<div class="wt1080">
    <!----------------位置--------------------->
    <%--
     <div class="place">
            当前位置：<span class="check">Aptamil 德国爱他美 婴儿奶粉 2段 800克/罐 3罐装 6-10个月</span>
        </div>
     --%>
    <!-------------商品详细----------------->
    <div class="property">
        <div class="left">
            <div class="left_top">
                <img src="${goods.gImg}" class="jqzoom">
                <a href="#" class="search"></a>
            </div>
            <div class="pics">
                <div id="scroll" class="owl-carousel">
                    <a href="#" class="item current"><img src="${goods.gImg}"></a>
                    <a href="#" class="item"><img src="${goods.gImg2}"></a>
                    <a href="#" class="item"><img src="${goods.gImg3}"></a>
                    <a href="#" class="item"><img src="${goods.gImg4}"></a>
                    <a href="#" class="item"><img src="${goods.gImg4}"></a>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $(".jqzoom").imagezoom();

                $('#scroll').owlCarousel({
                    items: 4,
                    autoPlay: false,
                    navigation: true,
                    navigationText: ["", ""],
                    scrollPerPage: true
                });
            });
        </script>
        <div class="right">
            <a href="#" class="title">${goods.gName}${goods.gState}</a>
            <div class="aa">
                <c:if test="${goods.gState=='2'.charAt(0)}">
                    <span class="a">价格</span>
                    <span class="b">￥${goods.gPrice*goods.gRebate}</span>
                    <span class="c">${goods.gRebate*10}折</span>
                    <span class="c">包邮</span>
                    <span class="d">原价: ￥${goods.gPrice}</span>
                </c:if>
                <c:if test="${goods.gState=='0'.charAt(0)}">
                    <span class="a">价格</span>
                    <span class="b">￥${goods.gPrice}</span>
                    <span class="c">包邮</span>
                </c:if>
            </div>
            <table>
                <tr>
                    <td class="one">运费</td>
                    <td>免运费</td>
                </tr>
                <tr>
                    <td class="one">关税</td>
                    <td>本商品免关税！</td>
                </tr>
                <tr>
                    <td class="one">数量</td>
                    <td>
                        <div class="change">
                            <span class="zuo" id="cutNum">-</span>
                            <input name="" type="text" value="1" id="goodsNum">
                            <span class="you" id="addNum">+</span>
                        </div>
                        <span class="tishi">库存充足</span>
                    </td>
                </tr>
            </table>
            <!-----------------购买按钮--------------->
            <div class="shopping">
                <a href="${pageContext.request.contextPath}/order.jsp" class="buy">立即购买</a>
                <input type="hidden" value="${goods.goodsId}" id="goodsId"/>
                <a class="shop_car" id="add">加入购物车</a>
                <div class="clear"></div>
            </div>
            <!-----------保障---------------->
            <div class="b_baozhang">
                <ul>
                    <li>
                        <img src="${pageContext.request.contextPath}/image/u1.png">
                        <p>全球正品货源</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/image/u2.png">
                        <p>一件代发</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/image/u3.png">
                        <p>全球直邮</p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath}/image/u4.png">
                        <p>售后无忧</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <!-----------------下半部分------------------->
    <div class="details">
        <div class="details_left">
            <div class="d_l_t">
                <div class="d_l_t_t">
                    <a href="" class="current">商品详情</a>
                    <%--                    <a href="">买家口碑(1600)</a>--%>
                </div>
                <!-----------详细内容---------->
                <div class="d_l_t_d">
                    <%--                    <img src="image/xiangxi.png">--%>
                    <img src="${pageContext.request.contextPath}/${goods.gDetailsImg}">
                    <img src="${pageContext.request.contextPath}/${goods.gDetailsImg2}">
                </div>
                <!----------评价---------->
            </div>
            <%--            <div class="pingjia">--%>
            <%--                <div class="pingjia_t">--%>
            <%--                    <span>买家口碑</span>本商品由Aptamil/爱他美发货并提供售后服务--%>
            <%--                </div>--%>
            <%--                <!----------评价----------->--%>
            <%--                <div class="pingjia_d">--%>
            <%--                    <div class="pingjia_d_t">--%>
            <%--                        <span class="current"><img src="image/d1.png">全部评价（5884）</span>--%>
            <%--                        <span><img src="image/d2.png">好评（5750）</span>--%>
            <%--                        <span><img src="image/d2.png">好评（48）</span>--%>
            <%--                        <span><img src="image/d2.png">差评（86）</span>--%>
            <%--                        <span><img src="image/d2.png">晒单（227）</span>--%>
            <%--                    </div>--%>
            <%--                    <!----------留言----------->--%>
            <%--                    <div class="pingjia_d_l">--%>
            <%--                        <ul>--%>
            <%--                            <li>--%>
            <%--                                <p class="title"><span>月夜花香</span>（2015-10-03 21:47:13）</p>--%>
            <%--                                <p class="pic"><img src="image/p10.jpeg"></p>--%>
            <%--                                <p class="mess">已经开始喝第二阶段的奶粉了，会继续支持德贝。</p>--%>
            <%--                                <p class="admin">管理员：亲爱的用户，已返现到您的会员账户，感谢你对德贝的支持，我们会继续坚持给您带来最极致的服务。</p>--%>
            <%--                            </li>--%>

            <%--                            <li>--%>
            <%--                                <p class="title"><span>月夜花香</span>（2015-10-03 21:47:13）</p>--%>
            <%--                                <p class="pic"><img src="image/p10.jpeg"></p>--%>
            <%--                                <p class="mess">已经开始喝第二阶段的奶粉了，会继续支持德贝。</p>--%>
            <%--                                <p class="admin">管理员：亲爱的用户，已返现到您的会员账户，感谢你对德贝的支持，我们会继续坚持给您带来最极致的服务。</p>--%>
            <%--                            </li>--%>

            <%--                            <li>--%>
            <%--                                <p class="title"><span>月夜花香</span>（2015-10-03 21:47:13）</p>--%>
            <%--                                <p class="pic"><img src="image/p10.jpeg"></p>--%>
            <%--                                <p class="mess">已经开始喝第二阶段的奶粉了，会继续支持德贝。</p>--%>
            <%--                                <p class="admin">管理员：亲爱的用户，已返现到您的会员账户，感谢你对德贝的支持，我们会继续坚持给您带来最极致的服务。</p>--%>
            <%--                            </li>--%>
            <%--                        </ul>--%>
            <%--                    </div>--%>
            <%--                    <!---------------分页--------------->--%>
            <%--                    <div class="page"><a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">下一页</a></div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <!---------------------常见问题------------------->
            <div class="problem">
                <h1>常见问题</h1>
                <div class="problem_c">
                    <div class="problem_c_t">
                        <div class="title">
                            <span>Q</span>
                            <font>商品来自哪里？</font>
                            <div class="clear"></div>
                        </div>
                        <div class="answer">
                            <span>A</span>
                            <font>我们的专业招商团队，确保所有的品牌均为海外优质品牌，主要是由海外品牌入住商或品牌代理经销商等品牌入驻商提供，让你轻松享受到国外优质原装进口商品。</font>
                            <div class="clear"></div>
                        </div>

                        <div class="title">
                            <span>Q</span>
                            <font>我还要额外缴纳关税么？</font>
                            <div class="clear"></div>
                        </div>
                        <div class="answer">
                            <span>A</span>
                            <font>依据《中华人民共和国进境物品归类表》，以商品实际销售价格作为完税价格（征税基数），参照行邮税税率征收进境物品进口税，应征税在50元以下（含50元），海关予以免征。</font>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <!------------------->
                    <p>联系在线客服，或拨打客户电话：028-6133 8882。
                    <p>
                    <p>客户工作时间：周一到周日9：00-22：00，法定假日除外。
                    <p>
                </div>
            </div>
        </div>


        <div class="details_right">
            <div class="d_r_t">相似推荐</div>
            <div class="d_r_d">
                <ul>
                    <li>
                        <a href="#"><img src="${pageContext.request.contextPath}/image/p9.png"></a>
                        <p><a href="#">德国爱他美Aptamil奶粉...</a></p>
                        <p><span>￥<font>359.00</font></span> 5.2折包邮</p>
                    </li>
                    <li>
                        <a href="#"><img src="${pageContext.request.contextPath}/image/p9.png"></a>
                        <p><a href="#">德国爱他美Aptamil奶粉...</a></p>
                        <p><span>￥<font>359.00</font></span> 5.2折包邮</p>
                    </li>
                    <li>
                        <a href="#"><img src="${pageContext.request.contextPath}/image/p9.png"></a>
                        <p><a href="#">德国爱他美Aptamil奶粉...</a></p>
                        <p><span>￥<font>359.00</font></span> 5.2折包邮</p>
                    </li>
                    <li>
                        <a href="#"><img src="${pageContext.request.contextPath}/image/p9.png"></a>
                        <p><a href="#">德国爱他美Aptamil奶粉...</a></p>
                        <p><span>￥<font>359.00</font></span> 5.2折包邮</p>
                    </li>
                    <li>
                        <a href="#"><img src="${pageContext.request.contextPath}/image/p9.png"></a>
                        <p><a href="#">德国爱他美Aptamil奶粉...</a></p>
                        <p><span>￥<font>359.00</font></span> 5.2折包邮</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
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
                <a href="#"><img src="${pageContext.request.contextPath}/image/logo.png"></a>
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
                            <dt><a href="#">新手指南</a></dt>
                            <dd><a href="#">购物流程</a></dd>
                            <dd><a href="#">支付方式</a></dd>
                            <dd><a href="#">通关关税</a></dd>
                            <dd><a href="#">常见问题</a></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href="#">新手指南</a></dt>
                            <dd><a href="#">购物流程</a></dd>
                            <dd><a href="#">支付方式</a></dd>
                            <dd><a href="#">通关关税</a></dd>
                            <dd><a href="#">常见问题</a></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href="#">新手指南</a></dt>
                            <dd><a href="#">购物流程</a></dd>
                            <dd><a href="#">支付方式</a></dd>
                            <dd><a href="#">通关关税</a></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a href="#">新手指南</a></dt>
                            <dd><a href="#">购物流程</a></dd>
                            <dd><a href="#">支付方式</a></dd>
                            <dd><a href="#">通关关税</a></dd>
                            <dd><a href="#">常见问题</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div class="weixin"><img src="image/weixin1.png">
            <p>扫描二维码下载APP</p></div>
        <!------------------------>
        <p class="beian">Copyright © 2016 LAST网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
    </div>
</div>
<script>
    var goodsNum = $("#goodsNum").val();
    $("#cutNum").click(function () {
        if (goodsNum == 1) {
            alert("不能在减少啦！");
        } else {
            goodsNum = Number(goodsNum) - 1;
            $("#goodsNum").val(goodsNum);
        }
    });
    $("#addNum").click(function () {
        goodsNum = Number(goodsNum) + 1;
        $("#goodsNum").val(goodsNum);
    });

    $("#add").click(function () {
        addShopcart();
    })

    function addShopcart() {
        var goodsId = $("#goodsId").val();
        var goodsNum = $("#goodsNum").val();
        $.ajax({
            url: "${pageContext.request.contextPath }/shopCart/addShopCart.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            data: {"goodsId": goodsId, "cNum": goodsNum},    //参数值
            type: "POST",   //请求方式
            success: function (req) {
                if (req) {
                    alert("已经添加到您的购物车")
                }
            }
        });
    }
</script>
</body>
</html>
