<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script src="city_js/Popt.js"></script>
    <script src="city_js/city.json.js"></script>
    <script src="city_js/citySet.js"></script>
    <style type="text/css">
        * {
            -ms-word-wrap: break-word;
            word-wrap: break-word;
        }

        html {
            -webkit-text-size-adjust: none;
            text-size-adjust: none;
        }

        html, body {
            height: 100%;
            width: 100%;
        }

        .wrap {
            width: 464px;
            height: 34px;
            margin: 200px auto;
            border: 0;
            position: relative;
        }

        .chose {
            position: absolute;
            top: 0;
            left: 0;
            width: 457px;
            margin: 0;
            padding-left: 5px;
            height: 30px;
            line-height: 30px;
            font-size: 12px;
            border: 1px solid #c9cacb;
        }

        s {
            position: absolute;
            top: 1px;
            right: 0;
            width: 32px;
            height: 32px;
            background: url("image/002.jpg") no-repeat;
        }

        ._citys {
            width: 450px;
            display: inline-block;
            border: 2px solid #eee;
            padding: 5px;
            position: relative;
        }

        ._citys span {
            color: #05920a;
            height: 15px;
            width: 15px;
            line-height: 15px;
            text-align: center;
            border-radius: 3px;
            position: absolute;
            right: 10px;
            top: 10px;
            border: 1px solid #05920a;
            cursor: pointer;
        }

        ._citys0 {
            width: 95%;
            height: 34px;
            line-height: 34px;
            display: inline-block;
            border-bottom: 2px solid #05920a;
            padding: 0px 5px;
            font-size: 14px;
            font-weight: bold;
            margin-left: 6px;
        }

        ._citys0 li {
            display: inline-block;
            line-height: 34px;
            font-size: 15px;
            color: #888;
            width: 80px;
            text-align: center;
            cursor: pointer;
        }

        ._citys1 {
            width: 100%;
            display: inline-block;
            padding: 10px 0;
        }

        ._citys1 a {
            width: 83px;
            height: 35px;
            display: inline-block;
            background-color: #f5f5f5;
            color: #666;
            margin-left: 6px;
            margin-top: 3px;
            line-height: 35px;
            text-align: center;
            cursor: pointer;
            font-size: 12px;
            border-radius: 5px;
            overflow: hidden;
        }

        ._citys1 a:hover {
            color: #fff;
            background-color: #05920a;
        }

        .AreaS {
            background-color: #05920a !important;
            color: #fff !important;
        }
    </style>

</head>
<body>

<div class="wrap"><input class="chose" name="" id="city" type="text" placeholder="请选择" autocomplete="off"
                         readonly="true"/></div>
<p id="sss">00000000</p>
<script type="text/javascript">
    $("#city").click(function (e) {
        alert(e)
        SelCity(this, e);
    });
    // $("s").click(function (e) {
    //     alert(e)
    //     SelCity(document.getElementById("city"), e);
    // });
    $("#sss").click(function (e) {
        alert(e.target)
    })
</script>

</body>
</html>