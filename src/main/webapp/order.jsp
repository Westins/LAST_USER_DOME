<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>确认订单</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/order.css" type="text/css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/js/slide.js"></script>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }

    button, input {
        outline: none;
    }

    button, .login {
        width: 120px;
        height: 42px;
        background: #f40;
        color: #fff;
        border: none;
        border-radius: 6px;
        display: block;
        margin: 20px auto;
        cursor: pointer;
    }

    .popOutBg {
        width: 100%;
        height: 100%;
        position: fixed;
        left: 0;
        top: 0;
        background: rgba(0, 0, 0, .6);
        display: none;
    }

    .popOut {
        position: fixed;
        width: 600px;
        height: 300px;
        top: 50%;
        left: 50%;
        margin-top: -150px;
        margin-left: -300px;
        background: #fff;
        border-radius: 8px;
        overflow: hidden;
        display: none;
    }

    .popOut > span {
        position: absolute;
        right: 10px;
        top: 0;
        height: 42px;
        line-height: 42px;
        color: #000;
        font-size: 30px;
        cursor: pointer;
    }

    .popOut table {
        display: block;
        margin: 42px auto 0;
        width: 520px;
    }

    .popOut caption {
        width: 520px;
        text-align: center;
        color: #f40;
        font-size: 18px;
        line-height: 42px;
    }

    .popOut table tr td {
        color: #666;
        padding: 6px;
        font-size: 14px;
    }

    .popOut table tr td:first-child {
        text-align: right;
    }

    .inp {
        width: 280px;
        height: 30px;
        line-height: 30px;
        border: 1px solid #999;
        padding: 5px 10px;
        color: #000;
        font-size: 14px;
        border-radius: 6px;
    }

    .inp:focus {
        border-color: #f40;
    }

    .AreaS {
        background-color: #05920a !important;
        color: #fff !important;
    }

    @keyframes ani {
        from {
            transform: translateX(-100%) rotate(-60deg) scale(.5);
        }
        50% {
            transform: translateX(0) rotate(0) scale(1);
        }
        90% {
            transform: translateX(20px) rotate(0) scale(.8);
        }
        to {
            transform: translateX(0) rotate(0) scale(1);
        }
    }

    .ani {
        animation: ani .5s ease-in-out;
    }
