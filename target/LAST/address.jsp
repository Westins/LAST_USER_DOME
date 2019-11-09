<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>杨电网</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link href="${pageContext.request.contextPath}/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/address.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/slide.js"></script>
</head>
<script>
    $(function(){
        $('.nav ul li').hover(function(){
            $(this).children(".details").show();
        },function(){
            $(this).children(".details").hide();
        });
        $('#my').hover(function(){
            $(this).find("div").show();
        },function(){
            $(this).find("div").hide();
        });
    });
</script>
<body>
<!------------顶部---------------->
<div class="top">
    <div class="wt1080">
        <div class="fl">
            <a href="index.jsp">洋店首页</a>&emsp;|&emsp;请&emsp;<a href="#" style="color: #ff9900">登陆</a>&emsp;或&emsp;<a href="#">立即注册</a>
        </div>
        <div class="fr">
            <ul>
                <li style="position: relative;" id="my">
                    <a href="my_order.jsp">我的洋店 <img src="${pageContext.request.contextPath}/image/sanjiao.png"></a>
                    <div class="personal">
                        <dl>
                            <dt><a href="my_order.jsp">我的订单</a></dt>
                            <dd><a href="my_youhuijuan.html">我的优惠卷</a></dd>
                            <dd><a href="my_jifen.html">我的积分</a></dd>
                        </dl>
                    </div>
                </li>
                <li><span class="shop">购物车<a href="gouwuche.jsp">0</a>件</span></li>
                <li><span class="phone"><a href="article.jsp">手机洋店</a></span></li>
                <li><span><a href="article.jsp">关于洋店</a></span></li>
                <li><span><a href="article.jsp">帮助中心</a></span></li>
                <li><span class="phone2">028-6133 8882</span></li>
            </ul>
        </div>
    </div>
</div>
<!--------------logo搜索------------->
<div class="wt1080 header">
    <div class="logo fl"><a href="index.jsp"><img src="image/logo.png"></a></div>
    <div class="search fl">
        <div>
            <input name="search" type="text" class="a_search fl" placeholder="请输入关键字">
            <span class="b_search fl"></span>
            <div class="clear"></div>
        </div>
        <p>
            <a href="#" class="current">可莱丝</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#">森田药妆</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#">Montagne jeunesse</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#">丽得姿</a>
        </p>
    </div>
    <a class="my_shop fr" href="gouwuche.jsp">我的购物车<span>2</span></a>
    <div class="clear"></div>
</div>
<!--------------导航------------------>
<div class="nav">
    <div class="wt1080">
        <ul>
            <li>
                <a href="index.jsp" class="current"><span>首页</span></a>
            </li>
            <li>
                <a href="lanmu.jsp"><span>母婴专区</span></a>
                    <div class="details">

                                    <div class="item">
                                        <p class="title"><a href="lanmu.jsp">奶粉</a></p>
                                        <div class="ctgnamebox">
                                            <a href="liebiao.jsp" class="current">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <p class="title"><a href="#">奶粉</a></p>
                                        <div class="ctgnamebox">
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                        </div>
                                    </div>


                                    <div class="item">
                                        <p class="title"><a href="lanmu.jsp">奶粉</a></p>
                                        <div class="ctgnamebox">
                                            <a href="liebiao.jsp" class="current">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <p class="title"><a href="lanmu.jsp">奶粉</a></p>
                                        <div class="ctgnamebox">
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                            <a href="liebiao.jsp">爱他美</a>
                                        </div>
                                    </div>
                    </div>
            </li>
            <li><a href="lanmu.jsp"><span>美妆护肤</span></a></li>
            <li><a href="lanmu.jsp"><span>家具生活</span></a></li>
            <li><a href="lanmu.jsp"><span>食品营养</span></a></li>
            <li><a href="lanmu.jsp"><span>全球直邮</span></a></li>
            <li><a href="lanmu.jsp"><span>合作申请</span></a></li>
        </ul>
        <div style="clear:both"></div>
    </div>
</div>
<!---------------------导航完--------------------->

<!-----------------内容------------------>
<div class="wt1080 middle">
    <div class="fl">
        <div style="padding: 0 24px;"><h1>用户名称</h1></div>
        <ul>
            <li class="current"><a href="my_order.jsp">我的订单</a></li>
            <li><a href="youhuijuan.jsp">我的优惠卷</a></li>
            <li><a href="jifen.jsp">我的积分</a></li>
            <li><a href="anquan.jsp">账户安全</a></li>
            <li><a href="shoucang.jsp">我收藏的商品</a></li>
            <li><a href="address.jsp">管理收货地址</a></li>
        </ul>
    </div>
    <div class="fr">
        <div class="m_f_t">
            <a href="#">+新增地址</a>
            <span>你已创建<font>1</font>个收货地址，最多可以创建<font>10</font>个</span>
        </div>
        <!------------地址列表---------------->
        <div class="m_f_list">
            <ul>

                <li>
                    <p class="a">张新</p>
                    <p class="b">159****3994</p>
                    <p class="c">四川省大石西路130号</p>
                    <p class="d">510524********1905</p>
                    <a href="#" class="a_a">编辑</a>
                    <a href="#" class="a_b">删除</a>
                    <a href="#" class="a_c">设为默认</a>
                </li>

                <li>
                    <p class="a">张新</p>
                    <p class="b">159****3994</p>
                    <p class="c">四川省大石西路130号</p>
                    <p class="d">510524********1905</p>
                    <a href="#" class="a_a">编辑</a>
                    <a href="#" class="a_b">删除</a>
                    <a href="#" class="a_c">设为默认</a>
                </li>

                <li>
                    <p class="a">张新</p>
                    <p class="b">159****3994</p>
                    <p class="c">四川省大石西路130号</p>
                    <p class="d">510524********1905</p>
                    <a href="#" class="a_a">编辑</a>
                    <a href="#" class="a_b">删除</a>
                    <a href="#" class="a_c">设为默认</a>
                </li>

            </ul>
        </div>
    </div>
</div>

<!---------------------热销------------------>
<div class="hot wt1080">
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
        <div class="weixin"><img src="image/weixin1.png"><p>扫描二维码下载APP</p></div>
        <!------------------------>
        <p class="beian">Copyright © 2016 洋店网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
    </div>
</div>
</body>
</html>
