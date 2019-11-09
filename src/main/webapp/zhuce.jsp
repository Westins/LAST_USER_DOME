<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
    <title>LAST 用户注册</title>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/css/zhuce.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <!--插件样式-->
    <link href="${pageContext.request.contextPath}/css/img_smooth_check.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/img_smooth_check.js"></script>
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
        <div class="login_pic"><img src="image/login.jpg"></div>
        <div class="l_k">
            <div style="display: block" id="userDiv">
                <h1>新用户注册</h1>
                <div class="l_k_d" id="name">用户昵称：<input type="text" name="zcName" id="zcName"
                                                         placeholder="用户显示的昵称">
                </div>
                <div class="l_k_d" id="id">用户账号：<input type="text" name=zclid"" id="zclid" oninput="yanZhenId()"
                                                       placeholder="可以登陆的用户名称"></div>
                <div class="l_k_d" id="pwd">设置密码：<input type="password" name="zcpwd" id="zcpwd"
                                                        placeholder="6-20个大小写英文字母、符号或数字">
                </div>
                <div class="l_k_d" id="pwd2">确认密码：<input type="password" name="zcpwd2" id="zcpwd2"
                                                         placeholder="请再次输入密码"></div>
                <p>点击注册，表示你同意LAST购物商城系统的<a href="#">《服务协议》</a> <a href="${pageContext.request.contextPath}/login.jsp"
                                                          style="float: right;color: red">登陆 > ></a></p>
                <input name="" type="text" class="res" value="确定" id="ok">
            </div>
            <%--验证码--%>
            <div style="display: none" id="phoneDiv">
                <h1>手机验证</h1>
                <div class="l_k_d" id="zcPhone">手机号码：<input type="text" name="lphone" id="lphone" placeholder="手机号码"
                                                            oninput="yaPhone()"></div>
                <div class="l_k_s">验证码：<input type="text" name="yzm" id="yzm" placeholder="6位验证码"></div>
                <div class="verify" style="margin-bottom: 140px;font-size: 20px">
                    <button style="width: 100%;height: 100%;font-size: 15px;background: rgba(255, 255, 255, 0);border: 1px white solid"
                            id="btn">发送验证码
                    </button>
                </div>
                <div class="widgets__img_check_box" id="select" style="margin-top: 15px">
                    <div class="widgets__img_display">
                        <div class="widgets__img_cnt">
                            <img src1="a.jpg" class="widgets__img_src"/>
                            <canvas class="widgets__img_fragment_hollow"></canvas>
                            <div class="widgets__img_fragment_cnt">
                                <canvas class="widgets__img_fragment widgets__img_fragment_shadow"></canvas>
                                <canvas class="widgets__img_fragment widgets__img_fragment_content"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="widgets__smooth_cnt">
                        <div class="widgets__smooth_bar"></div>
                        <div class="widgets__smooth_circle"></div>
                    </div>
                    <a style="float: left" onclick="fanHui()">
                        < < 返回
                    </a>
                    <a style="float: right">登陆 > > </a>
                </div>
            </div>
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
    yanZhen();
    var userDiv = document.getElementById("userDiv");
    var phoneDiv = document.getElementById("phoneDiv");
    var jieGuo = false;
    var yzPhone = false;

    $("#ok").click(function () {
        var zcName = $("#zcName").val();
        var zcpwd = $("#zcpwd").val();
        var zcpwd2 = $("#zcpwd2").val();

        if (zcName != null && zcpwd != null && zcpwd2 != null && zcName != '' && zcpwd != '' && zcpwd2 != '') {
            if (zcpwd == zcpwd2) {
                if (jieGuo) {
                    userDiv.style.display = "none";
                    phoneDiv.style.display = "block";
                    yanZhen();
                } else {
                    alert("登陆账号已存在！");
                }
            } else {
                alert("两次密码不一致");
            }
        } else {
            alert("还有信息没有填写哦");
        }
    });

    function fanHui() {
        userDiv.style.display = "block";
        phoneDiv.style.display = "none";
    }

    function yaPhone() {
        var getPhone = $("#lphone").val();
        $.ajax({
            url: "${pageContext.request.contextPath }/Login/selPhone.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            data: {"phone": getPhone},    //参数值
            type: "POST",   //请求方式
            success: function (req) {
                if (req == 'true') {
                    $("#zcPhone").css("border", "#dedede 1px solid")
                    yzPhone = true;
                }
                if (req == 'false') {
                    $("#zcPhone").css("border", "red 1px solid")
                    yzPhone = false;
                }
            }
        });
    }

    function yanZhen() {
        var s = WIDGETS.imgSmoothCheck({
            selector: "#select",
            data: ["image/t1.png", "image/t2.png", "image/t3.png"],
            imgHeight: 100,
            imgWidth: 200,
            allowableErrorValue: 3,
            success: function () {
                var lphone = $("#lphone").val();
                var yzm = $("#yzm").val();
                if (lphone != null && lphone != '') {
                    if (yzm != null && yzm != '') {
                        if (yzPhone) {
                            var name = $("#zcName").val();
                            var lName = $("#zclid").val();
                            var lPwd = $("#zcpwd").val();
                            var phone = $("#lphone").val();
                            var yzm = $("#yzm").val();
                            $.ajax({
                                url: "${pageContext.request.contextPath }/Login/insUser.do",    //请求的url地址
                                async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                                data: {"name": name, "lName": lName, "lPwd": lPwd, "phone": phone, "yzm": yzm},    //参数值
                                type: "POST",   //请求方式
                                success: function (req) {
                                    if (req == 0) {
                                        alert("注册成功！")
                                        location.href = "${pageContext.request.contextPath}/login.jsp";
                                    } else if (req = 1) {
                                        alert("注册失败！")
                                        $("#yzm").val("");
                                    } else if (req = 2) {
                                        alert("验证码错误！")
                                        $("#yzm").val("");
                                    }
                                }
                            });
                        } else {
                            alert("该手机号已被注册！");
                        }
                    } else {
                        alert("请填写验证码")
                    }
                } else {
                    alert("请填写手机号码！")
                }
                s.refresh();
            },
            error: function (res) {
                s.refresh();
            }
        });
    }

    function yanZhenId() {
        var getlid = $("#zclid").val();
        $.ajax({
            url: "${pageContext.request.contextPath }/Login/getlid.do",    //请求的url地址
            async: true,//请求是否异步，默认为异步，这也是ajax重要特性
            data: {"lid": getlid},    //参数值
            type: "POST",   //请求方式
            success: function (req) {
                if (req == 'true') {
                    $("#id").css("border", "#dedede 1px solid")
                    jieGuo = true;
                }
                if (req == 'false') {
                    $("#id").css("border", "red 1px solid")
                    jieGuo = false;
                }
            }
        });
    }
