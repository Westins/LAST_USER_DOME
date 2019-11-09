<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>我的购物车</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/gouwuche.css" type="text/css" rel="stylesheet"/>
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
    <div class="logo fl"><a href="${pageContext.request.contextPath}/index.jsp"><img
            src="${pageContext.request.contextPath}/image/logo.png"></a></div>
    <div class="search fl">
        <div>
            <input name="search" type="text" class="a_search fl" placeholder="请输入关键字">
            <span class="b_search fl"></span>
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

<!--------------------内容----------------------->
<div class="wt1080">
    <!--------------标题----------->
    <div class="my_car">
        <h1>我的购物车</h1>
        <div class="place">
            <ul>
                <li class="current"><span>1</span>
                    <p>我的购物车</p></li>
                <li><span>2</span>
                    <p>提交订单</p></li>
                <li><span>3</span>
                    <p>选择支付方式</p></li>
            </ul>
            <span class="heng"></span>
        </div>
    </div>
    <!--------------选择----------->
    <div class="details">
        <div class="title">
            <div style="width: 432px;">商品</div>
            <div style="width: 141px;margin-left: 80px">单价</div>
            <div style="width: 141px;">数量</div>
            <div style="width: 141px;">合计</div>
            <div style="width: 141px;">操作</div>
        </div>
        <!-----------------------商品展示---------------------------->
        <div class="goods" id="shopCartView">
        </div>
        <!------------------下部分------------------>
        <div class="d_d">
            <div class="d_d_l">
                <a href="javascript:;" id="all"><input type="checkbox"
                                                       style="width: 20px;height: 20px;" id="choseAll"/>全选</a>
                <a href="Javascript:delChose()" style="margin-left: 10px;">删除选中商品</a>
            </div>

            <div class="d_d_r">
                <p class="o">已选商品<span id="Num"></span>件<font>总价（不含运费）：<span id="Price"></span></font></p>
                <p class="t">LAST 购物商场全体成员祝您购物愉快！</p>
            </div>
            <a href="#" class="jiesuan" id="jieSuan">去结算</a>
        </div>
    </div>
    <!---------------------热销------------------>
    <div class="hot">
        <div class="title">热销推荐</div>
        <div class="content">
            <ul>
                <li>
                    <div class="pic"><a href="#"><img src="image/p11.png"></a></div>
                    <p class="c_t"><a href="#">Regen/丽珍 纯棉超细纤维美白皮肤面膜贴 10片</a></p>
                    <p class="price">￥89.00</p>
                    <a href="#" class="goumai">立即购买</a>
                </li>
                <li>
                    <div class="pic"><a href="#"><img src="image/p11.png"></a></div>
                    <p class="c_t"><a href="#">Regen/丽珍 纯棉超细纤维美白皮肤面膜贴 10片</a></p>
                    <p class="price">￥89.00</p>
                    <a href="#" class="goumai">立即购买</a>
                </li>
                <li>
                    <div class="pic"><a href="#"><img src="image/p11.png"></a></div>
                    <p class="c_t"><a href="#">Regen/丽珍 纯棉超细纤维美白皮肤面膜贴 10片</a></p>
                    <p class="price">￥89.00</p>
                    <a href="#" class="goumai">立即购买</a>
                </li>
                <li>
                    <div class="pic"><a href="#"><img src="image/p11.png"></a></div>
                    <p class="c_t"><a href="#">Regen/丽珍 纯棉超细纤维美白皮肤面膜贴 10片</a></p>
                    <p class="price">￥89.00</p>
                    <a href="#" class="goumai">立即购买</a>
                </li>
                <li>
                    <div class="pic"><a href="#"><img src="image/p11.png"></a></div>
                    <p class="c_t"><a href="#">Regen/丽珍 纯棉超细纤维美白皮肤面膜贴 10片</a></p>
                    <p class="price">￥89.00</p>
                    <a href="#" class="goumai">立即购买</a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
</div>