</style>
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
<form action="${pageContext.request.contextPath}/order/CunOrder.do" method="post">
    <div class="wt1080">
        <!--------------标题----------->
        <div class="my_order">
            <h1>提交订单</h1>
            <div class="place" style="z-index: 0">
                <ul>
                    <li class="current"><span>1</span>
                        <p>我的购物车</p></li>
                    <li class="current"><span>2</span>
                        <p>提交订单</p></li>
                    <li><span>3</span>
                        <p>选择支付方式</p></li>
                </ul>
                <span class="heng"></span>
                <span class="a_heng"></span>
            </div>
        </div>
        <!-------------收货地址-------------->
        <div class="address">
            <div class="roo">收货地址<span></span></div>
            <div class="b_address">
                <ul id="addressView">
                    <c:forEach items="${addressList}" var="aList">
                        <li style="border: black 1px solid" name="choseLi">
                            <h1>${aList.aName}<span>${aList.aPhone}</span></h1>
                            <p>${aList.aAddress}</p>
                            <div class="operate">
                                <a href="#" class="edit">编辑</a>
                                <a href="${pageContext.request.contextPath}/address/delAddress.do?aId=${aList.aId}"
                                   class="del">删除</a>
                                <input type="radio" name="choseAddress"
                                       style="width: 20px;height: 20px;float: right;margin-right: 20px;margin-top: 15px;"
                                       value="${aList.aId}"/>
                            </div>
                            <div class="check"></div>
                        </li>
                    </c:forEach>
                </ul>
                <div class="add_address"><a href="#" id="addAdress">添加地址</a></div>
                <div class="clear"></div>
            </div>
        </div>
        <!---------------订单信息-------------->
        <div class="order_details">
            <div class="roo">订单信息<span></span></div>
            <div class="tt">
                <table>
                    <tr>
                        <th width="50%">商品</th>
                        <th width="16%">单价</th>
                        <th width="16%">数量</th>
                        <th width="18%">小计</th>
                    </tr>
                    <c:set value="${0}" var="sum"/>
                    <c:forEach items="${shopcartList}" var="sList">
                        <tr>
                            <td>
                                <div class="pic"><img src="${sList.goods.gImg}">
                                </div>
                                <p class="one"><a href="#">${sList.goods.gName}</a></p>
                            </td>
                            <td><span class="e">${sList.goods.gPrice*sList.goods.gRebate}</span></td>
                            <td>${sList.cNum}</td>
                            <td><span class="u">${sList.goods.gPrice*sList.goods.gRebate*sList.cNum}</span></td>
                        </tr>
                        <c:set value="${sum+(sList.goods.gPrice*sList.goods.gRebate*sList.cNum)}" var="sum"/>
                    </c:forEach>
                </table>
            </div>
        </div>
        <!------------------优惠卷--------------->
        <div class="coupon">
            <div class="kk">
                <table>
                    <tr>
                        <td>${fn:length(shopcartList)} 件商品，商品总金额：</td>
                        <td>￥${sum}</td>
                        <%--                    <td>￥<fmt:formatNumber value="${sum}" var="result" pattern="#.00" /></td>--%>
                    </tr>
                    <tr>
                        <td>+运费：</td>
                        <td>￥0.00</td>
                    </tr>
                </table>
                <p class="money">应付余额：<span>￥<font>${sum}</font></span></p>
            </div>
            <div class='clear'></div>
            <!---------------委托下的版本---------------->
            <div class="ll">
                <div class="bb">
                    <h1>个人委托申报协议</h1>
                    <p>
                        本人承诺所购买商品系个人合理自用，现委托商家代理申报，代缴税款等通关事宜，本人保证遵守《海关法》和国家相关法律法规，保证所提供的身份信息和收货信息真是完整，无侵犯他人权益的行为，以上委托关系如实填写，本人愿意接受海关，检查检疫机构及其他监管部门的监管，并承担相应法律责任。</p>
                </div>
                <a style="float: right"><input type="submit" value="确认提交订单"></a>
                <div class="gg" style="float: right">
                    <input type="hidden" value="${sum}" name="priceNum"/>
                    <p>应付余额：<span>￥<font>${sum}</font></span></p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</form>

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
        <div class="weixin"><img src="${pageContext.request.contextPath}/image/weixin1.png">
            <p>扫描二维码下载APP</p></div>
        <!------------------------>
        <p class="beian">Copyright © 2019 LAST购物网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
    </div>
</div>
<div class="popOutBg"></div>
<div class="popOut" style="height: 350px">
    <span title="关闭"> x </span>
    <form action="${pageContext.request.contextPath}/address/addAdress.do" method="post">
        <table>
            <caption>添加收货地址</caption>
            <tr>
                <td width="120">收货人：</td>
                <td><input type="text" class="inp" placeholder="请输入收货人昵称" id="addressName" name="addressName"/></td>
            </tr>
            <tr>
                <td>收货电话：</td>
                <td><input type="text" class="inp" placeholder="请输入收货电话" id="addressPhone" name="addressPhone"/></td>
            </tr>
            <tr>
                <td>收货地址：</td>
                <td>
                    <input type="text" class="inp" placeholder="请输入详细地址，如街道、门牌号等" id="addressUrl" name="addressUrl"/>
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" class="login" value="确认"/></td>
            </tr>
        </table>
    </form>
</div>
<script>
    function $(param) {
        if (arguments[1] == true) {
            return document.querySelectorAll(param);
        } else {
            return document.querySelector(param);
        }
    }

    function ani() {
        $(".popOut").className = "popOut ani";
    }

    $("#addAdress").onclick = function () {
        $(".popOut").style.display = "block";
        ani();
        $(".popOutBg").style.display = "block";
    };
    $(".popOut > span").onclick = function () {
        $(".popOut").style.display = "none";
        $(".popOutBg").style.display = "none";
    };
    $(".popOutBg").onclick = function () {
        $(".popOut").style.display = "none";
        $(".popOutBg").style.display = "none";
    };
</script>
<c:if test="${tiShi==1}">
    <script>
        alert("请选择收货地址")
    </script>
</c:if>
</body>
</html>
