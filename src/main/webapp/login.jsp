<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>LAST 购物商场</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/css/login.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
</head>
<body>
<!---------------头部----------------->
<div class="wt1080 top">
    <div class="logo"><a href="#"><img src="${pageContext.request.contextPath}/image/logo.png"></a></div>
    <div class="rr">
        <ul>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg3.png">
                <p>全球正品货源</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg5.png">
                <p>一件代发</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg4.png">
                <p>全球直邮</p>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/image/bg6.png">
                <p>售后无忧</p>
            </li>
        </ul>
    </div>
    <div class="clear"></div>
</div>
<!----------------------中间------------------------->
<div class="red">
    <div class="wt1080 login">
        <div class="login_pic"><img src="${pageContext.request.contextPath}/image/login.jpg"></div>
        <div class="l_k">
            <div class="l_k_t">
                <span class="one">登陆LAST</span>
                <span class='two'>还没有LAST帐号？<a href="${pageContext.request.contextPath}/zhuce.jsp ">30秒注册</a></span>
            </div>
            <!-----------登录框----------->
            <div class="l_k_d">
                <input type="text" class="admin" placeholder="手机/用户名" name="lid" id="lid"
                       value="${username.value}" style="border: snow 1px solid">
                <input type="password" class="pass" placeholder="密码" name="lpwd" id="lpwd"
                       value="${password.value}" style="border: snow 1px solid">
            </div>
            <div class="mem">
                    <span><input type="checkbox" name="ziDon" value="1" id="ziDao"
                                 <c:if test="${remember.value=='1'}">checked="checked"</c:if>>自动登陆</span>
                <a href="#">忘记密码？</a>
            </div>
            <input type="submit" class="s_login" value="马上登陆" id="submit"
            />
            <span class="xie"></span>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-------------------底部------------------------>
<div class="foot wt1080">
    <ul>
        <li><a href="#">网站简介</a></li>
        <li><a href="#">联系我们</a></li>
        <li><a href="#">招商合作</a></li>
        <li><a href="#">销售联盟</a></li>
    </ul>
    <p>Copyright © 2019 LAST网.版权所有.备案号：京ICP证35124521号.技术支持：西部网络</p>
</div>
<script>
    $("#submit").click(function ok() {
        var getlid = $("#lid").val();
        var getlpwd = $("#lpwd").val();
        if (getlid != null && getlpwd != null && getlid != '' && getlpwd != '') {
            login(getlid, getlpwd);
        } else {
            alert("请输入登陆信息！")
            $("#lpwd").val("");
        }
    });

    function login(getlid, getlpwd) {
        var getziDao = $("#ziDao").val();
        $.ajax({
            url: "${pageContext.request.contextPath }/Login/Login.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            data: {"lid": getlid, "lpwd": getlpwd, "ziDon": getziDao},    //参数值
            type: "POST",   //请求方式
            success: function (req) {
                if (req) {
                    location.href = "${pageContext.request.contextPath}/${url}.jsp";
                } else {
                    alert("账号或密码错误！")
                    $("#lpwd").val("");
                }
            }
        });
    }
</script>
</body>
</html>