</script>
<script>
    $('#btn').click(function () {
        var lphone = $("#lphone").val();
        if (lphone == null || lphone == '') {
            alert("手机号码不可为空!");
        } else {
            if (yzPhone) {
                a();
                $.ajax({
                    url: "${pageContext.request.contextPath }/Login/getCode.do",    //请求的url地址
                    async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                    data: {"mobile": lphone},    //参数值
                    type: "POST",   //请求方式
                    success: function (req) {
                    }
                });
            } else {
                alert("该手机号已经被注册");
            }
        }
    });

    function a() {
        $('#btn').text('倒计时30s');
        $('#btn').prop('disabled', true);
        // 设置 cookie 值
        $(document)[0].cookie = 'ckey=' + 30;
        console.log('cookie 设置完毕');
    }

    function setStyle() {
        var cval = getCookie();
        if (cval > 1) {
            $('#btn').text('倒计时' + cval + 's');
            $('#btn').prop('disabled', true);
            console.log('hahah')
        } else {
            $('#btn').text('获取验证码');
            $('#btn').prop('disabled', false);
        }
    }

    setStyle();

    id = setInterval(function () {
        setCookie();
        console.log(1);
    }, 1000)

    function setCookie() {
        var cval = getCookie();
        if (cval > 1) {
            $(document)[0].cookie = 'ckey=' + (cval - 1);
            $('#btn').text('倒计时' + (cval - 1) + 's');
            $('#btn').prop('disabled', true);
        } else if (cval == 1) {
            $('#btn').text('获取验证码');
            $('#btn').prop('disabled', false);
            $(document)[0].cookie = 'ckey=' + 0;
            // clearInterval(id);
        }
    }

    function getCookie() {
        // 获取全部的 cookie
        var cookie = $(document)[0].cookie;
        // 获取 cookie 项  (数组)
        var citem = cookie.split(';');
        // 过滤数组  获得 键为 ckey 的项
        var ckey = citem.filter(function (item) {
            return item.split('=')[0].trim() == 'ckey';
        });
        // 获得 时间  cval
        cval = ckey[0].split('=')[1];
        return cval;
    }
</script>
</body>
</html>