<!---------------------保障------------------->
<div class="baozhang">
    <div class="wt1080">
        <ul>
            <li>
                <img src="image/c1.png">
                <p>全球正品货源</p>
            </li>
            <li>
                <img src="image/c2.png">
                <p>一件代发</p>
            </li>
            <li>
                <img src="image/c3.png">
                <p>全球直邮</p>
            </li>
            <li>
                <img src="image/c5.png">
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
                <a href="#"><img src="image/logo.png"></a>
                <p class="lianxi">
                    <a href="#"><img src="image/weixin.png"></a>
                    <a href="#"><img src="image/weibo.png"></a>
                    <a href="#"><img src="image/QQ.png"></a>
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
        <p class="beian">Copyright © 2019 LAST网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
    </div>
</div>
<script>
    View();
    check();

    function check() {
        if ($("#choseAll").is(":checked")) {
            $('input[name="choseGood"]').attr("checked", "checked");
        } else {
            $('input[name="choseGood"]').removeAttr("checked")
        }
    }

    function View() {
        var Num = 0;
        var sumPrice = 0.00;
        $.ajax({
            url: "${pageContext.request.contextPath }/shopCart/selShopcart.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            type: "POST",   //请求方式
            dataType: "json",
            success: function (req) {
                $("#shopCartView").empty()
                $.each(req, function (index, item) {
                    var data = null;
                    if (item.goods.gState == 2) { //打折商品
                        data = "" +
                            " <div class=\"goods_details\">\n" +
                            "                    <div class=\"g_one\"><input value=" + item.cId + " onclick=\"Tcheck()\" type=\"checkbox\"\n" +
                            "                                              style=\"width: 20px;height: 20px;margin-top: 40px;margin-left: 10px\"\n" +
                            "                                              name=\"choseGood\" />\n" +
                            "                    </div>\n" +
                            "                    <div class=\"g_two\">\n" +
                            "                        <div class=\"h\">\n" +
                            "                            <div class=\"pic\"><a href=\"#\"><img\n" +
                            "                                    src=\"" + item.goods.gImg + "\"></a>\n" +
                            "                            </div>\n" +
                            "                            <div class=\"miaoshu\">\n" +
                            "                                <p style=\"margin-top: 5px;\"><a href=\"#\">" + item.goods.gName + "</a></p>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                    </div>\n" +
                            "                        <div class=\"g_three\">\n" +
                            "                            <p class=\"y\">￥" + item.goods.gPrice + "</p>\n" +
                            "                            <p class=\"k\">￥" + item.goods.gPrice * item.goods.gRebate + "</p>\n" +
                            "                        </div>\n" +
                            "                        <div class=\"g_four\">\n" +
                            "                            <div>\n" +
                            "                                <span style=\"border-right: 1px solid #eeeeee\"\n" +
                            "                                      onclick=\"updCNum(" + item.cNum + "," + item.cId + ")\" >-</span>\n" +
                            "                                <input name=\"\" type=\"text\" value=\"" + item.cNum + "\" >\n" +
                            "                                <span style=\"border-left: 1px solid #eeeeee\"\n" +
                            "                                      onclick=\"addCNum(" + item.cNum + "," + item.cId + ")\">+</span>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                        <div class=\"g_five\"><p>￥" + item.goods.gPrice * item.goods.gRebate * item.cNum + "</p></div>\n" +
                            "                        <div class=\"g_six\"><span onclick=\"delshopCart(" + item.cId + ")\"></span></div>\n" +
                            "                    </div>\n" +
                            "                </div>";
                        Num = Number(Num) + item.cNum;
                        sumPrice = Number(sumPrice) + (item.goods.gPrice * item.goods.gRebate * item.cNum);
                    } else if (item.goods.gState == 0) { // 未打折商品
                        data = "" +
                            " <div class=\"goods_details\">\n" +
                            "                    <div class=\"g_one\"><input value=" + item.cId + " onchange=\"Tcheck()\" type=\"checkbox\"\n" +
                            "                                              style=\"width: 20px;height: 20px;margin-top: 40px;margin-left: 10px\"\n" +
                            "                                              name=\"choseGood\" />\n" +
                            "                    </div>\n" +
                            "                    <div class=\"g_two\">\n" +
                            "                        <div class=\"h\">\n" +
                            "                            <div class=\"pic\"><a href=\"#\"><img\n" +
                            "                                    src=\"" + item.goods.gImg + "\"></a>\n" +
                            "                            </div>\n" +
                            "                            <div class=\"miaoshu\">\n" +
                            "                                <p style=\"margin-top: 5px;\"><a href=\"#\">" + item.goods.gName + "</a></p>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                    </div>\n" +
                            "                        <div class=\"g_three\">\n" +
                            "                            <p class=\"y\"></p>\n" +
                            "                            <p class=\"k\">￥" + item.goods.gPrice + "</p>\n" +
                            "                        </div>\n" +
                            "                        <div class=\"g_four\">\n" +
                            "                            <div>\n" +
                            "                                <span style=\"border-right: 1px solid #eeeeee\"\n" +
                            "                                      onclick=\"updCNum(" + item.cNum + "," + item.cId + ")\" >-</span>\n" +
                            "                                <input name=\"\" type=\"text\" value=\"" + item.cNum + "\">\n" +
                            "                                <span style=\"border-left: 1px solid #eeeeee\"\n" +
                            "                                      onclick=\"addCNum(" + item.cNum + "," + item.cId + ")\" >+</span>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                        <div class=\"g_five\"><p>￥" + item.goods.gPrice * item.cNum + "</p></div>\n" +
                            "                        <div class=\"g_six\"><span onclick=\"delshopCart(" + item.cId + ")\"></span></div>\n" +
                            "                    </div>\n" +
                            "                </div>";
                        Num = Number(Num) + item.cNum;
                        sumPrice = Number(sumPrice) + (item.goods.gPrice * item.cNum);
                    }
                    $("#shopCartView").append(data);
                })
                $("#Price").text(sumPrice)
                $("#Num").text(Num)
            }
        });
    }

    $("#choseAll").click(function () {
        check();
    })

    function addCNum(Num, cId) {
        var num = Number(Num) + 1;
        $.ajax({
            url: "${pageContext.request.contextPath }/shopCart/updshopCartNum.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            data: {"cNum": num, "cId": cId},    //参数值
            type: "POST",   //请求方式
            success: function (req) {
                View();
            }
        });
    }

    function updCNum(Num, cId) {
        var num = Number(Num) - 1;
        if (num == 0) {
            alert("不能在减少了")
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath }/shopCart/updshopCartNum.do",    //请求的url地址
                async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                data: {"cNum": num, "cId": cId},    //参数值
                type: "POST",   //请求方式
                success: function (req) {
                    View();
                }
            });
        }
    }

    function Tcheck() {
        var flag = false;
        var index = 0;
        $("input[name='choseGood']").each(function () {
            if ($(this).is(':checked')) {
                flag = true;
                index += 1;
            } else {
                flag = false;
            }
        });
        if (flag && index == $("input[name='choseGood']").length) {
            $("#choseAll").attr("checked", "checked");
        } else {
            $("#choseAll").removeAttr("checked")
        }
    }

    function delshopCart(cId) {
        if (confirm("是否确认购物车中该商品")) {
            $.ajax({
                url: "${pageContext.request.contextPath }/shopCart/delShopCart.do",    //请求的url地址
                async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                data: {"cId": cId},    //参数值
                type: "POST",   //请求方式
                success: function (req) {
                    if (req) {
                        View();
                    } else {
                        alert("删除失败！")
                    }
                }
            });
        }
    }

    function delChose() {
        if (confirm("确定要删除吗？")) {
            var ids = "";
            $("input[name='choseGood']").each(function () {
                if ($(this).is(':checked')) {
                    ids += $(this).val() + ",";
                }
            });
            $.ajax({
                url: "${pageContext.request.contextPath }/shopCart/updsShopCart.do",    //请求的url地址
                async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                data: {"cId": ids},    //参数值
                type: "POST",   //请求方式
                success: function (req) {
                    View();
                }
            });
        }
    }

    $("#jieSuan").click(function () {
        var ids = "";
        $("input[name='choseGood']").each(function () {
            if ($(this).is(':checked')) {
                ids += $(this).val() + ",";
            }
        });
        if (ids == "" || ids == null) {
            alert("请选择需要下单的商品")
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath }/order/creatOrder.do",    //请求的url地址
                async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                data: {"ids": ids},    //参数值
                type: "POST",   //请求方式
                success: function (req) {
                    location.href = "${pageContext.request.contextPath}/order.jsp"
                }
            });
        }
    })
</script>
</body>
</html>
