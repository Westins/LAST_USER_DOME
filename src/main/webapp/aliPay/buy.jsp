<%--
  Created by IntelliJ IDEA.
  User: S
  Date: 2019/10/25
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BUY JSP</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/aliPayJsp/alipay.trade.page.pay.jsp">
    <input type="text" value="001" name="WIDout_trade_no"> //商户订单号
    <input type="text" value="10" name="WIDtotal_amount"> //付款金额
    <input type="text" value="这是一个订单名称" name="WIDsubject"> //订单名称
    <input type="text" value="这是一个订单描述" name="WIDbody">//商品描述
    <input type="submit" value="购买">
</form>
</body>
</html>
